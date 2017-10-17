`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:42 10/16/2017
// Design Name:   I_cache
// Module Name:   F:/MyProgramme/0arch/PCPU/TI_cache.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: I_cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TI_cache;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] addr;
	reg cache_r;
	reg mem_ready;
	reg [127:0] mem_data;
	reg [6:0] op;
	reg [31:0] Tag_Lo;
	reg [31:0] Tag_Hi;

	// Outputs
	wire [31:0] cache_data;
	wire cache_ready;
	wire cache_err;
	wire [31:0] mem_addr;
	wire mem_r;
	wire [31:0] Tag_Lo_in;
	wire [31:0] Tag_Hi_in;
	wire cache_tag_we;

	// Instantiate the Unit Under Test (UUT)
	I_cache uut (
		.clk(clk), 
		.rst(rst), 
		.addr(addr), 
		.cache_r(cache_r), 
		.cache_data(cache_data), 
		.cache_ready(cache_ready), 
		.cache_err(cache_err), 
		.mem_ready(mem_ready), 
		.mem_data(mem_data), 
		.mem_addr(mem_addr), 
		.mem_r(mem_r), 
		.op(op), 
		.Tag_Lo(Tag_Lo), 
		.Tag_Hi(Tag_Hi), 
		.Tag_Lo_in(Tag_Lo_in), 
		.Tag_Hi_in(Tag_Hi_in), 
		.cache_tag_w(cache_tag_we)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		
		addr = 0;
		cache_r = 0;
		mem_ready = 0;
		mem_data = 0;
		op = 0;
		Tag_Lo = 0;
		Tag_Hi = 0;

		// Wait 100 ns for global reset to finish
		#95;
      rst = 0;
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		op = 7'b0000001;//index invalid
		#10
		addr = {19'b0, 1'b1, 8'hff, 4'b0};
		op = 7'b0000001;//index invalid
		#10
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		Tag_Lo = {12'b0, 20'hfffff};
		op = 7'b0000100;//index load tag
		#10
		addr = {19'b0, 1'b1, 8'hff, 4'b0};
		Tag_Lo = {12'b0, 20'h5a5a5};
		op = 7'b0000100;
		#10
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		op = 7'b0000010;//index store tag
		#10
		addr = 32'hfffffff0;
		op = 7'b0100000;//addre fill
		#10
		mem_data = 32'hf0000000;
		mem_ready = 1'b1;
		#10
		mem_ready = 1'b0;
		addr = 32'h5a5a5ffc;//read fill
		op = 7'b0000000;
		cache_r = 1'b1;
		#10
		#10
		mem_data = 128'h00000000ffffffff<<96;//test word select
		mem_ready = 1'b1;
		#10
		mem_ready = 1'b0;
		addr = 32'hfffffff0;//read hit
		cache_r = 1'b1;
		#10
		addr = 32'h11111ff0;//read refill select_1 = 0
		cache_r = 1'b1;
		#10
		mem_data = 128'h00000000ffffffff;
		mem_ready = 1'b1;
		#10
		cache_r = 1'b0;
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		Tag_Lo = {12'b0, 20'hfffff};
		op = 7'b0000100;//index load tag err
		#10
		op = 7'b0;
		
	end
	always @* 
		#5
		clk <= ~clk;
      
endmodule

