`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:32 09/13/2017
// Design Name:   mul24
// Module Name:   F:/MyProgramme/0/PCPU/Tmul24.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mul24
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tmul24;

	// Inputs
	reg [23:0] A;
	reg [23:0] B;

	// Outputs
	wire [47:0] C;

	// Instantiate the Unit Under Test (UUT)
	mulu24 uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 24'hffffff;
		B = 24'hffffff;
		#100
		B = 24'd1;
		#100
		B = 24'd2;
		#100
		A = 24'ha5a5a5;
		B = 24'h5a5a5a;
		// Add stimulus here

	end
      
endmodule

