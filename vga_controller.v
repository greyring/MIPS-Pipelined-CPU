`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:48 09/08/2017 
// Design Name: 
// Module Name:    vga_controller 
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
module vga_controller(
	input clk,
	input rst,
	input clk_vga,
	input clk_cursor,//Div[25]
	
	input [3:0]we_text,
	input [3:0]we_graph,
	input [3:0]we_cursor,
	input [3:0]we_reg,
	input rd_text,
	input rd_graph,
	input rd_cursor,
	input rd_reg,
	
	input [31:0]text_addr,
	input [31:0]text_wdata,
	output[31:0]text_rdata,
	
	input [31:0]graph_addr,
	input [31:0]graph_wdata,
	output[31:0]graph_rdata,
	
	input [31:0]cursor_wdata,
	output[31:0]cursor_rdata,
	
	input [31:0]reg_wdata,
	output[31:0]reg_rdata,
	
	output [3:0]r,
	output [3:0]g,
	output [3:0]b,
	output hsync,
	output vsync,
	
	output busy

    );

wire [9:0]vga_column;
wire [8:0]vga_row;

parameter GRAPH = 2'b00;
parameter TEXT = 2'b01;
parameter MIXED = 2'b11;
reg [31:0]status = 32'b0;//[31:16]graph addre select 64K [1:0]00 graph 01 text
always @(posedge clk) begin
   if (rst)
	   status <= 0;
	else begin
	   status <= status;
		if (we_reg[3])
			status[31:24] <= reg_wdata[31:24];
		if (we_reg[2])
			status[23:16] <= reg_wdata[23:16];
		if (we_reg[1])
			status[15:8] <= reg_wdata[15:8];
		if (we_reg[0])
			status[7:0] <= reg_wdata[7:0];
	end
end
assign reg_rdata = status;

wire [11:0]text_color_out;
vga_text Vga_text(
    .clk(clk), 
    .we(we_text), 
	 .rd(rd_text),
    .addr(text_addr), 
    .data(text_wdata), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
	 .data_out(text_rdata),
    .color_out(text_color_out)
    );

wire [11:0]cursor_color_out;
wire cursor_on;
vga_cursor Vga_cursor(
    .clk(clk), 
	 .clk_cursor(clk_cursor),
    .rst(rst), 
    .we(we_cursor), 
    .rd(rd_cursor), 
    .data_in(cursor_wdata), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .data_out(cursor_rdata), 
    .color_out(cursor_color_out), 
    .cursor_on(cursor_on)
    );

wire [11:0]graph_color_out;
wire [31:0]graph_data_out;
vga_graph Vga_graph(
    .clk(clk), 
    .we(we_graph), 
    .rd(rd_graph), 
    .addr({status[31:16], graph_addr[15:0]}), 
    .data(graph_wdata), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .color_out(graph_color_out), 
    .data_out(graph_rdata)
    );

reg [11:0]color_out;
always @* begin
	if (status[1:0] == TEXT) begin//text
		if (cursor_on)
			color_out = cursor_color_out;
		else
			color_out = text_color_out;
	end
	else if (status[1:0] == GRAPH) begin//graph
		color_out = graph_color_out;
	end
	else if (status[1:0] == MIXED) begin//mix
	   if (|text_color_out)
		  color_out = text_color_out;
		else
		  color_out = graph_color_out;
	end
	else
		color_out = 12'b0;
end

vga_port Vga_port(
    .clk(clk_vga), 
    .rst(rst), 
    .data(color_out), 
    .hsync(hsync), 
    .vsync(vsync), 
    .r(r), 
    .g(g), 
    .b(b), 
    .row(vga_row), 
    .column(vga_column), 
    .read(busy)
    );
endmodule
