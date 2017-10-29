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
	
	input we_text,
	input we_graph,
	input we_cursor,
	input we_reg,
	input rd_text,
	input rd_graph,
	input rd_cursor,
	input rd_reg,//only 1 of 8 will be 1
	
	input [31:0]addr_in,
	input [31:0]data_in,
	output reg [31:0]data_out,
	
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
reg [31:0]status = 32'b0;//[31:16]graph addre select 64K [1:0]00 graph 01 text
always @(posedge clk) begin
	if (we_reg)
		status <= data_in;
	else
		status <= status;
end

wire [11:0]color_text;
wire [31:0]text_data_out;
wire [11:0]text_color_out;
vga_text Vga_text(
    .clk(clk), 
    .we(we_text), 
	 .rd(rd_text),
    .addr(addr_in), 
    .data(data_in), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
	 .data_out(text_data_out),
    .color_out(text_color_out)
    );

wire [11:0]cursor_color_out;
wire [31:0]cursor_data_out;
wire cursor_on;
vga_cursor Vga_cursor(
    .clk(clk), 
	 .clk_cursor(clk_cursor),
    .rst(rst), 
    .we(we_cursor), 
    .rd(rd_cursor), 
    .data_in(data_in), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .data_out(cursor_data_out), 
    .color_out(cursor_color_out), 
    .cursor_on(cursor_on)
    );

wire [11:0]graph_color_out;
wire [31:0]graph_data_out;
vga_graph Vga_graph(
    .clk(clk), 
    .we(we_graph), 
    .rd(rd_graph), 
    .addr({status[31:16], addr_in[15:0]}), 
    .data(data_in), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .color_out(graph_color_out), 
    .data_out(graph_data_out)
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
	else
		color_out = 12'b0;
end

always @* begin
	if (rd_reg)
		data_out = status;
	else if (rd_text)
		data_out = text_data_out;
	else if (rd_graph)
		data_out = graph_data_out;
	else if (rd_cursor)
		data_out = cursor_data_out;
	else
		data_out = 32'b0;
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
