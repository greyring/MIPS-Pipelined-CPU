`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:00 11/20/2017 
// Design Name: 
// Module Name:    bus_interface 
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
module bus_interface(
		input enable,
		input [31:0]addr,
		inout [31:0]data,
		input r,
		input [3:0]w,
		inout ready,
		
		output [31:0]addr_,
		output [31:0]wdata,
		input  [31:0]rdata,
		output r_,
		output [3:0]w_,
		input  ready_
    );
assign addr_ = addr;
assign r_ = r & enable;
assign w_ = w & {4{enable}};
assign data =  r_? rdata : 32'bz;
assign ready = r_? ready_: 1'bz;
assign wdata = data;

endmodule
