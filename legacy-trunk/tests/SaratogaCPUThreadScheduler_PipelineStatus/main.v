`default_nettype none
/***********************************************************************************************************************
*                                                                                                                      *
* ANTIKERNEL v0.1                                                                                                      *
*                                                                                                                      *
* Copyright (c) 2012-2016 Andrew D. Zonenberg                                                                          *
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
	@brief Formal validation test harness for SaratogaCPUThreadScheduler_PipelineStatus.
	
	Prove that it behaves equivalently to an inferred RAM.
 */
module main(clk, entry_en, entry_tid, exit_en, exit_tid, entry_inpipe);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I/O declarations
	
	input wire clk;
	
	`include "../../rtl/achd-soc/util/clog2.vh"
	
	//Number of thread contexts
	parameter MAX_THREADS	= 8;
	
	//Number of bits in a thread ID
	localparam TID_BITS		= clog2(MAX_THREADS);
	
	//Entry port
	input wire					entry_en;
	input wire[TID_BITS-1:0]	entry_tid;
	output wire					entry_inpipe;
	
	//Exit port
	input wire					exit_en;
	input wire[TID_BITS-1:0]	exit_tid;
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Blocking logic
	
	reg test_done = 0;
	
	wire entry_en_blocked = entry_en && !test_done;
	wire exit_en_blocked = exit_en && !test_done;
	
	//Threads always exit the queue after 8 cycles.
	//As long as we prove that the queue is always consistent for any sequence of push/pop cycles, then we don't need
	//to wait forever.
	reg[4:0] count = 0;
	
	always @(posedge clk) begin
	
		if(count >= 10)
			test_done <= 1;
		else
			count <= count + 5'h1;
			
	end
		
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Test logic
	
	//Initial pipeline state is guaranteed to be empty
	reg[MAX_THREADS-1:0] in_pipeline = 0;
	
	//We need to filter the events to remove double-frees because those can't happen in the real CPU
	//and the status system does not handle these.
	wire exit_en_filtered;
	assign exit_en_filtered = exit_en_blocked && in_pipeline[exit_tid];
	
	//See if we're forwarding
	wire forwarding = (entry_tid == exit_tid) && entry_en_blocked && exit_en_filtered;
	
	always @(posedge clk) begin
	
		//If forwarding, don't change memory status and expect in-pipe status to read zero
		if(forwarding) begin
			assert(entry_inpipe == 0);
		end

		//When a thread exits the pipeline, mark it as not running.
		if(exit_en_filtered && !forwarding)
			in_pipeline[exit_tid] <= 0;
		
		//When a thread enters the pipeline, mark it as running if it's not already running.
		if(entry_en_blocked && !forwarding) begin
			in_pipeline[entry_tid]			<= 1;
			assert(in_pipeline[entry_tid] == entry_inpipe);
		end
		
	end
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The DUT
	
	SaratogaCPUThreadScheduler_PipelineStatus #(
		.MAX_THREADS(MAX_THREADS)
	) dut(
		.clk(clk),
		.entry_en(entry_en_blocked),
		.entry_tid(entry_tid),
		.entry_inpipe(entry_inpipe),
		.exit_en(exit_en_filtered),
		.exit_tid(exit_tid)
		);
	
endmodule
