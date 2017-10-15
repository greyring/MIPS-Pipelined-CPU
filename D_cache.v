`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:11:02 10/15/2017 
// Design Name: 
// Module Name:    D_cache 
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
module D_cache(
   input clk,
	input [31:0]addr,
	input sign_ext,
	input [2:0]type,//∂¿»»¬Î100 w 010 hw 001 b
	
	output reg [31:0]data,
	output cache_hit,
	output cache_err,
	
	input mem_ready,
	input [127:0]mem_data,
	output [31:0]mem_addr,
	output mem_r
    );
	
	wire [19:0]tag;
	wire [7:0]block;
	wire [3:0]offset;
	
	reg [255:0]v1;
	reg [19:0]tag1[255:0];
	reg [127:0]data1[255:0];
	reg [1:0]count1[255:0];
	
	reg v2[255:0];
	reg [19:0]tag2[255:0];
	reg [127:0]data2[255:0];
	reg [1:0]count2[255:0];
	
	wire cache_hit_1, cache_hit_2;
	wire [31:0]data_w_1[3:0], data_w_1_DUMMY;
	wire [15:0]data_hw_1[1:0], data_hw_1_DUMMY;
	wire [7:0]data_b_1[1:0], data_b_1_DUMMY;
	wire [31:0]data_w_2[3:0], data_w_2_DUMMY;
	wire [15:0]data_hw_2[1:0], data_hw_2_DUMMY;
	wire [7:0]data_b_2[1:0], data_b_2_DUMMY;
	
	wire [31:0]data_w;
	wire [15:0]data_hw;
	wire [7:0]data_b;
	
	wire select_1;
	
	assign {tag, block , offset} = addr;
	//the first entry
	assign {data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]} = data1[block];
	assign data_w_1_DUMMY = data_w_1[offset[3:2]];
		  
	assign {data_hw_1[1], data_hw_1[0]} = data_w_1_DUMMY;
	assign data_hw_1_DUMMY = data_hw_1[offset[1]];
		  
	assign {data_b_1[1], data_b_1[0]} = data_hw_1_DUMMY;
	assign data_b_1_DUMMY = data_b_1[offset[0]];
		  
	//the second entry
	assign {data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]} = data2[block];
	assign data_w_2_DUMMY = data_w_2[offset[3:2]];
		  
	assign {data_hw_2[1], data_hw_2[0]} = data_w_2_DUMMY;
	assign data_hw_2_DUMMY = data_hw_2[offset[1]];
		  
	assign {data_b_2[1], data_b_2[0]} = data_hw_2_DUMMY;
	assign data_b_2_DUMMY = data_b_2[offset[0]];
	
	//hit
	assign cache_hit_1 = v1[block] & (tag1[block] == tag);
	assign cache_hit_2 = v2[block] & (tag2[block] == tag);
	assign cache_hit = cache_hit_1 | cache_hit_2;
	//err
	assign cache_err = (addr[0] & type[1]) | ((addr[1] | addr[0]) & type[2]);
	
	//result
	assign data_w = cache_hit_1 ? data_w_1_DUMMY : (cache_hit_2 ? data_w_2_DUMMY : 32'b0);
	assign data_hw = cache_hit_1 ? data_hw_1_DUMMY : (cache_hit_2 ? data_hw_2_DUMMY : 32'b0);
	assign data_b = cache_hit_1 ? data_b_1_DUMMY : (cache_hit_2 ? data_b_2_DUMMY : 32'b0);
	
	//sign ext or not
	always @* begin
		case (type)
			3'b1xx: data = data_w;
			3'b01x: data = (data_hw[15] & sign_ext) ? {16'b1, data_hw} : {16'b0, data_hw}; 
			3'b001: data = (data_b[7] & sign_ext) ? {24'b1, data_b} : {24'b0, data_b};
		endcase
	end
	
	//reload
	assign select_1 = ~v1[block] | (v1[block] & v2[block] & count1[block] < count2[block]);//LRU
	assign mem_addr = {addr[31:4], 4'b0};
	assign mem_r = ~cache_hit;
	always @(posedge clk) begin
		if (mem_ready & ~cache_hit)
			if (select_1) begin
				tag1[block] <= tag;
				data1[block] <= mem_data;
				v1[block] <= 1'b1;
			end
			else begin
				tag2[block] <= tag;
				data2[block] <= mem_data;
				v2[block] <= 1'b1;
			end
	end
	
	//LRU count down
	always @(posedge clk) begin
		if (mem_ready & ~cache_hit) begin
			if (select_1)
				count1[block] <= 2'b11;
			else
				count2[block] <= 2'b11;
		end
		
		if (cache_hit) begin
			if (cache_hit_1) begin
				count1[block] = 2'b11;
				case (count2[block])
					2'b11: count2[block] <= 2'b10;
					2'b10: count2[block] <= 2'b01;
					2'b01: count2[block] <= 2'b00;
					2'b00: count2[block] <= 2'b00;
				endcase
			end
			else begin
				count2[block] = 2'b11;
				case (count1[block])
					2'b11: count1[block] <= 2'b10;
					2'b10: count1[block] <= 2'b01;
					2'b01: count1[block] <= 2'b00;
					2'b00: count1[block] <= 2'b00;
				endcase
			end
		end
	end
endmodule

