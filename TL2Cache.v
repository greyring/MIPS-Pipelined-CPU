`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:40 11/16/2017
// Design Name:   L2_cache
// Module Name:   F:/MyProgramme/0arch/PCPU/TL2Cache.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: L2_cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TL2Cache;

	// Inputs
	reg clk;
	reg rst;
	reg dcache_r;
	reg dcache_w;
	reg [31:0] dcache_addr;
	reg [127:0] dcache_data_in;
	reg icache_r;
	reg [31:0] icache_addr;
	reg [6:0] op;
	reg [31:0] op_index;
	reg mem_ready;
	reg [127:0] mem_data;
	reg [31:0] Tag_Lo;
	reg [31:0] Tag_Hi;

	// Outputs
	wire cache_ready_d;
	wire cache_ready_i;
	wire cache_ready_op;
	wire [31:0] mem_addr;
	wire [127:0] mem_data_out;
	wire mem_r;
	wire mem_w;
	wire [127:0] cache_data;
	wire [31:0] Tag_Lo_in;
	wire [31:0] Tag_Hi_in;
	wire cache_tag_w;

	// Instantiate the Unit Under Test (UUT)
	L2_cache uut (
		.clk(clk), 
		.rst(rst), 
		.dcache_r(dcache_r), 
		.dcache_w(dcache_w), 
		.dcache_addr(dcache_addr), 
		.dcache_data_in(dcache_data_in), 
		.cache_ready_d(cache_ready_d), 
		.icache_r(icache_r), 
		.icache_addr(icache_addr), 
		.cache_ready_i(cache_ready_i), 
		.op(op), 
		.op_index(op_index), 
		.cache_ready_op(cache_ready_op), 
		.mem_ready(mem_ready), 
		.mem_data(mem_data), 
		.mem_addr(mem_addr), 
		.mem_data_out(mem_data_out), 
		.mem_r(mem_r), 
		.mem_w(mem_w), 
		.cache_data(cache_data), 
		.Tag_Lo(Tag_Lo), 
		.Tag_Hi(Tag_Hi), 
		.Tag_Lo_in(Tag_Lo_in), 
		.Tag_Hi_in(Tag_Hi_in), 
		.cache_tag_w(cache_tag_w)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		dcache_r = 0;
		dcache_w = 0;
		dcache_addr = 0;
		dcache_data_in = 0;
		icache_r = 0;
		icache_addr = 0;
		op = 0;
		op_index = 0;
		mem_ready = 0;
		mem_data = 0;
		Tag_Lo = 0;
		Tag_Hi = 0;

		// Wait 100 ns for global reset to finish
		#10;
      rst = 0;
		op = 7'b0000100;
		op_index = 32'h00003ff0;
		Tag_Lo = 32'h0003ffff;
		#10;
		icache_r = 1'b1;
		icache_addr = 32'hfffffff0;//op is doing
		#10
		op = 7'b0000010;
		op_index = 32'h00003ff0;
		#10
		#10
		#10
		op = 0;
		#10//decode
		#10//iop
		#10//ifetch
		#5
		mem_ready = 1'b1;
		mem_data = 127'h11111111222222223333333344444444;//icache从mem取值，
		#6
		mem_ready = 1'b0;
		#9
		
		icache_r = 1'b1;
		icache_addr = 32'hfffffff0;//icache_hit
		#10//decode
		dcache_r = 1'b1;
		dcache_addr = 32'hffffffe0;//dcache read hit icache is doing
		#10//iop
		#10//init
		icache_r = 1'b0;//icache 处理结束
		#10//decode
		#10//state = DOP
		#10//state = DFETCH
		#5
		mem_ready = 1'b1;
		mem_data = 128'h55555555666666667777777788888888;
		#6//DSTORE
		mem_ready = 1'b0;
		#9//init
		dcache_r = 1'b0;
		dcache_w = 1'b1;
		dcache_data_in = 127'h0;
		dcache_addr = 32'hffffffe0;//d write exist 0
		icache_r = 1'b1;
		icache_addr = 32'hffffffe0;//i read first
		#10//decode
		#10//iop
		#10//init
		icache_r = 1'b0;
		#10//decode
		#10//dop
		#10//init
		dcache_w = 1'b0;
		dcache_r = 1'b1;
		dcache_addr = 32'h1111ffe0;//d wb fetch
		#10//decode
		#10//dop
		#10//dwb
		#10//dwb
		mem_ready = 1'b1;
		#10//dfetch
		mem_ready = 1'b0;
		#5//dfetch
		mem_ready = 1'b1;
		mem_data = 128'h99999999aaaaaaaabbbbbbbbcccccccc;
		#6//dstore
		mem_ready = 1'b0;
		#9//init
		dcache_r = 1'b0;
		dcache_w = 1'b1;
		dcache_data_in = 128'h44444444333333332222222211111111;
		dcache_addr = 32'h2222ffe0;//d write
		#10//decode
		#10//dop
		#10//init
		dcache_w = 1'b1;
		dcache_data_in = 128'h88888888777777776666666655555555;
		dcache_addr = 32'h3333ffe0;//d wb write
		#10//decode
		#10//dop
		#10//dwb
		mem_ready = 1'b1;
		#10//dstore
		mem_ready = 1'b0;
		#10//init
		dcache_w = 1'b0;
		
		#10
		op = 0;
		dcache_r = 0;
		dcache_w = 0;
		icache_r = 0;
		mem_ready = 0;
		mem_data = 0;
		// Add stimulus here

	end
   always @*
		#5
		clk <= ~clk;
endmodule

