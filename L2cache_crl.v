`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:36 10/31/2017 
// Design Name: 
// Module Name:    L2cache_crl 
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
module L2cache_crl(
	input clk,
	input rst,
	input [1:0]d_op,
	input i_op,
	input [6:0]op,
	input v_data,
	input d_data,
	input cache_hit,
	input mem_ready,
	
	output reg addr_s,
	output reg v_wdata,
	output reg v_w,
	output reg d_wdata,
	output reg d_w,
	output reg t_in,
	output reg t_ds,
	output reg t_w,
	output reg da_ds,
	output reg da_w,
	output reg mem_write_back,
	output reg mem_addr_s,
	output reg mem_r,
	output reg mem_w,
	output reg data_mem,
	output reg cache_tag_w,
	output reg cache_ready_i,
	output reg cache_ready_d,
	output reg cache_ready_op,
	output reg init
	
    );
parameter INIT  = 4'd1;//choose the right address
parameter DECODE= 4'd10;
parameter OP    = 4'd2;
parameter IOP   = 4'd3;
parameter IFETCH= 4'd4;
parameter ISTORE= 4'd5;
parameter DOP   = 4'd6;
parameter DWB   = 4'd7;
parameter DFETCH= 4'd8;
parameter DSTORE= 4'd9;

reg [3:0]curstate;
reg [3:0]nxtstate;
always @(posedge clk) begin
	if (rst)
		curstate <= INIT;
	else
		curstate <= nxtstate;
end
always @* begin
	if (rst)
		nxtstate = INIT;
	else begin
		case (curstate)
			INIT: nxtstate = DECODE;
			DECODE:if (op[1] | op[2])
					nxtstate = OP;
				  else if (i_op)
					nxtstate = IOP;
				  else if (|d_op)
					nxtstate = DOP;
				  else
					nxtstate = INIT;
			OP:  nxtstate = INIT;
			IOP: if (cache_hit)
					nxtstate = INIT;
				  else
					if (mem_ready)
						nxtstate = ISTORE;
					else
						nxtstate = IFETCH;
			IFETCH: if (mem_ready)
							nxtstate = ISTORE;
					  else
							nxtstate = IFETCH;
			ISTORE: nxtstate = INIT;
			DOP: if (d_op[1]) begin//write
					 if (~cache_hit & v_data & d_data)
						if (mem_ready) nxtstate = DSTORE;
						else nxtstate = DWB;
					 else
						nxtstate = INIT;
				  end
				  else begin//read
					 if (cache_hit)
						nxtstate = INIT;
					 else if (v_data & d_data)
						if (mem_ready) nxtstate = DFETCH;
						else nxtstate = DWB;
					 else
						nxtstate = DFETCH;
				  end
			DWB: if (mem_ready)
					 if (d_op[1])
						nxtstate = DSTORE;
					 else
						nxtstate = DFETCH;
				  else
					 nxtstate = DWB;
			DFETCH: if (mem_ready)
					    nxtstate = DSTORE;
					  else
					    nxtstate = DFETCH;
			DSTORE: nxtstate = INIT;
			default:nxtstate = INIT;
		endcase
	end
end
always @* begin
	{addr_s, v_wdata, v_w, d_wdata, d_w, t_in, t_ds, t_w, da_ds, da_w
	, mem_write_back, mem_addr_s, mem_r, mem_w
	, data_mem, cache_tag_w,
	cache_ready_i, cache_ready_d} = 0;
	cache_ready_op = 1'b1;
	init = curstate == INIT;
	case (curstate)
		DECODE:if (op[1] | op[2]) begin//index load/store tag
				t_in = 1'b1;
				cache_ready_op = 1'b0;
			  end
			  else if(i_op) begin//icache read
				addr_s = 1'b1;
			  end
			  else if (|d_op) begin//dcache read or write
				addr_s = 1'b0;
			  end
		OP:  if(op[1]) begin//index load
				cache_tag_w = 1'b1;
				cache_ready_op = 1'b1;
			  end
			  else begin//index store
				t_in = 1'b1;
				t_w = 1'b1;
				cache_ready_op = 1'b1;
			  end
		IOP: if (cache_hit) begin//icache hit
				cache_ready_i = 1'b1;
				data_mem = 1'b0;
			  end
			  else begin
				mem_addr_s = 1'b1;
				mem_r = 1'b1;
			  end
		IFETCH:begin
					mem_addr_s = 1'b1;
					mem_r = 1'b1;
				 end
		ISTORE:begin
					addr_s = 1'b1;
					v_wdata = 1'b1;
					v_w = 1'b1;
					d_wdata = 1'b0;
					d_w = 1'b1;
					t_in = 1'b0;
					t_ds = 1'b1;
					t_w = 1'b1;
					da_ds = 1'b0;
					da_w = 1'b1;
					data_mem = 1'b1;
					cache_ready_i = 1'b1;
				 end
		DOP: if (d_op[1]) begin//write
				 if (~cache_hit & v_data & d_data) begin//write back
					mem_write_back = 1'b1;
					mem_w = 1'b1;
				 end
				 else begin//write to cache
					addr_s = 1'b0;
					v_wdata = 1'b1;
					v_w = 1'b1;
					d_wdata = 1'b1;
					d_w = 1'b1;
					t_in = 1'b0;
					t_ds = 1'b0;
					t_w = 1'b1;
					da_ds = 1'b1;
					da_w = 1'b1;
					data_mem = 1'b1;
					cache_ready_d = 1'b1;
				 end
			  end
			  else begin//read
				 if (cache_hit) begin
					data_mem = 1'b0;
					cache_ready_d = 1'b1;
				 end
				 else begin//unhit
					if (v_data & d_data) begin//write back
						mem_write_back = 1'b1;
						mem_w = 1'b1;
					end
					else begin//fetch
						mem_addr_s = 1'b0;
						mem_r = 1'b1;
					end
				 end
			  end
		DWB: begin
				mem_write_back = 1'b1;
				mem_w = 1'b1;
			  end					
		DFETCH: begin
					mem_addr_s = 1'b0;
					mem_r = 1'b1;
				 end
		DSTORE: if (d_op[1]) begin//write
					addr_s = 1'b0;
					v_wdata = 1'b1;
					v_w = 1'b1;
					d_wdata = 1'b1;
					d_w = 1'b1;
					t_in = 1'b0;
					t_ds = 1'b0;
					t_w = 1'b1;
					da_ds = 1'b1;
					da_w = 1'b1;
					data_mem = 1'b1;
					cache_ready_d = 1'b1;
				 end
				 else begin//read
					addr_s = 1'b0;
					v_wdata = 1'b1;
					v_w = 1'b1;
					d_wdata = 1'b0;
					d_w = 1'b1;
					t_in = 1'b0;
					t_ds = 1'b0;
					t_w = 1'b1;
					da_ds = 1'b0;
					da_w = 1'b1;
					data_mem = 1'b1;
					cache_ready_d = 1'b1;
				end
	endcase
end
endmodule
