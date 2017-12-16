`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:20 12/12/2017 
// Design Name: 
// Module Name:    EntryHi 
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
module EntryHi(
	input clk,
	input rst,
	input we,
	input [31:0]mtcd,
	input [18:0]vpn2,
	input [7:0]asid,
	output[31:0]Q
    );
reg [18:0]VPN2 = 0;
always @(posedge clk) begin
	if (rst) VPN2 <= 0;
	else if (we) VPN2 <= mtcd[31:13];
	else VPN2 <= vpn2;
end

reg [7:0]ASID = 0;
always @(posedge clk) begin
	if (rst) ASID <= 0;
	else if (we) ASID <= mtcd[7:0];
	else ASID <= asid;
end
assign Q = {VPN2, 5'b0, ASID};

endmodule
