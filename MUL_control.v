`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:55:50 09/13/2017 
// Design Name: 
// Module Name:    MUL_control 
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
module MUL_control(
	input [31:0]id_inst,
	output reg MUL_ID_sign,
	output reg MUL_ID_we,
	output reg MUL_ID_en_c,
	output reg MUL_ID_add_sub,
	output reg [1:0]MUL_ID_HiLo,
	output reg MUL_ID_mul
    );
wire [5:0]op;
wire [4:0]rs;
wire [4:0]rt;
wire [4:0]rd;
wire [4:0]sha;
wire [5:0]func;
assign {op,rs,rt,rd,sha,func} = id_inst;

always @* begin
	MUL_ID_sign = 1'b0;
	MUL_ID_we = 1'b0;
	MUL_ID_en_c = 1'b0;
	MUL_ID_add_sub = 1'b0;
	MUL_ID_HiLo = 2'b0;
	MUL_ID_mul = 1'b0;
	if(op == 6'b0 && rs == 5'b0 && rt == 5'b0 && sha == 5'b0 && func == 6'b010000)begin//mfhi
		MUL_ID_HiLo = 2'b10;
	end
	else if (op == 6'b0 && rs == 5'b0 && rt == 5'b0 && sha == 5'b0 && func == 6'b010010)begin//mflo
		MUL_ID_HiLo = 2'b01;
	end
	else if (op == 6'b011100 && sha == 5'b0 && func == 6'b000010) begin//mul
		MUL_ID_sign = 1'b1;
		MUL_ID_we = 1'b1;
		MUL_ID_HiLo = 2'b11;//既控制写入又控制读出
		MUL_ID_mul = 1'b1;
	end
	else if (op == 6'b0 && rd == 5'b0 && sha == 5'b0 && func == 6'b011000)begin//mult
		MUL_ID_sign = 1'b1;
		MUL_ID_we = 1'b1;
		MUL_ID_HiLo = 2'b11;
	end
	else if (op == 6'b0 && rd == 5'b0 && sha == 5'b0 && func == 6'b011001)begin//multu
		MUL_ID_we = 1'b1;
		MUL_ID_HiLo = 2'b11;
	end
	else if (op == 6'b0 && rt == 5'b0 && rd == 5'b0 && sha == 5'b0 && func == 6'b010001)begin//mthi
		MUL_ID_we = 1'b1;
		MUL_ID_HiLo = 2'b10;
	end
	else if (op == 6'b0 && rt == 5'b0 && rd == 5'b0 && sha == 5'b0 && func == 6'b010011)begin//mtlo
		MUL_ID_we = 1'b1;
		MUL_ID_HiLo = 2'b01;
	end
	else if (op == 6'b011100 && rd == 5'b0 && sha == 5'b0 && func == 6'b000000)begin//madd
		MUL_ID_sign = 1'b1;
		MUL_ID_we = 1'b1;
		MUL_ID_en_c = 1'b1;
		MUL_ID_HiLo = 2'b11;
	end
	else if (op == 6'b011100 && rd == 5'b0 && sha == 5'b0 && func == 6'b000001)begin//maddu
		MUL_ID_we = 1'b1;
		MUL_ID_en_c = 1'b1;
		MUL_ID_HiLo = 2'b11;
	end
	else if (op == 6'b011100 && rd == 5'b0 && sha == 5'b0 && func == 6'b000100)begin//msub
		MUL_ID_sign = 1'b1;
		MUL_ID_we = 1'b1;
		MUL_ID_en_c = 1'b1;
		MUL_ID_add_sub = 1'b1;
		MUL_ID_HiLo = 2'b11;
	end
	else if (op == 6'b011100 && rd == 5'b0 && sha == 5'b0 && func == 6'b000101)begin//msubu
		MUL_ID_we = 1'b1;
		MUL_ID_en_c = 1'b1;
		MUL_ID_add_sub = 1'b1;
		MUL_ID_HiLo = 2'b11;
	end
end


endmodule
