`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:12 10/20/2017 
// Design Name: 
// Module Name:    write_data_mask 
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
module write_data_mask(
   input [1:0]word_s,
	input [3:0]mask,
	input [31:0]w_data,
	input [127:0]old_data,
	output reg [127:0]new_data
    );
	
	wire [31:0]new_data32_3, new_data32_2, new_data32_1, new_data32_0;
	write_data_mask_32 write_data_mask_32_3(
    .mask(mask), 
    .w_data(w_data), 
    .old_data(old_data[127:96]), 
    .new_data(new_data32_3)
    );
	write_data_mask_32 write_data_mask_32_2(
    .mask(mask), 
    .w_data(w_data), 
    .old_data(old_data[95:64]), 
    .new_data(new_data32_2)
    );
	write_data_mask_32 write_data_mask_32_1(
    .mask(mask), 
    .w_data(w_data), 
    .old_data(old_data[63:32]), 
    .new_data(new_data32_1)
    );
	write_data_mask_32 write_data_mask_32_0(
    .mask(mask), 
    .w_data(w_data), 
    .old_data(old_data[31:0]), 
    .new_data(new_data32_0)
    );
	
	always @* begin
		case (word_s)
			2'b11: new_data = {new_data32_3, old_data[95:0]};
			2'b10: new_data = {old_data[127:96], new_data32_2, old_data[63:0]};
			2'b01: new_data = {old_data[127:64], new_data32_1, old_data[31:0]};
			2'b00: new_data = {old_data[127:32], new_data32_0};
		endcase
	end
endmodule
