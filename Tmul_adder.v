`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:12 09/13/2017
// Design Name:   mul_adder
// Module Name:   F:/MyProgramme/0/PCPU/Tmul_adder.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mul_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tmul_adder;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;
	reg [63:0] C_;
	reg a_s;
	reg en_c;

	// Outputs
	wire [63:0] res;

	// Instantiate the Unit Under Test (UUT)
	mul_adder uut (
		.A(A), 
		.B(B), 
		.C_(C_), 
		.a_s(a_s), 
		.en_c(en_c), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		A = 64'ha5a5a5a5a5a5a5a5;
		B = 64'h5a5a5a5a5a5a5a5a;
		C_ = 64'hffffffffffffffff;
		a_s = 0;
		en_c = 0;

		// Wait 100 ns for global reset to finish
		#500;
      en_c = 1;
		#500
		a_s = 1;
		// Add stimulus here

	end
      
endmodule

