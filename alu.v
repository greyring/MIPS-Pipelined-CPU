`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:25 03/28/2017 
// Design Name: 
// Module Name:    alu 
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
module alu(input [31:0]A,
				input [31:0]B,
				input[3:0]ALU_Ctr,
				input alu_sign,//控制overflow
				output reg [31:0]res,
				output zero,
				output overflow);
parameter one = 32'h00000001,zero_0=32'h00000000;
wire[31:0] res_and,res_or,res_add_sub,res_nor,res_slt,res_srl,res_xor;

wire overflow_;
adder32_Sklansky adder32(
    .A_in(A), 
    .B_in(B), 
    .add_sub(ALU_Ctr == 4'b0110),//sub 
    .res(res_add_sub), 
    .overflow(overflow_)
    );
assign overflow = alu_sign?overflow_:1'b0;
//assign overflow = 1'b0;//暂时不做overflow

	assign res_and = A&B;
	assign res_or = A|B;
	assign res_slt = ($signed(A)<$signed(B))?one:zero_0;
	assign res_srl = A>>B[10:6];
	assign res_xor = A^B;
	assign res_sll = A<<B[10:6];
	always@*
		case(ALU_Ctr)
			4'b0000:begin
					 res = res_and;
					 end
			4'b0001:begin
					 res = res_or;
					 end
			4'b0010:begin//add
					 res = res_add_sub;
					 end
			4'b0110:begin//sub
					 res = res_add_sub;
					 end
			4'b0100:begin
					 res = ~res_or;
					 end
			4'b0111:begin
					 res = res_slt;
					 end
			4'b0101:begin
					 res = res_srl;
					 end
			4'b0011:begin
					 res = res_xor;
					 end
			4'b1000:begin
					 res = res_sll;
					 end
			default:res = 32'hx;
		endcase
	assign zero = (res==0)?1'b1:1'b0;
endmodule
