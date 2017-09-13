`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:39 09/04/2017
// Design Name:   timer
// Module Name:   F:/MyProgramme/0/PCPU/Ttimer.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ttimer;

	// Inputs
	reg clk;
	reg rst;
	reg we;
	reg [31:0] val;

	// Outputs
	wire out_0;

	// Instantiate the Unit Under Test (UUT)
	timer uut (
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.val(val), 
		.out_0(out_0)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		we = 0;
		val = 0;

		// Wait 100 ns for global reset to finish
		#100;
		we = 1;
		val = 3;
		#100
		we = 0;
		#500;
		we = 1;
		val = 5;
		#200
		rst = 1;
        
		// Add stimulus here

	end
	always @* 
		#50
		clk <= ~clk;
      
endmodule

