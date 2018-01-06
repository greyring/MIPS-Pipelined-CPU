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
	input [3:0]we,
	input rd,
	input [31:0]data_in,// [10:0]text mode�µڼ�������λ�� [21:16]�����ɫ [25:24]11 ���� 10 ���� 01 �º��� 00 disable
	
	input [9:0]vga_column,
	input [8:0]vga_row,
	output [31:0]data_out,
	output [11:0]color_out,
	output cursor_on
    );

reg [31:0]stat = 0;
always @(posedge clk) begin
	if (rst) 
		stat <= 0;
   else begin
	   stat <= stat;
		if (we[3])
			stat[31:24] <= data_in[31:24];
		if (we[2])
		   stat[23:16] <= data_in[23:16];
		if (we[1])
		   stat[15:8] <= data_in[15:8];
		if (we[0])
		   stat[7:0] <= data_in[7:0];
	end
end
assign data_out = rd ? stat : 32'b0;

wire [10:0]addr;
assign addr = vga_row[8:4] * 40 + vga_column[9:4];
reg font = 0;
always @* begin
	if (addr == stat[10:0]) begin
		if (stat[25:24] == 2'b11)//����
			font = 1'b1;
		else if (stat[25:24] == 2'b10)//����
			font = vga_column[3:0] == 4'h0;
		else if (stat[25:24] == 2'b01)//�º���
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
assign cursor_on = addr == stat[10:0];

endmodule
