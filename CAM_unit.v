`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:11 11/22/2017 
// Design Name: 
// Module Name:    CAM_unit 
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
module CAM_unit(
   input clk,
	input rst,
	input we,
	input [DATA_SIZE-1:0]wdata,
	input [DATA_SIZE-1:0]rdata,
	output hit
    );
parameter DATA_SIZE = 19;
reg [DATA_SIZE-1:0]temp = 0;
always @(posedge clk) begin
	if(rst)
		temp <= 0;
	else if (we)
		temp <= wdata;
	else
		temp <= temp;
end
assign hit = rdata == temp;

endmodule
