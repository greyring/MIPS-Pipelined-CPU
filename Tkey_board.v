`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:42 09/07/2017
// Design Name:   keyboard_buffer
// Module Name:   F:/MyProgramme/0/PCPU/Tkey_board.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: keyboard_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tkey_board;

	// Inputs
	reg clk;
	reg rst;
	reg ps2_clk;
	reg ps2_data;
	reg read;

	// Outputs
	wire ready;
	wire full;
	wire [7:0] key_out;

	// Instantiate the Unit Under Test (UUT)
	keyboard_buffer uut (
		.clk(clk), 
		.rst(rst), 
		.ps2_clk(ps2_clk), 
		.ps2_data(ps2_data), 
		.read(read), 
		.ready(ready), 
		.full(full), 
		.key_out(key_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		ps2_clk = 1;
		ps2_data = 1;
		read = 0;

		#2
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 1;
		
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 1;
		
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 0;
		#100
		ps2_data = 1;
		#100
		ps2_data = 1;
		#110
		read = 1;
		#26
		read = 0;
		
	end
	always @* 
		#50
		ps2_clk <= ~ps2_clk;
	always @*
		#13
		clk <= ~clk;
      
endmodule

