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
	input clk_cursor,
	input rst,
	input we,
	input rd,
	input [31:0]data_in,// [12:2]text mode�µڼ�������λ�� [21:16]�����ɫ [1:0]11 ���� 10 ���� 01 �º��� 00 disable
	
	input [9:0]vga_column,
	input [8:0]vga_row,
	output [31:0]data_out,
	output [11:0]color_out,
	output cursor_on
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
assign data_out = rd ? stat : 32'b0;

wire [10:0]addr;
assign addr = vga_row[8:4] * 40 + vga_column[9:4];
reg font;
always @* begin
	if (addr == stat[12:2]) begin
		if (stat[1:0] == 2'b11)//����
			font = 1'b1;
		else if (stat[1:0] == 2'b10)//����
			font = vga_column[3:0] == 4'hf;
		else if (stat[1:0] == 2'b01)//�º���
			font = vga_row[3:0] == 4'hf;
		else
			font = 1'b0;//���ģʽ��������ʾ
	end
	else 
		font = 1'b0;//���ڶ�Ӧ�ַ�λ��
end
assign color_out = (clk_cursor & font) ? 
						{stat[21:20], 2'b0, stat[19:18], 2'b0, stat[17:16],2'b0} 
						: 12'b0;
assign cursor_on = addr == stat[12:2];

endmodule
