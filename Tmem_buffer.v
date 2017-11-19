`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:24:47 11/19/2017
// Design Name:   mem_buffer
// Module Name:   F:/MyProgramme/0arch/PCPU/Tmem_buffer.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tmem_buffer;

	// Inputs
	reg clk;
	reg rst;
	reg mem_r;
	reg mem_w;
	reg [31:0] mem_addr;
	reg [127:0] mem_wdata;
	reg [31:0] bus_rdata;
	reg bus_ready;

	// Outputs
	wire [127:0] mem_rdata;
	wire bus_r;
	wire bus_w;
	wire [31:0] bus_addr;
	wire [31:0] bus_wdata;
	wire ready;

	// Instantiate the Unit Under Test (UUT)
	mem_buffer uut (
		.clk(clk), 
		.rst(rst), 
		.mem_r(mem_r), 
		.mem_w(mem_w), 
		.mem_addr(mem_addr), 
		.mem_wdata(mem_wdata), 
		.mem_rdata(mem_rdata), 
		.bus_r(bus_r), 
		.bus_w(bus_w), 
		.bus_addr(bus_addr), 
		.bus_rdata(bus_rdata), 
		.bus_wdata(bus_wdata), 
		.bus_ready(bus_ready), 
		.ready(ready)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		mem_r = 0;
		mem_w = 0;
		mem_addr = 0;
		mem_wdata = 0;
		bus_rdata = 0;
		bus_ready = 0;

		// Wait 100 ns for global reset to finish
		#10
		rst = 0;
		#10
		mem_r = 1;
		mem_addr = 32'hfffffff0;
		#10//rw0
		bus_rdata = 32'h44444444;
		bus_ready = 1;
		#10//rw1
		bus_rdata = 32'h33333333;
		#10//rw2
		bus_ready = 0;
		#10//rw2
		bus_ready = 1;
		bus_rdata = 32'h22222222;
		#10//rw3
		bus_ready = 0;
		#10//rw3
		bus_ready = 1;
		bus_rdata = 32'h11111111;
		#10//fin
		#10
		mem_r = 0;
		bus_ready = 0;
		#10
		mem_w = 1;
		mem_wdata = 128'h55555555666666667777777788888888;
		mem_addr = 32'h1111ffe0;
		#10//rw0
		bus_ready = 1;
		#10//rw1
		bus_ready = 0;
		#10
		bus_ready = 1;
		#10//rw2
		#10//rw3
		#10//fin
		#10
		bus_ready = 0;
		mem_w = 0;
		
        
		// Add stimulus here
	end
   always @* 
		#5
		clk <= ~clk;
endmodule

