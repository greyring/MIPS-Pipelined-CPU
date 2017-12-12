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
	input [DATA_SIZE-1:0]rdata0,
	input [DATA_SIZE-1:0]rdata1,
	input [DATA_SIZE-1:0]rdata2,
	output [DATA_SIZE-1:0]data,
	output hit0,
	output hit1,
	output hit2
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
assign hit0 = rdata0 == temp;
assign hit1 = rdata1 == temp;
assign hit2 = rdata2 == temp;
assign data = temp;

endmodule
