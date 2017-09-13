`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:39 09/11/2017 
// Design Name: 
// Module Name:    inner_adder 
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
module inner_adder(
	input gi_k,
	input pi_k,
	input gk_1_j,
	input pk_1_j,
	output gi_j,
	output pi_j
    );
	 //k_1_j == k-1~j
	 
assign pi_j = pi_k & pk_1_j;
assign gi_j = gi_k | (gk_1_j & pi_k);

endmodule
