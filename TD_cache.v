`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:00 10/24/2017
// Design Name:   D_cache
// Module Name:   F:/MyProgramme/0arch/PCPU/TD_cache.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TD_cache;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] addr;
	reg cache_r;
	reg cache_w;
	reg [31:0] cache_data_in;
	reg [3:0] wmask;
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
	wire [127:0] mem_data_out;
	wire mem_r;
	wire mem_w;
	wire [31:0] Tag_Lo_in;
	wire [31:0] Tag_Hi_in;
	wire cache_tag_w;

	// Instantiate the Unit Under Test (UUT)
	D_cache uut (
		.clk(clk), 
		.rst(rst), 
		.addr(addr), 
		.cache_r(cache_r), 
		.cache_w(cache_w), 
		.cache_data_in(cache_data_in), 
		.wmask(wmask), 
		.cache_data(cache_data), 
		.cache_ready(cache_ready), 
		.cache_err(cache_err), 
		.mem_ready(mem_ready), 
		.mem_data(mem_data), 
		.mem_addr(mem_addr), 
		.mem_data_out(mem_data_out), 
		.mem_r(mem_r), 
		.mem_w(mem_w), 
		.op(op), 
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
		addr = 0;
		cache_r = 0;
		cache_w = 0;
		cache_data_in = 0;
		wmask = 0;
		mem_ready = 0;
		mem_data = 0;
		op = 0;
		Tag_Lo = 0;
		Tag_Hi = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		op = 7'b0000001;//index invalid
		#10
		addr = {19'b0, 1'b1, 8'hff, 4'b0};
		op = 7'b0000001;//index invalid
		#10
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		Tag_Lo = {12'b0, 20'hfffff};
		op = 7'b0000100;//index store tag
		#10
		addr = {19'b0, 1'b1, 8'hff, 4'b0};
		Tag_Lo = {12'b0, 20'h5a5a5};
		op = 7'b0000100;//index store tag
		#10
		addr = {19'b0, 1'b0, 8'hff, 4'b0};
		op = 7'b0000010;//index load tag
		#10
		addr = {19'b0, 1'b1, 8'hff, 4'b0};
		op = 7'b0000010;//index load tag
		#10
		addr = 32'hfffffff0;
		cache_r = 1'b1;//read fill STORE
		op = 7'b0;
		#5
		mem_data = 127'h11111111222222223333333344444444;
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'ha5a5aff0;
		cache_r = 1'b1;//read fill FETCH
		#10
		#5
		mem_data = 127'h00000000_00000000_00000000_00000000;
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'h5a5a5ff0;
		cache_r = 1'b1;//read full
		#5
		mem_data = 127'h55555555666666667777777788888888;
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'hffff_fff0;
		cache_r = 1'b1;//read hit
		#10
		addr = 32'h5a5a5ff0;
		cache_w = 1'b1;
		cache_r = 1'b0;
		cache_data_in = 32'haaaaaaaa;
		wmask = 4'b1111;//write hit
		#10
		addr = 32'hffffffec;
		cache_w = 1'b1;
		cache_data_in = 32'hbbbbbbbb;
		wmask = 4'b1111;//write empty
		#5
		mem_data = 127'heeeeeeee_eeeeeeee_eeeeeeee_eeeeeeee;
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'ha5a5affc;
		cache_w = 1'b1;//write full undirty
		cache_data_in = 32'hcccccccc;
		wmask = 4'b1111;
		#5
		mem_data = 127'h00000000_00000000_00000000_00000000;
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'hfffffffc;
		cache_w = 1'b1;//write full dirty 5a5a5ff0 write back
		cache_data_in = 32'h00000000;
		wmask = 4'b1111;
		#10
		#5
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		#5
		mem_data = 127'h11111111222222223333333344444444;
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		cache_w = 1'b0;
		wmask = 4'b0;
		addr = 32'hfffffff0;
		op = 7'b1000000;//write back undirty (dirty)
		#10
		#5
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'hfffffff0;
		op = 7'b1000000;//write back undirty (undirty)
		#10
		addr = 32'ha5a5aff0;
		op = 7'b0100000;//write back invalidate (dirty)
		#5
		mem_ready = 1'b1;
		#6
		mem_ready = 1'b0;
		#9
		addr = 32'hfffffff0;
		op = 7'b0100000;//write back invalidate (undirty)
		#10
		addr = 32'hffffffe0;
		op = 7'b0010000;//addr invalidate
		#10
		op = 7'b0;
		
		// Add stimulus here

	end
   always @* 
		#5
		clk <= ~clk;
endmodule

