`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:37 11/20/2017
// Design Name:   cache
// Module Name:   F:/MyProgramme/0arch/PCPU/Tcache.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tcache;

	// Inputs
	reg clk;
	reg rst;
	reg [2:0] choose;
	reg [6:0] op;
	reg [31:0] op_addr;
	reg [31:0] Tag_Hi;
	reg [31:0] Tag_Lo;
	reg [31:0] i_addr;
	reg d_r;
	reg d_w;
	reg [3:0] d_wmask;
	reg [31:0] d_addr;
	reg [31:0] d_wdata;
	reg [31:0] mem_rdata;
	reg mem_ready;

	// Outputs
	wire [31:0] Tag_wHi;
	wire [31:0] Tag_wLo;
	wire Tag_w;
	wire [31:0] i_data;
	wire [31:0] d_rdata;
	wire mem_r;
	wire mem_w;
	wire [31:0] mem_addr;
	wire [31:0] mem_wdata;
	wire cache_err;
	wire ready;

	// Instantiate the Unit Under Test (UUT)
	cache uut (
		.clk(clk), 
		.rst(rst), 
		.choose(choose), 
		.op(op), 
		.op_addr(op_addr), 
		.Tag_Hi(Tag_Hi), 
		.Tag_Lo(Tag_Lo), 
		.Tag_wHi(Tag_wHi), 
		.Tag_wLo(Tag_wLo), 
		.Tag_w(Tag_w), 
		.i_addr(i_addr), 
		.i_data(i_data), 
		.d_r(d_r), 
		.d_w(d_w), 
		.d_wmask(d_wmask), 
		.d_addr(d_addr), 
		.d_rdata(d_rdata), 
		.d_wdata(d_wdata), 
		.mem_r(mem_r), 
		.mem_w(mem_w), 
		.mem_addr(mem_addr), 
		.mem_wdata(mem_wdata), 
		.mem_rdata(mem_rdata), 
		.mem_ready(mem_ready), 
		.cache_err(cache_err), 
		.ready(ready)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		choose = 0;
		op = 0;
		op_addr = 0;
		Tag_Hi = 0;
		Tag_Lo = 0;
		i_addr = 0;
		d_r = 0;
		d_w = 0;
		d_wmask = 0;
		d_addr = 0;
		d_wdata = 0;
		mem_rdata = 0;
		mem_ready = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
      choose = 3'b001;
		op_addr = {19'b0, 1'b0, 8'hff, 4'b0};
		op = 7'b0000001;//index set invalid
		#10//I state 0
		choose = 0;
		op = 0;
		#10//I state 1 L2 state 10
		#10//L2 state 3
		#15//L2 state 4 mem_buf 1
		mem_ready = 1;
		mem_rdata = 32'h11111111;
		#10
		mem_rdata = 32'h22222222;
		#10
		mem_rdata = 32'h33333333;
		#10
		mem_rdata = 32'h44444444;
		#10
		mem_ready = 0;
		#5
		#20
		i_addr = 32'h00000004;
		#10
		i_addr = 32'h00000008;
		#10
		i_addr = 32'h0000000c;
		#10
		i_addr = 32'h00000010;
		d_addr = 32'hfffffff0;
		d_r    = 1'b1;
		#10
		#10
		#15//i fetch
		mem_ready = 1;
		mem_rdata = 32'h55555555;
		#10
		mem_rdata = 32'h66666666;
		#10
		mem_rdata = 32'h77777777;
		#10
		mem_rdata = 32'h88888888;
		#10
		mem_ready = 0;
		#5
		#10
		#10
		#10
		#15
		mem_ready = 1;
		mem_rdata = 32'haaaaaaaa;
		#10
		mem_rdata = 32'h55555555;
		#10
		mem_rdata = 32'haaaaaaaa;
		#10
		mem_rdata = 32'h55555555;
		#10
		mem_ready = 0;
		#5
		#10
		#10
		d_r = 0;
		d_w = 1;
		d_wmask = 4'b0001;
		d_addr = 32'hfffffff0;
		d_wdata = 32'h00000011;
		i_addr = 32'h00000014;
		#10
		d_w = 0;
		i_addr = 32'h00000018;
		#10
		d_w = 1;
		d_wmask = 4'b1111;
		d_addr = 32'h11fffff0;
		d_wdata = 32'h11223344;

		i_addr = 32'h0000001c;
		#70
		#5
		mem_ready = 1'b1;
		#10
		#10
		#10
		#10
		mem_ready = 1'b0;
		#5
		#10
		#5
		mem_ready = 1'b1;
		mem_rdata = 32'h44444444;
		#10
		mem_rdata = 32'h33333333;
		#10
		mem_rdata = 32'h22222222;
		#10
		mem_rdata = 32'h11111111;
		#10
		mem_ready = 1'b0;
		mem_rdata  = 32'h0;
		#5
		#10
		#10
		d_w = 1'b0;
		choose = 3'b010;
		op = 7'b0000001;
		op_addr = {19'b0, 1'b1, 8'hff, 4'b0};
		#10
		choose = 0;
		op = 0;
		op_addr = 0;
		Tag_Hi = 0;
		Tag_Lo = 0;
		i_addr = 0;
		d_r = 0;
		d_w = 0;
		d_wmask = 0;
		d_addr = 0;
		d_wdata = 0;
		mem_rdata = 0;
		mem_ready = 0;
		
		// Add stimulus here

	end
	always @*
		#5
		clk <= ~clk;
      
endmodule

