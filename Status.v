`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:12 09/12/2017 
// Design Name: 
// Module Name:    Status 
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
module Status(input clk,
			 input rst,
			 input we,
			 //input forward,
			 input [31:0]mtcd,
			 input [31:0]D,
			 output [31:0]Q
    );
reg [31:0] status = 32'b00000000000000001111111100000001;//[15:8] == 1 [0] = 1 [22] = 0 [1] = 0 [2] = 0

/*always @(negedge clk) begin
	if (we)
		status<=mtcd;
	else
		status<=status;
end
*/

always @(posedge clk) begin
	if (rst) status<=32'b00000000000000001111111100000001;
	//else if (forward) status<=D;//forward时信息来自于Status_Data
	else if (we) status<=mtcd;
	else status<=D;
end

assign Q = status;

endmodule
