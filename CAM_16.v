`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:58:10 11/22/2017 
// Design Name: 
// Module Name:    CAM_16 
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
module CAM_16(
	input clk,
	input rst,
	input [15:0]we,
	input [3:0]addr,
	input [DATA_SIZE-1:0] wdata,
	input [DATA_SIZE-1:0] rdata0,
	input [DATA_SIZE-1:0] rdata1,
	input [DATA_SIZE-1:0] rdata2,
	output reg [DATA_SIZE-1:0]data,
	output [15:0]hit0,
	output [15:0]hit1,
	output [15:0]hit2
    );
parameter DATA_SIZE = 19;

wire [DATA_SIZE-1:0]data_[15:0];

generate
genvar i;
for (i = 0; i<16; i = i+1) 
begin:CAM_unit
CAM_unit #(.DATA_SIZE(DATA_SIZE)) CAM_unit
(.clk(clk), .rst(rst), .we(we[i]), .wdata(wdata),
.rdata0(rdata0),.rdata1(rdata1),.rdata2(rdata2),.data(data_[i]),.hit0(hit0[i]),.hit1(hit1[i]),.hit2(hit2[i]));
end
endgenerate

always @* begin
	data = data_[addr];
end
endmodule
