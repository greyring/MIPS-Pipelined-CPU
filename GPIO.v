`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:47 09/04/2017 
// Design Name: 
// Module Name:    GPIO 
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
module GPIO(
	input clk,
	input rst,
	input EN,
	input Start,
	input [31:0]P_Data,
	output [1:0]counter_set,
	output [15:0]LED_out,
	output ledclk,
	output ledsout,
	output LEDEN
    );

reg [17:0]leds = 32'b0;
always @(posedge clk) begin
	if (rst)
		leds <= 32'b0;
	else if (EN)
		leds <= P_Data[17:0];
	else
		leds <= leds;
end

assign counter_set = leds[1:0];
assign LED_out = leds[17:2];
led_parallel2serial P2S(
    .clk(clk), 
    .rst(rst), 
    .data(LED_out), 
    .led_en(1'b1), 
    .busy(), 
    .finish(), 
    .led_clk(ledclk), 
    .led_pen(LEDEN), 
    .led_dat(ledsout)
    );



endmodule
