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
	//output reg id_ra,//register A��ѡ��
	output reg id_beq,
	output reg id_bne,
	output reg id_j,
	output reg id_jr,
	output reg [3:0]id_exe_aluop,
	output reg id_exe_sign,
	output reg id_exe_srcb,//�Ĵ�������������
	output reg id_exe_lui,
	output reg id_exe_jal,
	
	output reg id_mem_we,
	output reg id_mem_rd,
	output reg [2:0]id_mem_mem_reg,
	output reg [4:0]id_wb_dreg,//Ŀ��Ĵ���
	output reg [4:0]id_rega_addr,//exe_a,δʹ��ʱ��Ϊ0��exeĬ������Ϊand������0���ᱻforward��stall
	output reg [4:0]id_regb_addr,//exe_b,δʹ��ʱ��Ϊ0��exeĬ������Ϊand������0���ᱻforward��stall
	output reg id_wb_we,
	output reg id_syscall,
	output reg id_unknown,//δָ֪��
	output reg id_exe_alu_sign,//��ʾ���޷��Ż����з��ţ����������ж�overflow
	output reg id_eret,
	output reg id_mem_CP0_we,
	output reg [4:0]id_mem_CP0_dreg
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
	//id_ra = 1'b0;
	id_exe_aluop = 4'b0000;
	id_exe_sign = 1'b0;
	id_exe_srcb = 1'b0;
	id_exe_lui = 1'b0;
	id_exe_jal = 1'b0;
	id_mem_we = 1'b0;
	id_mem_rd = 1'b0;
	id_mem_mem_reg = 3'b0;
	id_wb_dreg = 5'b0;
	id_rega_addr=5'b0;
	id_regb_addr=5'b0;
	id_wb_we = 1'b0;
	id_syscall = 1'b0;
	id_unknown = 1'b0;
	id_exe_alu_sign = 1'b0;
	id_eret = 1'b0;
	id_mem_CP0_we = 1'b0;
	id_mem_CP0_dreg = 5'b0;
	if (inst == 32'b0) begin//nop
		id_unknown = 1'b0;
	end
	else if (op == 6'b0) begin//R-type		
		case (fun)
			6'h20: begin id_exe_aluop = 4'b0010;//add
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_exe_alu_sign = 1'b1;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h21: begin id_exe_aluop = 4'b0010;//addu
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h22: begin id_exe_aluop = 4'b0110;//sub
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_exe_alu_sign = 1'b1;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h23: begin id_exe_aluop = 4'b0110;//subu
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h2A: begin id_exe_aluop = 4'b0111;//slt with sign
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h24: begin id_exe_aluop = 4'b0000;//and
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h25: begin id_exe_aluop = 4'b0001;//or
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h26: begin id_exe_aluop = 4'b0011;//xor
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h27: begin id_exe_aluop = 4'b0100;//nor
						id_wb_we = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rs;
						id_regb_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h02: begin id_exe_aluop = 4'b0101;//srl
						id_wb_we = 1'b1;
						id_exe_srcb = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h00: begin id_exe_aluop = 4'b1000;//sll
						id_wb_we = 1'b1;
						id_exe_srcb = 1'b1;
						id_wb_dreg = rd;
						id_rega_addr = rt;
						id_mem_mem_reg = 3'b001;//alu result 
					 end
			6'h08: begin//jr
						id_jr = 1'b1;
						id_rega_addr = rs;
					 end
			6'h09: begin//jalr
						id_wb_we = 1'b1; id_exe_jal = 1'b1;
						id_jr = 1'b1;
						id_wb_dreg = rd;
						id_mem_mem_reg = 3'b001;//alu result 
						id_rega_addr = rs;
					 end
			6'h0c: begin//syscall
						id_syscall = 1'b1;
					 end
			6'h10: begin//mfhi
						id_mem_mem_reg = 3'b011;
						id_wb_dreg = rd;
						id_wb_we = 1'b1;
					 end
			6'h12: begin//mflo
						id_mem_mem_reg = 3'b011;
						id_wb_dreg = rd;
						id_wb_we = 1'b1;
					 end
			6'h18: begin//mult
						id_rega_addr = rs;
						id_regb_addr = rt;
					 end
			6'h19: begin//multu
						id_rega_addr = rs;
						id_regb_addr = rt;
					 end
			6'h11: begin//mthi
						id_rega_addr = rs;
					 end
			6'h13: begin//mtlo
						id_rega_addr = rs;
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
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
		id_mem_rd = 1'b1;//read for reading keyboard
	end
	
	else if (op == 6'h2B) begin//sw
		id_exe_aluop = 4'b0010;//add
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_we = 1'b1;//write
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else if (op == 6'h08) begin//addi
		id_exe_aluop = 4'b0010;//add
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
		id_exe_alu_sign = 1'b1;
	end
	else if (op == 6'h09) begin//addiu, Imme sign extended, no overflow
		id_exe_aluop = 4'b0010;//add
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0c) begin//andi
		id_exe_aluop = 4'b0000;//and
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0d) begin//ori
		id_exe_aluop = 4'b0001;//or
		id_exe_sign = 1'b0;//unsign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0e) begin//xori
		id_exe_aluop = 4'b0011;//xor
		id_exe_sign = 1'b0;//unsign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0a) begin//slti
		id_exe_aluop = 4'b0111;//slt
		id_exe_sign = 1'b1;//sign
		id_exe_srcb = 1'b1;//imme
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_rega_addr = rs;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h0f) begin//lui
		id_exe_sign = 1'b0;//unsign
		id_exe_srcb = 1'b1;//imme
		id_exe_lui = 1'b1;//lui
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = rt;
		id_wb_we = 1'b1;//write
	end
	else if (op == 6'h04) begin//beq
		id_beq = 1'b1;//beq
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else if (op == 6'h05) begin//bne
		id_bne = 1'b1;//bne
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else if (op == 6'h02) begin//j
		id_j = 1'b1;//j
	end
	else if (op == 6'h03) begin//jal
		id_j = 1'b1;//j
		id_exe_jal = 1'b1;//jal
		id_mem_mem_reg = 3'b001;//alu result
		id_wb_dreg = 5'b11111;//ra
		id_wb_we = 1'b1;//write
	end
	else if (inst == 32'b01000010000000000000000000011000) begin//eret
		id_eret = 1'b1;
	end
	else if (op == 6'b010000 && rs == 5'b00000 && inst[10:3] == 8'b0) begin//mfc0
		id_mem_CP0_dreg = rd;
		id_mem_mem_reg = 3'b010;//mfc0
		id_wb_dreg = rt;
		id_wb_we = 1'b1;
	end
	else if (op == 6'b010000 && rs == 5'b00100 && inst[10:3] == 8'b0) begin//mtc0
		id_mem_CP0_we = 1'b1;
		id_mem_CP0_dreg = rd;
	end
	else if (op == 6'b011100 && shift == 5'b0 && fun == 6'b000010) begin//mul
		id_mem_mem_reg = 3'b011;
		id_wb_dreg = rd;
		id_rega_addr = rs;
		id_regb_addr = rt;
		id_wb_we = 1'b1;
	end
	else if (op == 6'b011100 && rd == 5'b0 && shift == 5'b0 && fun == 6'b000000)begin//madd
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else if (op == 6'b011100 && rd == 5'b0 && shift == 5'b0 && fun == 6'b000001)begin//maddu
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else if (op == 6'b011100 && rd == 5'b0 && shift == 5'b0 && fun == 6'b000100)begin//msub
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else if (op == 6'b011100 && rd == 5'b0 && shift == 5'b0 && fun == 6'b000101)begin//msubu
		id_rega_addr = rs;
		id_regb_addr = rt;
	end
	else begin
		id_unknown = 1'b1;
	end
end

endmodule
