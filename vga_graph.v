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
	input [3:0]we,
	input rd,
	input [31:0]addr,//the position of pixel
	input [31:0]data,
	input [9:0]vga_column,
	input [8:0]vga_row,
	output [11:0]color_out,
	output [31:0]data_out
    );
//16 bit a pixel
wire [18:0]temp_addr;
assign temp_addr = vga_row * 640 + vga_column;
wire [17:0]addr_ram;
wire [15:0]color_out0, color_out1;
assign addr_ram = ((|we) | rd) ? addr[19:2] : temp_addr[18:1];

graph_vga_ram Graph_vga_ram0(
  .clka(clk), // input clka
  .wea(we[1:0]), // input [1 : 0] wea
  .addra(addr_ram), // input [17 : 0] addra
  .dina(data[15:0]), // input [15 : 0] dina
  .douta(color_out0) // output [15 : 0] douta
);

graph_vga_ram Graph_vga_ram1(
  .clka(clk), // input clka
  .wea(we[3:2]), // input [1 : 0] wea
  .addra(addr_ram), // input [17 : 0] addra
  .dina(data[31:16]), // input [15 : 0] dina
  .douta(color_out1) // output [15 : 0] douta
);

assign color_out = temp_addr[0] ? color_out1[11:0]: color_out0[11:0];
assign data_out = rd ? {color_out1, color_out0} : 32'b0;
endmodule
