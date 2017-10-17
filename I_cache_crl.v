`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:06 10/17/2017 
// Design Name: 
// Module Name:    I_cache_crl 
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
module I_cache_crl(
	input clk,
	input rst,
	input [7:0]op,//op[7] = cache_r
	input cache_err,
	input cache_hit,
	input cache_hit_0,
	input addr_12,//index select
	input select_1,
	input mem_ready,
	output reg cache_tag_w,
	output reg v0_w,
	output reg v1_w,
	output reg v0_wdata,
	output reg v1_wdata,
	output reg tag0_w,
	output reg tag1_w,
	output reg tag0_wdata_s,
	output reg tag1_wdata_s,
	output reg data0_w,
	output reg data1_w,
	output reg count0_w,
	output reg count1_w,
	output reg count0_wdata_s,
	output reg count1_wdata_s,
	output reg mem_r,
	output reg state_store,
	output reg cache_ready
    );
parameter START = 2'b00;
parameter FETCH = 2'b01;
parameter STORE = 2'b10;

reg [1:0]curstate;
reg [1:0]nxtstate;
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
				if ((op[7] | op[5]) & ~cache_hit)
					if (mem_ready) nxtstate = STORE;
					else nxtstate = FETCH;
				else
					nxtstate = START;
			FETCH:
				if (mem_ready) nxtstate = STORE;
				else nxtstate = FETCH;
			STORE:
				nxtstate = START;
			default:
				nxtstate = START;
		endcase
end

always @* begin
	{count0_w, count0_wdata_s, count1_w, count1_wdata_s,
	 v0_w, v0_wdata, v1_w, v1_wdata,
	 cache_tag_w,
	 tag0_w, tag0_wdata_s, tag1_w, tag1_wdata_s,
	 mem_r,
	 data0_w, data1_w,
	 state_store} = 0;
	 cache_ready = 1'b1;
	if (~rst & ~cache_err) begin
		case (curstate)
			START: if (op[7] & cache_hit) begin
						 count0_w = 1'b1;
						 count1_w = 1'b1;
						 if (cache_hit_0) begin
							count0_wdata_s = 1'b1;//2'b11
							count1_wdata_s = 1'b0;//nxtcount
						 end
						 else begin
							count0_wdata_s = 1'b0;
							count1_wdata_s = 1'b1;
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
					 else if ((op[5] | op[7]) & ~cache_hit) begin
						cache_ready = 1'b0;
						mem_r = 1'b1;
					 end
			FETCH: begin
						cache_ready = 1'b0;
						mem_r = 1'b1;
					 end
			STORE: begin
						 state_store = 1'b1;
						 if (select_1) begin
							v1_wdata = 1'b1;
							v1_w = 1'b1;
							tag1_wdata_s = 1'b0;//tag_
							tag1_w = 1'b1;
							data1_w = 1'b1;
							count1_wdata_s = 1'b1;
							count1_w = 1'b1;
						 end
						 else begin
							v0_wdata = 1'b1;
							v0_w = 1'b1;
							tag0_wdata_s = 1'b0;//tag_
							tag0_w = 1'b1;
							data0_w = 1'b1;
							count0_wdata_s = 1'b1;
							count0_w = 1'b1;
						 end
					 end
		endcase
	end
end

endmodule
