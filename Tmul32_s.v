`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:02:56 10/10/2017
// Design Name:   mul32_s
// Module Name:   F:/MyProgramme/0arch/PCPU/Tmul32_s.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mul32_s
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tmul32_s;

	// Inputs
	reg sign;
	reg [31:0] A_i;
	reg [31:0] B_i;

	// Outputs
	wire [63:0] A_t;
	wire [63:0] B_t;

	// Instantiate the Unit Under Test (UUT)
	mul32_s uut (
		.sign(sign), 
		.A_i(A_i), 
		.B_i(B_i), 
		.A_t(A_t), 
		.B_t(B_t)
	);

	initial begin
		// Initialize Inputs
		sign = 0;
		A_i = 0;
		B_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A_i = 32'hffffffff;
		B_i = 32'hffffffff;
		#100
		B_i = 32'h0;
		#100
		B_i = 32'h1;
		#100
		B_i = 32'h2;
		#100
		B_i = 32'h5a5a5a5a;
		A_i = 32'ha5a5a5a5;
		#100
		A_i = 32'd321;
		B_i = 32'd640;
		
		#100;
		sign = 1;
		A_i = 32'hffffffff;
		B_i = 32'hffffffff;
		#100
		B_i = 32'h0;
		#100
		B_i = 32'h1;
		#100
		B_i = 32'h2;
		#100
		B_i = 32'h5a5a5a5a;
		A_i = 32'ha5a5a5a5;
		#100
		A_i = 32'd321;
		B_i = 32'd640;
		// Add stimulus here
	end
      
endmodule

