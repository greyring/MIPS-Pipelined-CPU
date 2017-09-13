`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:49 09/04/2017 
// Design Name: 
// Module Name:    timer 
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
module timer(
	input clk,//100mhz
	input rst,
	input we,
	input [31:0]data_in,
	output INT
    );

reg [31:0]status = 32'b0;
always @(posedge clk) begin
	if (rst)
		status <= 32'b0;
	else if (we)
		status <= status;
	else
		status <= status;
end

reg[31:0] counter = 32'b0;
always @(posedge clk) begin
	if (rst)
		counter <= 32'b0;
	else if (counter < 32'd100000)//1ms
		counter <= counter + 32'b1;
	else
		counter <= 32'b0;
end

reg [31:0] timer_ = 32'b0;
always @(posedge clk) begin
	if (rst)
		timer_ <= 32'b0;
	else if (counter == 32'd100000)
		timer_ <= timer_ + 32'b1;
end

assign INT = timer_ >= status;

endmodule
