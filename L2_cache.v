`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:53 10/29/2017 
// Design Name: 
// Module Name:    L2_cache 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module L2_cache(
	input clk,
	input rst,
	
	input dcache_r,
	input dcache_w,
	input [31:0]dcache_addr,
	input [127:0]dcache_data_in,
	output cache_ready_d,
	
	input icache_r,
	input [31:0]icache_addr,
	output cache_ready_i,
	
	input [6:0]op,//one hot only index store tag and index load tag
	input [31:0]op_index,
	output cache_ready_op,
	
	input  mem_ready,
	input  [127:0]mem_data,
	output [31:0]mem_addr,
	output [127:0]mem_data_out,
	output mem_r,
	output mem_w,
	
	output [127:0]cache_data,
	
	input [31:0]Tag_Lo,
	input [31:0]Tag_Hi,
	output [31:0]Tag_Lo_in,
	output [31:0]Tag_Hi_in,
	output cache_tag_w
    );
	//latch the signals for dcache
	
	reg [1:0]d_op_;
	reg [31:0]d_addr_;
	reg [127:0]d_data_;
	wire state_init;
	always @(posedge clk) begin
		if (state_init) begin
			d_op_ <= {dcache_w, dcache_r};
			d_addr_ <= dcache_addr;
			d_data_ <= dcache_data_in;
		end
		else begin
			d_op_ <= d_op_;
			d_addr_ <= d_addr_;
			d_data_ <= d_data_;
		end
	end
	//addr =18'tag 10'block 4'b0
	//latch the signals for icache
	reg i_op_;
	reg [31:0]i_addr_;
	always @(posedge clk) begin
		if (state_init) begin
			i_op_ <= icache_r;
			i_addr_ <= icache_addr;
		end
		else begin
			i_op_ <= i_op_;
			i_addr_ <= i_addr_;
		end
	end
	
	//latch the signals for op
	reg [6:0]op_;
	reg [31:0]op_index_;
	reg [31:0]Tag_Lo_;
	always @(posedge clk) begin
		if (state_init) begin
			op_ <= op;
			op_index_ <= op_index;
			Tag_Lo_ <= Tag_Lo;
		end
		else begin
			op_ <= op_;
			op_index_ <= op_index_;
			Tag_Lo_ <= Tag_Lo_;
		end
	end
	
	wire [9:0]v_addr;
	wire v_data, v_wdata;
	wire v_w;
	cache_mem #(.DATA_WIDTH(1),.ADDR_WIDTH(10)) V(
    .clk(clk), 
    .r_addr(v_addr), //attention
    .r_en(1'b1), 
    .r_data(v_data), 
    .w_addr(v_addr), 
    .w_data(v_wdata), 
    .w_en(v_w)
   );
	
	wire [9:0]d_addr;
	wire d_data, d_wdata;
	wire d_w;
	cache_mem #(.DATA_WIDTH(1),.ADDR_WIDTH(10)) D(
    .clk(clk), 
    .r_addr(d_addr), //attention
    .r_en(1'b1), 
    .r_data(d_data), 
    .w_addr(d_addr), 
    .w_data(d_wdata), 
    .w_en(d_w)
   );
	
	wire [9:0]t_addr;
	wire [17:0]t_data, t_wdata;
	wire t_w;
	cache_mem #(.DATA_WIDTH(18),.ADDR_WIDTH(10)) Tag(
    .clk(clk), 
    .r_addr(t_addr), //attention
    .r_en(1'b1), 
    .r_data(t_data), 
    .w_addr(t_addr), 
    .w_data(t_wdata), 
    .w_en(t_w)
   );
	
	wire [9:0]da_addr;
	wire [127:0]da_data, da_wdata;
	wire da_w;
	cache_mem #(.DATA_WIDTH(128),.ADDR_WIDTH(10)) Data(
    .clk(clk), 
    .r_addr(da_addr), //attention
    .r_en(1'b1), 
    .r_data(da_data), 
    .w_addr(da_addr), 
    .w_data(da_wdata), 
    .w_en(da_w)
   );
	
	//v
	wire addr_s;
	assign v_addr = addr_s ? i_addr_[13:4] : d_addr_[13:4];
	
	//d
	assign d_addr = addr_s ? i_addr_[13:4] : d_addr_[13:4];
	
	//tag
	wire t_in;//addr_s  index
	wire t_ds;//data_s
	assign t_addr = t_in ? op_index_[13:4] : (addr_s ? i_addr_[13:4] : d_addr_[13:4]);
	assign t_wdata = t_in ? Tag_Lo_[17:0] : (t_ds ? i_addr_[31:14]: d_addr_[31:14]); 
	
	//data
	wire da_ds;//data_s
	assign da_addr = addr_s ? i_addr_[13:4] : d_addr_[13:4];
	assign da_wdata = da_ds ? d_data_ : mem_data;
	
	reg cache_hit;
	always @* begin
		cache_hit = 0;
		if (v_data & (t_data == (addr_s ? i_addr_[31:14]: d_addr_[31:14])))
			cache_hit = 1'b1;
	end
	
	wire mem_write_back, mem_addr_s
		  , data_mem;
	L2cache_crl L2cache_crl_(
    .clk(clk), 
    .rst(rst), 
    .d_op(d_op_), 
    .i_op(i_op_), 
    .op(op_), 
    .v_data(v_data), 
    .d_data(d_data), 
    .cache_hit(cache_hit), 
    .mem_ready(mem_ready), 
    .addr_s(addr_s), 
    .v_wdata(v_wdata), 
    .v_w(v_w), 
    .d_wdata(d_wdata), 
    .d_w(d_w), 
    .t_in(t_in), 
    .t_ds(t_ds), 
    .t_w(t_w), 
    .da_ds(da_ds), 
	 .da_w(da_w),
    .mem_write_back(mem_write_back), 
    .mem_addr_s(mem_addr_s), 
    .mem_r(mem_r), 
    .mem_w(mem_w), 
    .data_mem(data_mem), 
    .cache_tag_w(cache_tag_w), 
    .cache_ready_i(cache_ready_i), 
    .cache_ready_d(cache_ready_d), 
    .cache_ready_op(cache_ready_op),
	 .init(state_init)
    );
	
	assign Tag_Hi_in = 0;
	assign Tag_Lo_in = {14'b0, t_data};
	assign cache_data = data_mem ? mem_data : da_data;
	assign mem_addr = mem_write_back ? {t_data, d_addr_[13:4], 4'b0} : (mem_addr_s ? i_addr_ : d_addr_);
	assign mem_data_out = da_data;
endmodule
