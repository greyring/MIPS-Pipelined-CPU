`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:33 10/20/2017 
// Design Name: 
// Module Name:    D_cache_crl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D_cache_crl(
   input clk,
	input rst,
	input [8:0]op,//op[8] = cache_w, op[7] = cache_r
	input cache_hit,
	input cache_hit_0,
	input v0_data,
	input v1_data,
	input d0_data,
	input d1_data,
	input addr_12,//index select
	input select_1,
	input mem_ready,
	output reg cache_tag_w,
	output reg v0_w,
	output reg v1_w,
	output reg v0_wdata,
	output reg v1_wdata,
	output reg d0_w,
	output reg d1_w,
	output reg d0_wdata,
	output reg d1_wdata,
	output reg tag0_w,
	output reg tag1_w,
	output reg tag0_wdata_s,
	output reg tag1_wdata_s,
	output reg data0_w,
	output reg data1_w,
	output reg data0_wdata_s,
	output reg data1_wdata_s,
	output reg count0_w,
	output reg count1_w,
	output reg count0_wdata_s,
	output reg count1_wdata_s,
	output reg mem_addr_s,
	output reg mem_data_s,
	output reg mem_r,
	output reg mem_w,
	output reg cache_data_s,
	output reg cache_ready
    );
parameter START = 3'b000;
parameter FETCH = 3'b001;
parameter STORE = 3'b010;
parameter WB    = 3'b011;
parameter WBSET = 3'b100; 

reg [2:0]curstate;
reg [2:0]nxtstate;
always @(posedge clk) begin
	if (rst)
		curstate <= START;
	else
		curstate <= nxtstate;
end

always @* begin
	if (rst)
		nxtstate = START;
	else
		case (curstate)
			START:
				if (op[8] | op[7]) begin//read write
					if (cache_hit) //hit
						nxtstate = START;
					else if (~v0_data | ~v1_data) begin//empty
						if (mem_ready) nxtstate = STORE;
						else nxtstate = FETCH;
					end
					else begin//full
						if (select_1) begin
							if (d1_data) begin//dirty
								if (mem_ready) nxtstate = FETCH;
								else nxtstate = WB;
							end
							else begin
								if (mem_ready) nxtstate = STORE;
								else nxtstate = FETCH;
							end
						end
						else begin
							if (d0_data) begin//dirty
								if (mem_ready) nxtstate = FETCH;
								else nxtstate = WB;
							end
							else begin
								if (mem_ready) nxtstate = STORE;
								else nxtstate = FETCH;
							end
						end
					end
				end
				else if (op[5] | op[6]) begin//write back invalidate
					if (cache_hit) begin
						if (cache_hit_0) begin
							if (d0_data) begin//dirty
								if (mem_ready) nxtstate = WBSET;
								else nxtstate = WB;
							end
							else nxtstate = START;
						end
						else begin
							if (d1_data) begin//dirty
								if (mem_ready) nxtstate = WBSET;
								else nxtstate = WB;
							end
							else nxtstate = START;
						end
					end
					else nxtstate = START;
				end
				else
					nxtstate = START;
			FETCH:
				if (mem_ready) nxtstate = STORE;
				else nxtstate = FETCH;
			STORE:
				nxtstate = START;
			WB   :
				if (op[7] | op[8]) begin
					if (mem_ready) nxtstate = FETCH;
					else nxtstate = WB;
				end
				else begin
					if (mem_ready) nxtstate = WBSET;
					else nxtstate = WB;
				end
			WBSET:
				nxtstate = START;
			default:
				nxtstate = START;
		endcase
end

always @* begin
	{count0_w, count0_wdata_s, count1_w, count1_wdata_s,
	 v0_w, v0_wdata, v1_w, v1_wdata,
	 d0_w, d0_wdata, d1_w, d1_wdata,
	 cache_tag_w,
	 tag0_w, tag0_wdata_s, tag1_w, tag1_wdata_s,
	 mem_addr_s, mem_data_s, mem_w, mem_r,
	 data0_wdata_s, data0_w, data1_wdata_s, data1_w,
	cache_data_s} = 0;
	cache_ready = 1'b1;
	if (~rst) begin
		case (curstate)
			START:if (op[8]) begin//cache write
						if (cache_hit) begin//hit
							count0_w = 1'b1;
							count1_w = 1'b1;
							if (cache_hit_0) begin
								d0_wdata = 1'b1;
								d0_w = 1'b1;
								data0_wdata_s = 1'b1;//new data
								data0_w = 1'b1;
								count0_wdata_s = 1'b1;
								count1_wdata_s = 1'b0;
							end
							else begin
								d1_wdata = 1'b1;
								d1_w = 1'b1;
								data1_wdata_s = 1'b1;//new data
								data1_w = 1'b1;
								count0_wdata_s = 1'b0;
								count1_wdata_s = 1'b1;
							end
						end
						else if (~v0_data | ~v1_data) begin//has empty
							mem_addr_s = 1'b1;
							mem_r = 1'b1;
							cache_ready = 1'b0;
						end
						else begin//full
							cache_ready = 1'b0;
							if (select_1) begin
								if (d1_data) begin//dirty write back
									mem_data_s = 1'b0;
									mem_addr_s = 1'b0;
									mem_w = 1'b1;
								end
								else begin
									mem_addr_s = 1'b1;//read
									mem_r = 1'b1;
								end
							end
							else begin
								if (d0_data) begin//dirty write back
									mem_data_s = 1'b0;
									mem_addr_s = 1'b0;
									mem_w = 1'b1;
								end
								else begin
									mem_addr_s = 1'b1;//read
									mem_r = 1'b1;
								end
							end
						end
					end
				   else if (op[7]) begin//cache read
						if (cache_hit) begin//hit
							count0_w = 1'b1;
							count1_w = 1'b1;
							if (cache_hit_0) begin
								count0_wdata_s = 1'b1;
								count1_wdata_s = 1'b0;
							end
							else begin
								count0_wdata_s = 1'b0;
								count1_wdata_s = 1'b1;
							end
						end
						else if (~v0_data | ~v1_data) begin//has empty
						   cache_ready = 1'b0;
							mem_addr_s = 1'b1;
							mem_r = 1'b1;
						end
						else begin//full
							cache_ready = 1'b0;
							if (select_1) begin
								if (d1_data) begin//dirty write back
									mem_data_s = 1'b0;
									mem_addr_s = 1'b1;
									mem_w = 1'b1;
								end
								else begin
									mem_addr_s = 1'b1;//read
									mem_r = 1'b1;
								end
							end
							else begin
								if (d0_data) begin
									mem_data_s = 1'b0;//dirty write back
									mem_addr_s = 1'b1;
									mem_w = 1'b1;
								end
								else begin
									mem_addr_s = 1'b1;//read
									mem_r = 1'b1;
								end
							end
						end
					end
					else if (op[0]) begin//index invalidate
						if (addr_12) begin
							v1_wdata = 1'b0;
							v1_w = 1'b1;
						end
						else begin
							v0_wdata = 1'b0;
							v0_w = 1'b1;
						end
					 end
					 else if (op[1]) begin//index tag load
						cache_tag_w = 1'b1;
					 end
					 else if (op[2]) begin//index tag store
						if (addr_12) begin
							tag1_wdata_s = 1'b1;//tag_Lo
							tag1_w = 1'b1;
						end
						else begin
							tag0_wdata_s = 1'b1;
							tag0_w = 1'b1;
						end
					 end
					 else if (op[4]) begin//addre invalidate
						if (cache_hit) begin
							if (cache_hit_0) begin
								v0_wdata = 1'b0;
								v0_w = 1'b1;
							end
							else begin
								v1_wdata = 1'b0;
								v1_w = 1'b1;
							end
						end
					 end
					 else if (op[5]) begin//write back invalidate
						if (cache_hit) begin
							if (cache_hit_0) begin
								if (d0_data) begin//dirty
									cache_ready = 1'b0;
									mem_data_s = 1'b0;
									mem_addr_s = 1'b1;
									mem_w = 1'b1;
								end
								else begin
									v0_wdata = 1'b0;
									v0_w = 1'b1;
								end
							end
							else begin
								if (d1_data) begin//dirty
									cache_ready = 1'b0;
									mem_data_s = 1'b1;
									mem_addr_s = 1'b1;
									mem_w = 1'b1;
								end
								else begin
									v1_wdata = 1'b0;
									v1_w = 1'b1;
								end
							end
						end
					 end
					 else if (op[6]) begin//write back undirty
						if (cache_hit) begin
							if (cache_hit_0) begin
								if (d0_data) begin
									cache_ready = 1'b0;
									mem_data_s = 1'b0;
									mem_addr_s = 1'b1;
									mem_w = 1'b1;
								end
							end
							else begin
								if (d1_data) begin
									cache_ready = 1'b0;
									mem_data_s = 1'b1;
									mem_addr_s = 1'b1;
									mem_w = 1'b1;
								end
							end
						end
					 end
			FETCH: begin
						mem_addr_s = 1'b1;//get mem data
						mem_r = 1'b1;
						cache_ready = 1'b0;
					 end
			STORE: begin//read or write
					   cache_ready = 1'b1;
						cache_data_s = 1'b1;
						if (select_1) begin
							v1_wdata = 1'b1;
							v1_w = 1'b1;
							tag1_wdata_s = 1'b0;//tag_
							tag1_w = 1'b1;
							data1_wdata_s = 1'b0;//mem_data
							data1_w = 1'b1;
							count1_wdata_s = 1'b1;
							count1_w = 1'b1;
						 end
						 else begin
							v0_wdata = 1'b1;
							v0_w = 1'b1;
							tag0_wdata_s = 1'b0;//tag_
							tag0_w = 1'b1;
							data0_wdata_s = 1'b0;//mem_data
							data0_w = 1'b1;
							count0_wdata_s = 1'b1;
							count0_w = 1'b1;
						 end
						 //dirty
						 if (op[8]) begin
							if (select_1) begin
								d1_wdata = 1'b1;
								d1_w = 1'b1;
							end
							else begin
								d0_wdata = 1'b1;
								d0_w = 1'b1;
							end
						 end
						 else begin
							if (select_1) begin
								d1_wdata = 1'b0;
								d1_w = 1'b1;
							end
							else begin
								d0_wdata = 1'b0;
								d0_w = 1'b1;
							end
						end
					 end
			WB:	 if (op[7] | op[8]) begin//read write
						cache_ready = 1'b0;
						mem_addr_s = 1'b0;//write back
						mem_w = 1'b1;
						if (select_1) mem_data_s = 1'b1;
						else mem_data_s = 1'b0;
					 end
					 else if (op[5] | op[6]) begin//write back
						cache_ready = 1'b0;
						mem_addr_s = 1'b1;
						mem_w = 1'b1;
						if (cache_hit_0) mem_data_s = 1'b0;
						else mem_data_s = 1'b1;
					 end
			WBSET: if (op[5]) begin
						if (cache_hit_0) begin
							v0_wdata = 1'b0;
							v0_w = 1'b1;
						end
						else begin
							v1_wdata = 1'b0;
							v1_w = 1'b1;
						end
					 end
					 else if (op[6]) begin
						if (cache_hit_0) begin
							d0_wdata = 1'b0;
							d0_w = 1'b1;
						end
						else begin
							d1_wdata = 1'b0;
							d1_w = 1'b1;
						end
					end
		endcase
	end
end

endmodule
