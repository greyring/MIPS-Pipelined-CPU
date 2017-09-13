`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:36 09/08/2017 
// Design Name: 
// Module Name:    vga_cursor 
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
module vga_cursor(
	input clk,//high frequency for update register
	input rst,
	input we,
	input [31:0]conf,
	input [31:0]data_in,// [15:3]text mode下第几个方块位置 [28:17]光标颜色 [1:0]11 方块 10 竖线 01 下横线 00 disable
	output [31:0]status,
	
	input [9:0]vga_column,
	input [8:0]vga_row,
	output reg [11:0]color_out
	
    );

reg [31:0]stat = 32'b0;
always @(posedge clk) begin
	if (rst) 
		stat <= 0;
	else if (we)
		stat <= data_in;
	else
		stat <= stat;
end
assign status = stat;

reg [12:0]addr;
always @* begin
	if (conf[1:0] == 2'b00) begin//8*8
		addr = vga_row[8:3] * 80 + vga_column[9:3];
		if (addr == stat[15:3]) begin
			if (stat[1:0] == 2'b11)//方块
				color_out = stat[28:17];
			else if (stat[1:0] == 2'b10)//竖线
				color_out = (vga_column[2:0] == 3'b111)? stat[28:17]:12'b0;
			else if (stat[1:0] == 2'b01)//下横线
				color_out = (vga_row[2:0] == 3'b111)? stat[28:17]:12'b0;
			else
				color_out = 12'b0;//光标模式决定不显示
		end
		else color_out = 12'b0;//不在对应字符位置
	end
	else if (conf[1:0] == 2'b10) begin//8*16
		addr = vga_row[8:4] * 80 + vga_column[9:3];
		if (addr == stat[15:3]) begin
			if (stat[1:0] == 2'b11)//方块
				color_out = stat[28:17];
			else if (stat[1:0] == 2'b10)//竖线
				color_out = (vga_column[2:0] == 3'b111)? stat[28:17]:12'b0;
			else if (stat[1:0] == 2'b01)//下横线
				color_out = (vga_row[3:0] == 4'b1111)? stat[28:17]:12'b0;
			else
				color_out = 12'b0;//光标模式决定不显示
		end
		else color_out = 12'b0;//不在对应字符位置
	end
	else begin
		addr = 13'b0;
		color_out = 12'b0;
	end
end

endmodule
