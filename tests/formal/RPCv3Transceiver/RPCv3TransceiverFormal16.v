`default_nettype none
`timescale 1ns / 1ps
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
	@brief Formal validation test harness for RPCv3Transceiver

	The goal of this test is to prove that an RPCv3Transceiver sends the correct data on the link, and that
	two transceivers connected end to end will pass data through unchanged and supply the correct source address.
 */
module RPCv3TransceiverFormal16(
	input wire					clk,

	input wire					rpc_fab_tx_en,
	input wire[15:0]			rpc_fab_tx_dst_addr,
	input wire[7:0]				rpc_fab_tx_callnum,
	input wire[2:0]				rpc_fab_tx_type,
	input wire[20:0]			rpc_fab_tx_d0,
	input wire[31:0]			rpc_fab_tx_d1,
	input wire[31:0]			rpc_fab_tx_d2,

	input wire					rpc_fab_rx_ready
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Proof configuration

	//Source address of all messages
	localparam NODE_ADDR = 16'h4141;

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The individual test blocks (one for each data width)

	LinkTester #(
		.NODE_ADDR(NODE_ADDR),
		.DATA_WIDTH(16)
	) tester_16 (
		.clk(clk),
		.rpc_fab_tx_en(rpc_fab_tx_en),
		.rpc_fab_tx_dst_addr(rpc_fab_tx_dst_addr),
		.rpc_fab_tx_callnum(rpc_fab_tx_callnum),
		.rpc_fab_tx_type(rpc_fab_tx_type),
		.rpc_fab_tx_d0(rpc_fab_tx_d0),
		.rpc_fab_tx_d1(rpc_fab_tx_d1),
		.rpc_fab_tx_d2(rpc_fab_tx_d2),
		.rpc_fab_rx_ready(rpc_fab_rx_ready)
	);

endmodule
