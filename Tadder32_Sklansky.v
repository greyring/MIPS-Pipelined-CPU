`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:50 09/11/2017
// Design Name:   adder32_Sklansky
// Module Name:   F:/MyProgramme/0/PCPU/Tadder32_Sklansky.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder32_Sklansky
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tadder32_Sklansky;

	// Inputs
	reg [31:0] A_in;
	reg [31:0] B_in;
	reg add_sub;

	// Outputs
	wire [31:0] res;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	adder32_Sklansky uut (
		.A_in(A_in), 
		.B_in(B_in), 
		.add_sub(add_sub), 
		.res(res), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		A_in = 32'hffffffff;
		B_in = 32'h1;
		add_sub = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A_in = 32'h5a5a5a5a;
		B_in = 32'ha5a5a5a5;
		#100
		A_in = 32'h80000000;
		B_in = 32'h80000000;
		#100
		add_sub = 1;
		A_in = 32'h0;
		B_in = 32'h1;
		#100
		A_in = 32'h7fffffff;
		B_in = 32'hffffffff;
		#100
		A_in = 32'h80000000;
		B_in = 32'h00000001;
		
		// Add stimulus here

	end
      
endmodule

