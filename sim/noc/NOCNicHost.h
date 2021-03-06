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
	@brief A host that simulates an Ethernet interface
 */
#ifndef NOCNicHost_h
#define NOCNicHost_h

class NOCNicHost : public NOCHost
{
public:
	NOCNicHost(uint16_t addr, NOCRouter* parent, xypos pos);
	virtual ~NOCNicHost();

	virtual bool AcceptMessage(NOCPacket packet, SimNode* from);
	virtual void Timestep();

	virtual void PrintStats();

	enum States
	{
		RX_STATE_IDLE,
		RX_STATE_WAIT_ALLOC,
		RX_STATE_WAIT_WRITE,
		RX_STATE_WAIT_CHOWN,
		RX_STATE_WAIT_SEND
	} m_rxstate;

protected:
	int m_frameBuffers;

	unsigned long m_cyclesIdle;
	unsigned long m_cyclesWaitingForMalloc;
	unsigned long m_cyclesWaitingForWrite;
	unsigned long m_cyclesWaitingForChown;
	unsigned long m_cyclesWaitingForSend;

	unsigned long m_framesProcessed;
	unsigned long m_framesDropped;
	unsigned long m_framesTotal;

	//True if we have a frame ready to forward
	bool m_pendingFrame;

	//Size of the pending frame
	unsigned int m_pendingFrameSize;

	//Time at which the next frame arrives
	unsigned int m_nextFrame;

	//Size of the next frame
	unsigned int m_nextFrameSize;

	//Time at which we return to idle
	unsigned int m_returnToIdle;
};

#endif

