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
	input we,
	input [DATA_SIZE-1:0] wdata,
	input [DATA_SIZE-1:0] rdata,
	output hit[15:0]
    );
parameter DATA_SIZE = 19;
generate
genvar i;
for (i = 0; i<16; i=i+1)
CAM_unit #(.DATA_SIZE(DATA_SIZE)) CAM_unit 
(.clk(clk), .rst(rst), .we(we), .wdata(wdata),.rdata(rdata),.hit(hit[i]));
endgenerate
endmodule
