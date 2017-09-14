`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:41 09/07/2017 
// Design Name: 
// Module Name:    graph_vga 
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
module vga_graph(
	input clk,
	input rst,
	input we,
	input [31:0]conf,//[1:0]10 graph 1*1, 11 graph 32*32
	input [18:0]addr,//第几个点
	input [11:0]data,
	input [9:0]vga_column,
	input [8:0]vga_row,
	output [11:0]color_out
    );
reg [18:0]addr_ram;
always @* begin
	if (conf[1:0] == 2'b10)
		addr_ram = we? addr: vga_row * 640 + vga_column;//row * 640 + column
	else if (conf[1:0] == 2'b11)
		addr_ram = we? addr: vga_row[8:5] * 20 + vga_column[9:5];//row/32 * 20 + column/32
	else
		addr_ram = 19'b0;
end

graph_vga_ram Graph_vga_ram(
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr_ram), // input [18 : 0] addra
  .dina(data), // input [11 : 0] dina
  .douta(color_out) // output [11 : 0] douta
);
endmodule
