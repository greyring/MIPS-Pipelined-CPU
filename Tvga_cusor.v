`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:43 09/08/2017
// Design Name:   vga_cursor
// Module Name:   F:/MyProgramme/0/PCPU/Tvga_cusor.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_cursor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tvga_cusor;

	// Inputs
	reg clk;
	reg rst;
	reg we;
	reg [31:0] data_in;
	reg [9:0] vga_column;
	reg [8:0] vga_row;

	// Outputs
	wire [31:0] status;
	wire [11:0] color_out;

	// Instantiate the Unit Under Test (UUT)
	vga_cursor uut (
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.data_in(data_in), 
		.status(status), 
		.vga_column(vga_column), 
		.vga_row(vga_row), 
		.color_out(color_out)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		we = 0;
		data_in = 0;
		vga_column = 0;
		vga_row = 0;

		// Wait 100 ns for global reset to finish
		#20
		rst = 0;
		#100;
		data_in = 32'b10011111111111100000000000000000;
		we = 1;
		#10
		we = 0;
      #10
		vga_column = 7;
		vga_row = 0;
		#10
		vga_column = 6;
		vga_row = 0;
		#10
		vga_column = 7;
		vga_row = 7;
		#10
		vga_column = 0;
		vga_row = 0;
		// Add stimulus here

	end
	always @* 
		#5
		clk <= ~clk;
      
endmodule

