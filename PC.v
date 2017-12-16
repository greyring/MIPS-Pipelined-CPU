`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:14 04/11/2017 
// Design Name: 
// Module Name:    PC 
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
module REG32(input clk,
			 input rst,
			 input CE,
			 input [31:0]D,
			 output [31:0]Q
    );
//reg [31:0] pc = 32'h00000000;
reg [31:0] pc = 32'hbfc00000;//MIPS…œµÁµÿ÷∑

always @(posedge clk) begin
//	if (rst) pc<=32'h00000000;
  if (rst) pc<=32'hbfc00000;
  else if (CE) pc<=D;
  else pc<=pc;
end

assign Q = pc;

endmodule
