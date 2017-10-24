`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:06 10/24/2017
// Design Name:   write_data_mask
// Module Name:   F:/MyProgramme/0arch/PCPU/Twrite_data_mask.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: write_data_mask
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Twrite_data_mask;

	// Inputs
	reg [1:0] word_s;
	reg [3:0] mask;
	reg [31:0] w_data;
	reg [127:0] old_data;

	// Outputs
	wire [127:0] new_data;

	// Instantiate the Unit Under Test (UUT)
	write_data_mask uut (
		.word_s(word_s), 
		.mask(mask), 
		.w_data(w_data), 
		.old_data(old_data), 
		.new_data(new_data)
	);

	initial begin
		// Initialize Inputs
		word_s = 0;
		mask = 0;
		w_data = 0;
		old_data = 0;

		// Wait 100 ns for global reset to finish
		#10;
      old_data = 127'h11111111222222223333333344444444;
		w_data = 32'h88888888;
		mask = 4'b1111;
		word_s = 0;
		#10
		word_s = 1;
		#10
		word_s = 2;
		#10
		word_s = 3;
		#10
		word_s = 0;
		// Add stimulus here

	end
      
endmodule

