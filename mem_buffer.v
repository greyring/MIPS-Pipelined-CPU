`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:48 11/19/2017 
// Design Name: 
// Module Name:    mem_buffer 
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
module mem_buffer(
	input clk,
	input rst,
	
	input mem_r,
	input mem_w,
	input [31:0]mem_addr,
	input [127:0]mem_wdata,
	output[127:0]mem_rdata,
	
	output reg bus_r,
	output reg bus_w,
	output reg [31:0]bus_addr,
	input  [31:0]bus_rdata,
	output reg [31:0]bus_wdata,
	input  bus_ready,
	
	output reg ready
    );

parameter INIT = 3'd0;
parameter RW0  = 3'd1;
parameter RW1  = 3'd2;
parameter RW2  = 3'd3;
parameter RW3  = 3'd4;
parameter FIN	= 3'd5;

reg [2:0]state;
reg [2:0]nxtstate;
always @(posedge clk or posedge rst) begin
	if (rst)
		state <= INIT;
	else
		state <= nxtstate;
end

always @* begin
	case(state)
		INIT:if (mem_r | mem_w) nxtstate = RW0;
				else nxtstate = INIT;
		RW0 :if (bus_ready) nxtstate = RW1;
				else nxtstate = RW0;
		RW1 :if (bus_ready) nxtstate = RW2;
				else nxtstate = RW1;
		RW2 :if (bus_ready) nxtstate = RW3;
				else nxtstate = RW2;
		RW3 :if (bus_ready) nxtstate = FIN;
				else nxtstate = RW3;
		FIN : nxtstate = INIT;
		default:nxtstate = INIT;
	endcase
end

reg [1:0]op_;
reg [31:0]addr_;
always @(posedge clk) begin
	if (state == INIT) begin
		op_ <= {mem_w, mem_r};
		addr_ <= mem_addr;
	end
	else begin
		op_ <= op_;
		addr_ <= addr_;
	end
end

reg [1:0]wdata_s;
reg [3:0]rdata_mask;
always @* begin
	{bus_r, bus_w, wdata_s, rdata_mask, ready, bus_addr} = 0;
	case(state)
		RW0: if (op_[1]) begin//write
					bus_w = 1'b1;
					bus_addr = {addr_[31:4], 2'b00, 2'b00};
					wdata_s = 2'b00;
				end
				else begin
					bus_r = 1'b1;
					bus_addr = {addr_[31:4], 2'b00, 2'b00};
					rdata_mask=4'b0001;
				end
		RW1: if (op_[1]) begin//write
					bus_w = 1'b1;
					bus_addr = {addr_[31:4], 2'b01, 2'b00};
					wdata_s = 2'b01;
				end
				else begin
					bus_r = 1'b1;
					bus_addr = {addr_[31:4], 2'b01, 2'b00};
					rdata_mask=4'b0010;
				end
		RW2: if (op_[1]) begin//write
					bus_w = 1'b1;
					bus_addr = {addr_[31:4], 2'b10, 2'b00};
					wdata_s = 2'b10;
				end
				else begin
					bus_r = 1'b1;
					bus_addr = {addr_[31:4], 2'b10, 2'b00};
					rdata_mask=4'b0100;
				end
		RW3: if (op_[1]) begin//write
					bus_w = 1'b1;
					bus_addr = {addr_[31:4], 2'b11, 2'b00};
					wdata_s = 2'b11;
				end
				else begin
					bus_r = 1'b1;
					bus_addr = {addr_[31:4], 2'b11, 2'b00};
					rdata_mask=4'b1000;
				end
		FIN: ready = 1'b1;
	endcase
end

reg [31:0]buf0, buf1, buf2, buf3;
always @(posedge clk) begin
	if (state == INIT)
		{buf3, buf2, buf1, buf0} <= mem_wdata;
	else if (op_[0]) begin
		buf0 <= rdata_mask[0] ? bus_rdata : buf0;
		buf1 <= rdata_mask[1] ? bus_rdata : buf1;
		buf2 <= rdata_mask[2] ? bus_rdata : buf2;
		buf3 <= rdata_mask[3] ? bus_rdata : buf3;
	end
	else
		{buf3, buf2, buf1, buf0} <= {buf3, buf2, buf1, buf0};
end

always @* begin
	case (wdata_s)
		2'b00: bus_wdata = buf0;
		2'b01: bus_wdata = buf1;
		2'b10: bus_wdata = buf2;
		2'b11: bus_wdata = buf3;
	endcase
end

assign mem_rdata = {buf3, buf2, buf1, buf0};

endmodule
