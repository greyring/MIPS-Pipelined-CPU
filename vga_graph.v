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
	input we,
	input rd,
	input [31:0]addr,//the position of pixel
	input [31:0]data,
	input [9:0]vga_column,
	input [8:0]vga_row,
	output [11:0]color_out,
	output [31:0]data_out
    );

wire [18:0]addr_ram;
assign addr_ram = (we | rd) ? addr[20:2] : (vga_row * 640 + vga_column);

graph_vga_ram Graph_vga_ram(
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr_ram), // input [18 : 0] addra
  .dina(data[11:0]), // input [11 : 0] dina
  .douta(color_out) // output [11 : 0] douta
);
assign data_out = rd ? {20'b0, color_out} : 32'b0;
endmodule
