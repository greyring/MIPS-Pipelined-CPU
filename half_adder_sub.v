`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:30 09/11/2017 
// Design Name: 
// Module Name:    half_adder_sub 
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
module half_adder_sub(
	input a,
	input b,
	input add_sub,
	output g,
	output p
    );
//full_adder

assign p = ( a ^ b ^ add_sub);
assign g = ((a ^ b) & add_sub) | (a & b);

endmodule
