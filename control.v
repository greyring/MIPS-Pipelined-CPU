`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:09 09/05/2017 
// Design Name: 
// Module Name:    control 
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
module control(
	input [31:0]inst,
	output reg id_ra,//register A的选择
	output reg id_beq,
	output reg id_bne,
	output reg id_j,
	output reg id_jr,
	output reg [3:0]id_exe_aluop,
	output reg id_exe_sign,
	output reg id_exe_srcb,//寄存器还是立即数
	output reg id_exe_lui,
	output reg id_exe_jal,
	
	output reg id_mem_we,
	output reg id_mem_mem_reg,
	output reg [4:0]id_wb_dreg,//目标寄存器
	output reg id_wb_we,
	output reg id_syscall,
	output reg id_unknown,//未知指令
	output reg id_exe_alu_sign,//表示是无符号还是有符号，用来帮助判断overflow
	output reg id_eret,
	output reg id_mem_CP0_we,
	output reg [4:0]id_mem_CP0_dreg,
	output reg id_mem_mfc//mem出来的result选择
    );

wire [5:0]op;
wire [4:0]rs;
wire [4:0]rt;
wire [4:0]rd;
wire [4:0]shift;
wire [5:0]fun;

assign {op, rs, rt, rd, shift, fun} = inst;

always @* begin
	id_beq = 1'b0; id_bne = 1'b0; id_j = 1'b0; id_jr = 1'b0;
	id_ra = 1'b0;
	id_exe_aluop = 4'b0000;
	id_exe_sign = 1'b0;
	id_exe_srcb = 1'b0;
	id_exe_lui = 1'b0;
	id_exe_jal = 1'b0;
	id_mem_we = 1'b0;
	id_mem_mem_reg = 1'b0;
	id_wb_dreg = 5'b0;
	id_wb_we = 1'b0;
	id_syscall = 1'b0;
	id_unknown = 1'b0;
	id_exe_alu_sign = 1'b0;
	id_eret = 1'b0;
	id_mem_CP0_we = 1'b0;
	id_mem_CP0_dreg = 5'b0;
	id_mem_mfc = 1'b0;
	if (inst == 32'b0) begin//nop
		id_unknown = 1'b0;
	end
	else if (op == 6'b0) begin//R-type
		id_mem_mem_reg = 1'b1; 		
		case (fun)
			6'h20: begin id_exe_aluop = 4'b0010;//add
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_exe_alu_sign = 1'b1;
					 end
			6'h21: begin id_exe_aluop = 4'b0010;//addu
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h22: begin id_exe_aluop = 4'b0110;//sub
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_exe_alu_sign = 1'b1;
					 end
			6'h23: begin id_exe_aluop = 4'b0110;//subu
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h2A: begin id_exe_aluop = 4'b0111;//slt with sign
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h24: begin id_exe_aluop = 4'b0000;//and
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h25: begin id_exe_aluop = 4'b0001;//or
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h26: begin id_exe_aluop = 4'b0011;//xor
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h27: begin id_exe_aluop = 4'b0100;//nor
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
					 end
			6'h02: begin id_exe_aluop = 4'b0101;//srl
						id_wb_we = 1'b1;
						{id_ra, id_exe_srcb} = 2'b11;
						id_wb_dreg = rd;
					 end
			6'h00: begin id_exe_aluop = 4'b1000;//sll
						id_wb_we = 1'b1;
						{id_ra, id_exe_srcb} = 2'b11;
						id_wb_dreg = rd;
					 end
			6'h08: begin//jr
						id_jr = 1'b1;
					 end
			6'h09: begin//jalr
						id_wb_we = 1'b1; id_exe_jal = 1'b1;
						id_jr = 1'b1;
						id_wb_dreg = 5'b11111;
					 end
			6'h0c: begin//syscall
						id_syscall = 1'b1;
					 end
			default: begin //unknown
						id_unknown = 1'b1;
					 end
		endcase
	end
	
	else if (op == 6'h23) begin//lw
		id_exe_aluop = 4'b0010;//add
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	
	else if (op == 6'h2B) begin//sw
		id_exe_aluop = 4'b0010;//add
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_we = 1'b1;//write
	end
	else if (op == 6'h08) begin//addi
		id_exe_aluop = 4'b0010;//add
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
		id_exe_alu_sign = 1'b1;
	end
	else if (op == 6'h0c) begin//andi
		id_exe_aluop = 4'b0000;//and
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0d) begin//ori
		id_exe_aluop = 4'b0001;//or
		id_exe_sign = 1'b0;//unsign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0e) begin//xori
		id_exe_aluop = 4'b0011;//xor
		id_exe_sign = 1'b0;//unsign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0a) begin//slti
		id_exe_aluop = 4'b0111;//slt
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0f) begin//lui
		id_exe_sign = 1'b0;//unsign
		id_exe_srcb = 1'b1;//imme
		id_exe_lui = 1'b1;//lui
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h04) begin//beq
		id_beq = 1'b1;//beq
	end
	else if (op == 6'h05) begin//bne
		id_bne = 1'b1;//bne
	end
	else if (op == 6'h02) begin//j
		id_j = 1'b1;//j
	end
	else if (op == 6'h03) begin//jal
		id_j = 1'b1;//j
		id_exe_jal = 1'b1;//jal
		id_mem_mem_reg = 1'b1;//reg
		id_wb_dreg = 5'b11111;//ra
		id_wb_we = 1'b1;//write
	end
	else if (inst == 32'b01000010000000000000000000011000) begin//eret
		id_eret = 1'b1;
	end
	else if (op == 6'b010000 && rs == 5'b00000 && inst[10:3] == 8'b0) begin//mfc0
		id_mem_CP0_dreg = rd;
		id_mem_mfc = 1'b1;
		id_wb_dreg = rt;
		id_wb_we = 1'b1;
	end
	else if (op == 6'b010000 && rs == 5'b00100 && inst[10:3] == 8'b0) begin//mtc0
		id_mem_CP0_we = 1'b1;
		id_mem_CP0_dreg = rd;
	end
	else begin
		id_unknown = 1'b1;
	end
end

endmodule
