`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:04 09/11/2017 
// Design Name: 
// Module Name:    res_adder 
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
module res_adder(
	input pi_i,
	input gi_1_0,
	output si
    );

xor (si,pi_i,gi_1_0);

endmodule
