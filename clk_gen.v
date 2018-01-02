`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:14 01/01/2018 
// Design Name: 
// Module Name:    clk_gen 
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
module clk_gen(
	input clk200P,
	input clk200N,
	output clk_100mhz,
	output [31:0]Div,
	output clk_uart
    );
	
wire clk_uart_base;
reg [31:0]Div;
reg [31:0]Div2;
  UNICLK UNIclk
   (
    .CLK_IN1_P(clk200P),
    .CLK_IN1_N(clk200N),
    .CLK_OUT1(clk_100mhz),
    .CLK_OUT2(clk_uart_base), 
    .RESET(1'b0)); 
always @(posedge clk_100mhz) begin
	Div <= Div + 1;
end

always @(posedge clk_uart_base) begin
	Div2 <= Div2 + 1;
end

assign clk_uart = Div2[6];

endmodule
