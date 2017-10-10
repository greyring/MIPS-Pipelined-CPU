`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:27 10/09/2017
// Design Name:   Counter
// Module Name:   F:/MyProgramme/0arch/PCPU/Tcounter.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tcounter;

	// Inputs
	reg clk;
	reg rst;
	reg clk0;
	reg clk1;
	reg clk2;
	reg counter_we;
	reg [31:0] counter_val;
	reg [1:0] counter_ch;

	// Outputs
	wire counter0_OUT;
	wire counter1_OUT;
	wire counter2_OUT;
	wire [31:0] counter_out;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.clk(clk), 
		.rst(rst), 
		.clk0(clk0), 
		.clk1(clk1), 
		.clk2(clk2), 
		.counter_we(counter_we), 
		.counter_val(counter_val), 
		.counter_ch(counter_ch), 
		.counter0_OUT(counter0_OUT), 
		.counter1_OUT(counter1_OUT), 
		.counter2_OUT(counter2_OUT), 
		.counter_out(counter_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		clk0 = 0;
		clk1 = 0;
		clk2 = 0;
		counter_we = 0;
		counter_val = 0;
		counter_ch = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here
	end
	always @* begin
		#5
		clk <= ~clk;
		clk0 <= ~clk0;
	end
      
endmodule

