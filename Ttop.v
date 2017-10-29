`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:11 09/08/2017
// Design Name:   top
// Module Name:   F:/MyProgramme/0/PCPU/Ttop.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module Ttop;

	// Inputs
	reg clk200P;
	reg clk200N;
	reg clk_100mhz;
	reg [4:0] btn_y;
	reg [15:0] switch;
	reg RSTN;

	// Outputs
	wire [4:0] btn_x;
	wire led_clk;
	wire led_do;
	wire led_pen;
	wire seg_clk;
	wire seg_do;
	wire seg_pen;
	wire [3:0] vga_red;
	wire [3:0] vga_green;
	wire [3:0] vga_blue;
	wire vga_h_sync;
	wire vga_v_sync;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk200P(clk200P), 
		.clk200N(clk200N), 
		.clk_100mhz(clk_100mhz),
		.btn_x(btn_x), 
		.btn_y(btn_y), 
		.switch(switch), 
		.RSTN(RSTN), 
		.led_clk(led_clk), 
		.led_do(led_do), 
		.led_pen(led_pen), 
		.seg_clk(seg_clk), 
		.seg_do(seg_do), 
		.seg_pen(seg_pen), 
		.vga_red(vga_red), 
		.vga_green(vga_green), 
		.vga_blue(vga_blue), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync)
	);

	initial begin
		// Initialize Inputs
		clk200P = 0;
		clk200N = 0;
		clk_100mhz = 1;
		btn_y = 0;
		switch = 0;
		RSTN = 1;

		// Wait 100 ns for global reset to finish
		#100;
		RSTN = 0;
		//#10000
		//RSTN = 1;
        
		// Add stimulus here

	end
	always @*
		#5
		clk_100mhz <= ~clk_100mhz;
      
endmodule

