`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:47 09/13/2017
// Design Name:   mul32
// Module Name:   F:/MyProgramme/0/PCPU/Tmul16.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mul32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tmul32;

	// Inputs
	reg [31:0]A;
	reg [31:0]B;
	
	//Outputs
	wire [63:0]C;

	// Instantiate the Unit Under Test (UUT)
	mul32 uut (
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
		A = 32'hffffffff;
		B = 32'hffffffff;
		#100
		B = 32'h0;
		#100
		B = 32'h1;
		#100
		B = 32'h2;
		#100
		B = 32'h5a5a5a5a;
		A = 32'ha5a5a5a5;
		#100
		A = 32'd321;
		B = 32'd640;
        
		// Add stimulus here

	end
      
endmodule

