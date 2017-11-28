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
	input [3:0]we,
	input rd,
	input [31:0]addr,//write location, character
	input [31:0]data,//00 6(front color)00 6(back color) 16(Zcode)
	input [9:0]vga_column,
	input [8:0]vga_row,
	output[31:0]data_out,
	output[11:0]color_out
    );

reg [10:0]addr_ram;
always @* begin
	if ((|we) | rd) addr_ram = addr[12:2];
	else addr_ram = vga_row[8:4] * 40 + vga_column[9:4];
end

wire [31:0]text_data;
text_vga_ram Text_vga_ram(
  .clka(clk), // input clka
  .wea(we), // input [3 : 0] wea
  .addra(addr_ram), // input [10 : 0] addra
  .dina(data), // input [31 : 0] dina
  .douta(text_data) // output [31 : 0] douta
);

wire [11:0]addr_rom;
wire [15:0]font_data;
assign addr_rom = {text_data[7:0],vga_row[3:0]};
text_vga_rom Text_vga_rom(
  .clka(clk), // input clka
  .addra(addr_rom), // input [11 : 0] addra
  .douta(font_data) // output [15 : 0] douta
);

assign color_out = font_data[vga_column[3:0]] ? 
						{text_data[29:28],2'b0,text_data[27:26],2'b0, text_data[25:24],2'b0}://front
						{text_data[21:20],2'b0,text_data[19:18],2'b0, text_data[17:16],2'b0};//back
assign data_out = rd ? text_data : 32'b0;

endmodule
