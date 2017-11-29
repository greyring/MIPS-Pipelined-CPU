`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:16 09/25/2017 
// Design Name: 
// Module Name:    Compare 
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
module Compare(
	input clk,
	input rst,
	input [31:0]count,
	input we,
	input [31:0]D,
	output [31:0]Q,
	output timer_int
    );

reg [31:0]compare = 32'hffffffff;//防止一上电就中断
reg int_ = 1'b0;
always @(posedge clk) begin
	if (rst) begin
		compare <= 32'hffffffff;
		int_ <= 1'b0;
	end
	else if (we) begin//如果写入，中断清除
		compare <= D;
		int_ <= 1'b0;
	end
	else begin
		compare <= compare;
		if (count == compare) //如果相等，置1，否则保持不变
			int_ <= 1'b1;
		else
			int_ <= int_;
	end
end
assign Q = compare;
assign timer_int = int_;

endmodule
