`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:25 10/24/2017
// Design Name:   write_data_mask_32
// Module Name:   F:/MyProgramme/0arch/PCPU/Twrite_data_mask_32.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: write_data_mask_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Twrite_data_mask_32;

	// Inputs
	reg [3:0] mask;
	reg [31:0] w_data;
	reg [31:0] old_data;

	// Outputs
	wire [31:0] new_data;

	// Instantiate the Unit Under Test (UUT)
	write_data_mask_32 uut (
		.mask(mask), 
		.w_data(w_data), 
		.old_data(old_data), 
		.new_data(new_data)
	);

	initial begin
		// Initialize Inputs
		mask = 0;
		w_data = 0;
		old_data = 0;

		// Wait 100 ns for global reset to finish
		#10;
      old_data = 32'h11223344;
		w_data = 32'h55667788;
		mask = 4'b0001;
		#10
		mask = 4'b0010;
		#10
		mask = 4'b0100;
		#10
		mask = 4'b1000;
		#10
		mask = 4'b0011;
		#10
		mask = 4'b1100;
		#10
		mask = 4'b1111;
		#10
		mask = 4'b0000;
		// Add stimulus here

	end
      
endmodule

