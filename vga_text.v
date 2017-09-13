`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:46 09/07/2017 
// Design Name: 
// Module Name:    text_vga 
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
module vga_text(
	input clk,
	input rst,
	input we,
	input [31:0]conf,
	input [12:0]addr,//µÚ¼¸¸ö×Ö
	input [31:0]data,//12(front color) 12(back color) 8(ascii)
	input [9:0]vga_column,
	input [8:0]vga_row,
	output reg [11:0]color_out
    );

reg [12:0]addr_ram;
always @* begin
	if (we) addr_ram = addr;
	else if (conf[1:0] == 2'b00)//8*8
		addr_ram = {1'b0, vga_row[8:3], 6'b0} + {3'b0, vga_row[8:3], 4'b0} + vga_column[9:3];
	else if (conf[1:0] == 2'b10)//8*16
		addr_ram = {2'b0, vga_row[8:4], 6'b0} + {4'b0, vga_row[8:4], 4'b0} + vga_column[9:3];
	else
		addr_ram = addr_ram;
end

wire [31:0]data_out;
text_vga_ram Text_vga_ram(
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr_ram), // input [12 : 0] addra
  .dina(data), // input [31 : 0] dina
  .douta(data_out) // output [31 : 0] douta
);

wire [12:0]font8_8_addr;
assign font8_8_addr = data_out[7:0]*64 + vga_row[2:0]*8 + vga_column[2:0];
wire s_00;
font_table Front_table(
    .a(font8_8_addr), 
    .d(s_00)
    );

wire [10:0]font8_16_addr;
assign font8_16_addr = data_out[7:0] * 16 + vga_row[3:0];
wire [7:0]font8_16_data;
font8_16 Font8_16(
  .clka(clk), 
  .addra(font8_16_addr), // input [10 : 0] addra
  .douta(font8_16_data) // output [7 : 0] douta
);
wire s_10;
assign s_10 = font8_16_data[vga_column[2:0]];

always @* begin
	if (conf[1:0] == 2'b00)//8*8
		color_out = s_00? data_out[31:20]:data_out[19:8];
	else if (conf[1:0] == 2'b10)//8*16
		color_out = s_10? data_out[31:20]: data_out[19:8];
	else
		color_out = 12'b0;
end

endmodule
