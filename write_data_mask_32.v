`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:45 10/20/2017 
// Design Name: 
// Module Name:    write_data_mask_32 
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
module write_data_mask_32(
	input [3:0]mask,
	input [31:0]w_data,
	input [31:0]old_data,
	output reg [31:0]new_data
    );
	wire [7:0]byte_;
	wire [15:0]hword_;
	assign byte_ = w_data[7:0];
	assign hword_ = w_data[15:0];
	
	reg [15:0]data_16_h, data_16_l;
	always @* begin
		case (mask[3:2])
			2'b11: data_16_h = hword_;
			2'b10: data_16_h = {byte_, old_data[23:16]};
			2'b01: data_16_h = {old_data[31:24], byte_};
			2'b00: data_16_h = old_data[31:16];
		endcase
		case (mask[1:0])
			2'b11: data_16_l = hword_;
			2'b10: data_16_l = {byte_, old_data[7:0]};
			2'b01: data_16_l = {old_data[15:8], byte_};
			2'b00: data_16_l = old_data[15:0];
		endcase
	end
	
	always @* begin
		if (&{mask}) new_data = w_data;
		else new_data = {data_16_h, data_16_l};
	end
endmodule
