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
	input clk_vga,
	input clk_cursor,//Div[25]
	input rst,
	input we_text,
	input we_graph,
	input we_cursor,
	input we_reg,//4个we只有一个会为1
	input [12:0]text_addr,
	input [18:0]graph_addr,
	input [31:0]data_in,
	
	output [3:0]r,
	output [3:0]g,
	output [3:0]b,
	output hsync,
	output vsync,
	output [31:0]vga_status,
	output [31:0]cursor_status
    );

wire [9:0]vga_column;
wire [8:0]vga_row;
	 
reg [31:0]conf = 32'b0;//[1:0]1 graph 0 text, 2'b10 8*16text[2]busy
assign vga_status = {conf[31:3], busy, conf[1:0]};
always @(posedge clk) begin
	if (rst)
		conf <= 32'b0;
	else if (we_reg)
		conf <= data_in;
	else
		conf <= conf;//为什么不能写成{conf[31:2], busy, conf[0]}
end

wire [11:0]color_text;
vga_text Text_vga(
    .clk(clk), 
    .rst(rst), 
	 .conf(conf),
    .we(we_text), 
    .addr(text_addr), 
    .data(data_in), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .color_out(color_text)
    );

wire [11:0]color_cursor_;
vga_cursor Cursor_vga(
    .clk(clk), 
    .rst(rst), 
	 .conf(conf),
    .we(we_cursor), 
    .data_in(data_in), 
    .status(cursor_status), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .color_out(color_cursor_)
    );
wire [11:0]color_cursor;
assign color_cursor = clk_cursor ? color_cursor_ : 12'b0;
//按频率闪烁

wire [11:0]color_graph;
vga_graph Graph_vga(
    .clk(clk), 
    .rst(rst), 
    .we(we_graph), 
    .addr(graph_addr), 
    .data(data_in[11:0]), 
    .vga_column(vga_column), 
    .vga_row(vga_row), 
    .color_out(color_graph)
    );

wire [11:0]color_out;
assign color_out = (conf[1:0] == 2'b01)? color_graph : ((|color_cursor)? color_cursor : color_text);
// if conf[0] graph
// else cursor on the text
wire busy;
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
