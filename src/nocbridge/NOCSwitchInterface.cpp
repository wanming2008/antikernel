/***********************************************************************************************************************
*                                                                                                                      *
* ANTIKERNEL v0.1                                                                                                      *
*                                                                                                                      *
* Copyright (c) 2012-2017 Andrew D. Zonenberg                                                                          *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

/**
	@file
	@author Andrew D. Zonenberg
	@brief Implementation of NOCSwitchInterfac
 */
#include "nocbridge.h"
#include "nocswitch_opcodes_enum.h"
#include <memory.h>

/**
	@brief Initializes this object to an empty state but does not connect to a server
 */
NOCSwitchInterface::NOCSwitchInterface()
	: m_socket(AF_INET6, SOCK_STREAM, IPPROTO_TCP)
{

}

/**
	@brief Initializes this object to an empty state and connects to a server

	@throw JtagException if the connection fails

	@param server	Hostname of the server to connect to
	@param port		Port number to connect to (host byte ordering)
 */
NOCSwitchInterface::NOCSwitchInterface(const std::string& server, uint16_t port)
	: m_socket(AF_INET6, SOCK_STREAM, IPPROTO_TCP)
{
	Connect(server, port);
}

/**
	@brief Connects to a nocswitch server

	@throw JtagException if the connection fails

	@param server	Hostname of the server to connect to
	@param port		Port number to connect to (host byte ordering)
 */
void NOCSwitchInterface::Connect(const std::string& server, uint16_t port)
{
	m_socket.Connect(server, port);
	m_socket.DisableNagle();
}

/**
	@brief Disconnects from the server
 */
NOCSwitchInterface::~NOCSwitchInterface()
{
	try
	{
		if(m_socket)
		{
			uint8_t op = NOCSWITCH_OP_QUIT;
			m_socket.SendLooped((unsigned char*)&op, 1);
		}
	}
	catch(const JtagException& ex)
	{
		//ignore, but don't rethrow
	}
}

void NOCSwitchInterface::SendRPCMessage(const RPCMessage& tx_msg)
{
	uint8_t op = NOCSWITCH_OP_RPC;
	m_socket.SendLooped((unsigned char*)&op, 1);

	unsigned char buf[16];
	tx_msg.Pack(buf);
	m_socket.SendLooped(buf, 16);
}

bool NOCSwitchInterface::RecvRPCMessage(RPCMessage& rx_msg)
{
	//Read from the FIFO, if there's stuff there don't even bother hitting the server
	if(!m_rxqueue.empty())
	{
		rx_msg = *m_rxqueue.begin();
		m_rxqueue.pop_front();
		return true;
	}

	//If there's nothing in the FIFO, send the server a ping and wait for a reply
	//We know that a ping reply will always come as soon as the server is available, so this won't block for long.
	//However, anything in its transmit queue will be flushed to us first
	uint8_t op = NOCSWITCH_OP_PING;
	m_socket.SendLooped((unsigned char*)&op, 1);
	ReadFramesUntil(op);

	//We got the ping back, check the FIFO again to see if anything was in line ahead of the ping
	if(!m_rxqueue.empty())
	{
		rx_msg = *m_rxqueue.begin();
		m_rxqueue.pop_front();
		return true;
	}

	//Nothing ready for us to read at this point
	return false;
}

void NOCSwitchInterface::RecvRPCMessageBlocking(RPCMessage& rx_msg)
{
	//If there's anything in the RX FIFO, return it immediately
	if(!m_rxqueue.empty())
	{
		rx_msg = *m_rxqueue.begin();
		m_rxqueue.pop_front();
		return;
	}

	//Nothing there, wait until we get an RPC message
	ReadFramesUntil(NOCSWITCH_OP_RPC);

	//Read the message
	unsigned char buf[16];
	m_socket.RecvLooped(buf, 16);
	rx_msg.Unpack(buf);
}

bool NOCSwitchInterface::RecvRPCMessageBlockingWithTimeout(RPCMessage& rx_msg, double timeout)
{
	double tstart = GetTime();

	//Start out by doing a single nonblocking read to see what happens
	if(RecvRPCMessage(rx_msg))
		return true;

	//Nope, keep trying until we hit the timeout
	int delay_us = 5;
	while(true)
	{
		if(RecvRPCMessage(rx_msg))
			return true;

		//Wait for a bit if nothing was there.
		//Retry at exponentially increasing intervals (up to 100 ms)
		usleep(delay_us);
		if(delay_us < 100000)
			delay_us *= 5;

		//If timeout elapses, give up
		if( (GetTime() - tstart) > timeout)
			break;
	}

	return false;
}

/*
void NOCSwitchInterface::SendDMAMessage(const DMAMessage& tx_msg)
{
	uint16_t op = NOCSWITCH_OP_SENDDMA;
	m_socket.SendLooped((unsigned char*)&op, 2);

	uint32_t buf[515];
	tx_msg.Pack(buf);
	m_socket.SendLooped((unsigned char*)buf, 515*4);
}

bool NOCSwitchInterface::RecvDMAMessage(DMAMessage& rx_msg)
{
	uint16_t op = NOCSWITCH_OP_RECVDMA;

	m_socket.SendLooped((unsigned char*)&op, 2);
	uint8_t found = 0;
	m_socket.RecvLooped((unsigned char*)&found, 1);
	if(found)
	{
		uint32_t buf[515];
		m_socket.RecvLooped((unsigned char*)buf, 515*4);
		rx_msg.Unpack(buf);
		return true;
	}
	return false;
}

bool NOCSwitchInterface::SendDMAMessageNonblocking(const DMAMessage& tx_msg)
{
	//TCP buffer ensures this send is nonblocking, no buffering on our part required
	SendDMAMessage(tx_msg);
	return true;
}
*/

bool NOCSwitchInterface::AllocateClientAddress(uint16_t& addr)
{
	//Send the request
	uint8_t op = NOCSWITCH_OP_ALLOC_ADDR;
	m_socket.SendLooped((unsigned char*)&op, 1);

	//Block until we get a packet of the right type
	ReadFramesUntil(NOCSWITCH_OP_ALLOC_ADDR);

	//Next byte is OK/fail value
	uint8_t ok = 0;
	if(!m_socket.RecvLooped((unsigned char*)&ok, 1))
		return false;
	if(!ok)
		return false;

	//Now we have 2 bytes (little endian) of address
	if(!m_socket.RecvLooped((unsigned char*)&addr, 2))
		return false;

	//All good if we get here
	return true;
}

void NOCSwitchInterface::FreeClientAddress(uint16_t /*addr*/)
{
}

void NOCSwitchInterface::ReadFramesUntil(uint8_t type)
{
	while(true)
	{
		//Get a header and see if it's the right type
		uint8_t op = 0;
		if(!m_socket.RecvLooped((unsigned char*)&op, 1))
			return;
		if(op == type)
			break;

		//Wrong type! Probably an inbound message, push it into our queue
		switch(op)
		{
			case NOCSWITCH_OP_RPC:
				{
					//It's an RPC message! Read the message
					unsigned char buf[16];
					m_socket.RecvLooped(buf, 16);
					RPCMessage rx_msg;
					rx_msg.Unpack(buf);

					//Push this into our RX queue
					m_rxqueue.push_back(rx_msg);
				}
				break;

			default:
				LogWarning("Don't know what to do with message of type %x\n", op);
		}
	}
}
