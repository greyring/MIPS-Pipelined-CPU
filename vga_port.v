`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:56 09/07/2017 
// Design Name: 
// Module Name:    vga_port 
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
module vga_port(
	input clk,//25Mhz
	input rst,
	input [11:0]data,//rgb
	output hsync,
	output vsync,
	output [3:0]r,
	output [3:0]g,
	output [3:0]b,
	output [8:0]row,
	output [9:0]column,
	output read
    );

reg [9:0]row_c = 10'b0;
reg [9:0]column_c = 10'b0;
always @(posedge clk) begin
	if (rst) begin
		row_c <= 0;
		column_c <= 0;
	end
	else begin
		if (column_c < 10'd799)
			column_c <= column_c + 1;
		else begin
			if (row_c < 10'd524)
				row_c <= row_c + 1;
			else
				row_c <= 0;
			column_c <= 0;
		end
	end
end

assign hsync = column_c > 10'd95;
assign vsync = row_c > 10'd1; 
assign row = row_c - 10'd35;
assign column = column_c - 10'd144;
assign read = (column_c > 10'd143) & (column_c <= 10'd783)
					& (row_c > 10'd34) & (row_c <= 10'd514);
assign {r,g,b} = read? data: 12'b0;


endmodule
