`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:02 06/19/2017 
// Design Name: 
// Module Name:    random 
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
module random(input[31:0] time_in,
					output[7:0] random_out
    );
	 assign random_out[0] = time_in[0] ^ time_in[2] ^ time_in[4];
	 assign random_out[1] = time_in[1] ^ time_in[3] ^ time_in[5];
	 assign random_out[2] = time_in[0] ^ time_in[3] ^ time_in[4];
	 assign random_out[3] = time_in[1] ^ time_in[2] ^ time_in[5];
	 assign random_out[4] = time_in[5] ^ time_in[7] ^ time_in[8];
	 assign random_out[5] = time_in[2] ^ time_in[6] ^ time_in[8];
	 assign random_out[6] = time_in[1] ^ time_in[5] ^ time_in[8];
	 assign random_out[7] = time_in[1] ^ time_in[3] ^ time_in[4];


endmodule
