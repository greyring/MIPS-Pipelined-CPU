`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:28 09/25/2017 
// Design Name: 
// Module Name:    Count 
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
module Count(
	input clk,
	input rst,
	input compare_we,
	//input [31:0]D,
	output [31:0]Q
    );

reg [31:0]count = 32'b1;//防止一上电就中断
always @(posedge clk) begin
	if (rst)
		count <= 32'b1;
	else if (compare_we)//写入compare时计时自动清零
		count <= 32'b0;
	else
		count <= count + 1'b1;
end
assign Q = count;

endmodule
