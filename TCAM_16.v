`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:24 12/11/2017
// Design Name:   CAM_16
// Module Name:   F:/MyProgramme/0arch/PCPU/TCAM_16.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CAM_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TCAM_16;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0]we;
	reg [18:0] wdata;
	reg [18:0] rdata;
	
	wire [15:0]hit;

	// Instantiate the Unit Under Test (UUT)
	CAM_16 uut (
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.wdata(wdata), 
		.rdata(rdata),
		.hit(hit)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		we = 0;
		wdata = 0;
		rdata = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rst = 0;
		wdata = 19'd1;
		we = 16'd1;
		#10
		wdata = 19'd2;
		we = 16'd2;
		#10
		wdata = 19'd3;
		we = 16'd4;
		#10
		we = 0;
		rdata = 19'd1;
		#10
		rdata = 19'd2;
		
        
		// Add stimulus here

	end
	always @*
		#5
		clk <= ~clk;
      
endmodule

