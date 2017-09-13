`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:15 09/13/2017
// Design Name:   adder64
// Module Name:   F:/MyProgramme/0/PCPU/Tadder64.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder64
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tadder64;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] res;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	adder64 uut (
		.A(A), 
		.B(B), 
		.res(res), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 64'hfffffffffffffffx;
		B = 64'hffffffffffffffff;
		#100
		A = 64'hffffffffffffffff;
        
		// Add stimulus here

	end
      
endmodule

