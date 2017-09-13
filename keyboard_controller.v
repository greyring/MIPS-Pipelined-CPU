`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:10 09/07/2017 
// Design Name: 
// Module Name:    keyboard_buffer 
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
module keyboard_controller(//reset ��clk_read��������Ϊ׼
	input clk,
	input clk_read,
	input rst,
	input ps2_clk,
	input ps2_data,
	input read,
	output ready,
	output full,
	output [7:0]key_out
    );

reg [1:0]tmp = 2'b0;
always @(posedge clk)
	if (rst)
		tmp <= 2'b0;
	else
		tmp <= {tmp[0], ps2_clk};
		
reg [7:0]queue[31:0];
reg [5:0]h = 6'b0;
reg [5:0]t = 6'b0;

reg [3:0]counter = 4'b0;
reg [9:0]tmp_key = 10'b0;
always @(posedge clk) begin
	if (rst) begin
		counter <= 0;
		h<=0;
	end
	else if (tmp == 2'b10) begin//�½���
		if (counter == 10) begin//һ���ַ�����
			if (ps2_data & ^(tmp_key[9:1]) & (h+6'b1!=t) & (tmp_key[0] == 0)) begin
				 queue[h]<= tmp_key[8:1];
				 h <= h+6'b1;
			end
			counter <= 0;
		end
		else begin
			tmp_key[counter] <= ps2_data;//��ȡ1λ
			counter <= counter+4'b1;
		end
	end
	else begin//not�½���
		counter <= counter;
		h <= h;
	end
end

always @(posedge clk_read) 
	if (rst)
		t<= 0;
	else if (read & ready)
		t <= t+3'b1;
	else
		t<=t;

assign ready = (h != t);
assign full = (h+6'b1 == t);//һ��Ҫ��6'b1��������1
assign key_out = queue[t];

endmodule
