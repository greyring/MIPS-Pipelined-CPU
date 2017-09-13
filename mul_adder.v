`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:38 09/13/2017 
// Design Name: 
// Module Name:    mul_adder 
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
module mul_adder(
	input [63:0]A,
	input [63:0]B,
	input [63:0]C_,
	input a_s,
	input en_c,
	output [63:0]res
    );
//wallace tree + adder64

wire [63:0]C;
wire add_sub;
assign C = {C_ ^ {64{a_s}}} & {64{en_c}};//en_c == 0 C = 0 else depend on a_s
assign add_sub = en_c ? a_s : 1'b0;//en_c == 0  add_sub = 0 

wire c1_0_1, s1_0_1;
full_adder fa1_0_1 (
.a(add_sub),.b(C[0]),.c(B[0]),.s(s1_0_1),.co(c1_0_1)
);
wire c1_1_1, s1_1_1;
full_adder fa1_1_1 (
.a(C[1]),.b(B[1]),.c(A[1]),.s(s1_1_1),.co(c1_1_1)
);
wire c1_2_1, s1_2_1;
full_adder fa1_2_1 (
.a(C[2]),.b(B[2]),.c(A[2]),.s(s1_2_1),.co(c1_2_1)
);
wire c1_3_1, s1_3_1;
full_adder fa1_3_1 (
.a(C[3]),.b(B[3]),.c(A[3]),.s(s1_3_1),.co(c1_3_1)
);
wire c1_4_1, s1_4_1;
full_adder fa1_4_1 (
.a(C[4]),.b(B[4]),.c(A[4]),.s(s1_4_1),.co(c1_4_1)
);
wire c1_5_1, s1_5_1;
full_adder fa1_5_1 (
.a(C[5]),.b(B[5]),.c(A[5]),.s(s1_5_1),.co(c1_5_1)
);
wire c1_6_1, s1_6_1;
full_adder fa1_6_1 (
.a(C[6]),.b(B[6]),.c(A[6]),.s(s1_6_1),.co(c1_6_1)
);
wire c1_7_1, s1_7_1;
full_adder fa1_7_1 (
.a(C[7]),.b(B[7]),.c(A[7]),.s(s1_7_1),.co(c1_7_1)
);
wire c1_8_1, s1_8_1;
full_adder fa1_8_1 (
.a(C[8]),.b(B[8]),.c(A[8]),.s(s1_8_1),.co(c1_8_1)
);
wire c1_9_1, s1_9_1;
full_adder fa1_9_1 (
.a(C[9]),.b(B[9]),.c(A[9]),.s(s1_9_1),.co(c1_9_1)
);
wire c1_10_1, s1_10_1;
full_adder fa1_10_1 (
.a(C[10]),.b(B[10]),.c(A[10]),.s(s1_10_1),.co(c1_10_1)
);
wire c1_11_1, s1_11_1;
full_adder fa1_11_1 (
.a(C[11]),.b(B[11]),.c(A[11]),.s(s1_11_1),.co(c1_11_1)
);
wire c1_12_1, s1_12_1;
full_adder fa1_12_1 (
.a(C[12]),.b(B[12]),.c(A[12]),.s(s1_12_1),.co(c1_12_1)
);
wire c1_13_1, s1_13_1;
full_adder fa1_13_1 (
.a(C[13]),.b(B[13]),.c(A[13]),.s(s1_13_1),.co(c1_13_1)
);
wire c1_14_1, s1_14_1;
full_adder fa1_14_1 (
.a(C[14]),.b(B[14]),.c(A[14]),.s(s1_14_1),.co(c1_14_1)
);
wire c1_15_1, s1_15_1;
full_adder fa1_15_1 (
.a(C[15]),.b(B[15]),.c(A[15]),.s(s1_15_1),.co(c1_15_1)
);
wire c1_16_1, s1_16_1;
full_adder fa1_16_1 (
.a(C[16]),.b(B[16]),.c(A[16]),.s(s1_16_1),.co(c1_16_1)
);
wire c1_17_1, s1_17_1;
full_adder fa1_17_1 (
.a(C[17]),.b(B[17]),.c(A[17]),.s(s1_17_1),.co(c1_17_1)
);
wire c1_18_1, s1_18_1;
full_adder fa1_18_1 (
.a(C[18]),.b(B[18]),.c(A[18]),.s(s1_18_1),.co(c1_18_1)
);
wire c1_19_1, s1_19_1;
full_adder fa1_19_1 (
.a(C[19]),.b(B[19]),.c(A[19]),.s(s1_19_1),.co(c1_19_1)
);
wire c1_20_1, s1_20_1;
full_adder fa1_20_1 (
.a(C[20]),.b(B[20]),.c(A[20]),.s(s1_20_1),.co(c1_20_1)
);
wire c1_21_1, s1_21_1;
full_adder fa1_21_1 (
.a(C[21]),.b(B[21]),.c(A[21]),.s(s1_21_1),.co(c1_21_1)
);
wire c1_22_1, s1_22_1;
full_adder fa1_22_1 (
.a(C[22]),.b(B[22]),.c(A[22]),.s(s1_22_1),.co(c1_22_1)
);
wire c1_23_1, s1_23_1;
full_adder fa1_23_1 (
.a(C[23]),.b(B[23]),.c(A[23]),.s(s1_23_1),.co(c1_23_1)
);
wire c1_24_1, s1_24_1;
full_adder fa1_24_1 (
.a(C[24]),.b(B[24]),.c(A[24]),.s(s1_24_1),.co(c1_24_1)
);
wire c1_25_1, s1_25_1;
full_adder fa1_25_1 (
.a(C[25]),.b(B[25]),.c(A[25]),.s(s1_25_1),.co(c1_25_1)
);
wire c1_26_1, s1_26_1;
full_adder fa1_26_1 (
.a(C[26]),.b(B[26]),.c(A[26]),.s(s1_26_1),.co(c1_26_1)
);
wire c1_27_1, s1_27_1;
full_adder fa1_27_1 (
.a(C[27]),.b(B[27]),.c(A[27]),.s(s1_27_1),.co(c1_27_1)
);
wire c1_28_1, s1_28_1;
full_adder fa1_28_1 (
.a(C[28]),.b(B[28]),.c(A[28]),.s(s1_28_1),.co(c1_28_1)
);
wire c1_29_1, s1_29_1;
full_adder fa1_29_1 (
.a(C[29]),.b(B[29]),.c(A[29]),.s(s1_29_1),.co(c1_29_1)
);
wire c1_30_1, s1_30_1;
full_adder fa1_30_1 (
.a(C[30]),.b(B[30]),.c(A[30]),.s(s1_30_1),.co(c1_30_1)
);
wire c1_31_1, s1_31_1;
full_adder fa1_31_1 (
.a(C[31]),.b(B[31]),.c(A[31]),.s(s1_31_1),.co(c1_31_1)
);
wire c1_32_1, s1_32_1;
full_adder fa1_32_1 (
.a(C[32]),.b(B[32]),.c(A[32]),.s(s1_32_1),.co(c1_32_1)
);
wire c1_33_1, s1_33_1;
full_adder fa1_33_1 (
.a(C[33]),.b(B[33]),.c(A[33]),.s(s1_33_1),.co(c1_33_1)
);
wire c1_34_1, s1_34_1;
full_adder fa1_34_1 (
.a(C[34]),.b(B[34]),.c(A[34]),.s(s1_34_1),.co(c1_34_1)
);
wire c1_35_1, s1_35_1;
full_adder fa1_35_1 (
.a(C[35]),.b(B[35]),.c(A[35]),.s(s1_35_1),.co(c1_35_1)
);
wire c1_36_1, s1_36_1;
full_adder fa1_36_1 (
.a(C[36]),.b(B[36]),.c(A[36]),.s(s1_36_1),.co(c1_36_1)
);
wire c1_37_1, s1_37_1;
full_adder fa1_37_1 (
.a(C[37]),.b(B[37]),.c(A[37]),.s(s1_37_1),.co(c1_37_1)
);
wire c1_38_1, s1_38_1;
full_adder fa1_38_1 (
.a(C[38]),.b(B[38]),.c(A[38]),.s(s1_38_1),.co(c1_38_1)
);
wire c1_39_1, s1_39_1;
full_adder fa1_39_1 (
.a(C[39]),.b(B[39]),.c(A[39]),.s(s1_39_1),.co(c1_39_1)
);
wire c1_40_1, s1_40_1;
full_adder fa1_40_1 (
.a(C[40]),.b(B[40]),.c(A[40]),.s(s1_40_1),.co(c1_40_1)
);
wire c1_41_1, s1_41_1;
full_adder fa1_41_1 (
.a(C[41]),.b(B[41]),.c(A[41]),.s(s1_41_1),.co(c1_41_1)
);
wire c1_42_1, s1_42_1;
full_adder fa1_42_1 (
.a(C[42]),.b(B[42]),.c(A[42]),.s(s1_42_1),.co(c1_42_1)
);
wire c1_43_1, s1_43_1;
full_adder fa1_43_1 (
.a(C[43]),.b(B[43]),.c(A[43]),.s(s1_43_1),.co(c1_43_1)
);
wire c1_44_1, s1_44_1;
full_adder fa1_44_1 (
.a(C[44]),.b(B[44]),.c(A[44]),.s(s1_44_1),.co(c1_44_1)
);
wire c1_45_1, s1_45_1;
full_adder fa1_45_1 (
.a(C[45]),.b(B[45]),.c(A[45]),.s(s1_45_1),.co(c1_45_1)
);
wire c1_46_1, s1_46_1;
full_adder fa1_46_1 (
.a(C[46]),.b(B[46]),.c(A[46]),.s(s1_46_1),.co(c1_46_1)
);
wire c1_47_1, s1_47_1;
full_adder fa1_47_1 (
.a(C[47]),.b(B[47]),.c(A[47]),.s(s1_47_1),.co(c1_47_1)
);
wire c1_48_1, s1_48_1;
full_adder fa1_48_1 (
.a(C[48]),.b(B[48]),.c(A[48]),.s(s1_48_1),.co(c1_48_1)
);
wire c1_49_1, s1_49_1;
full_adder fa1_49_1 (
.a(C[49]),.b(B[49]),.c(A[49]),.s(s1_49_1),.co(c1_49_1)
);
wire c1_50_1, s1_50_1;
full_adder fa1_50_1 (
.a(C[50]),.b(B[50]),.c(A[50]),.s(s1_50_1),.co(c1_50_1)
);
wire c1_51_1, s1_51_1;
full_adder fa1_51_1 (
.a(C[51]),.b(B[51]),.c(A[51]),.s(s1_51_1),.co(c1_51_1)
);
wire c1_52_1, s1_52_1;
full_adder fa1_52_1 (
.a(C[52]),.b(B[52]),.c(A[52]),.s(s1_52_1),.co(c1_52_1)
);
wire c1_53_1, s1_53_1;
full_adder fa1_53_1 (
.a(C[53]),.b(B[53]),.c(A[53]),.s(s1_53_1),.co(c1_53_1)
);
wire c1_54_1, s1_54_1;
full_adder fa1_54_1 (
.a(C[54]),.b(B[54]),.c(A[54]),.s(s1_54_1),.co(c1_54_1)
);
wire c1_55_1, s1_55_1;
full_adder fa1_55_1 (
.a(C[55]),.b(B[55]),.c(A[55]),.s(s1_55_1),.co(c1_55_1)
);
wire c1_56_1, s1_56_1;
full_adder fa1_56_1 (
.a(C[56]),.b(B[56]),.c(A[56]),.s(s1_56_1),.co(c1_56_1)
);
wire c1_57_1, s1_57_1;
full_adder fa1_57_1 (
.a(C[57]),.b(B[57]),.c(A[57]),.s(s1_57_1),.co(c1_57_1)
);
wire c1_58_1, s1_58_1;
full_adder fa1_58_1 (
.a(C[58]),.b(B[58]),.c(A[58]),.s(s1_58_1),.co(c1_58_1)
);
wire c1_59_1, s1_59_1;
full_adder fa1_59_1 (
.a(C[59]),.b(B[59]),.c(A[59]),.s(s1_59_1),.co(c1_59_1)
);
wire c1_60_1, s1_60_1;
full_adder fa1_60_1 (
.a(C[60]),.b(B[60]),.c(A[60]),.s(s1_60_1),.co(c1_60_1)
);
wire c1_61_1, s1_61_1;
full_adder fa1_61_1 (
.a(C[61]),.b(B[61]),.c(A[61]),.s(s1_61_1),.co(c1_61_1)
);
wire c1_62_1, s1_62_1;
full_adder fa1_62_1 (
.a(C[62]),.b(B[62]),.c(A[62]),.s(s1_62_1),.co(c1_62_1)
);
wire c1_63_1, s1_63_1;
full_adder fa1_63_1 (
.a(C[63]),.b(B[63]),.c(A[63]),.s(s1_63_1),.co(c1_63_1)
);
wire [63:0]A_t;
wire [63:0]B_t;
assign A_t[0] = A[0];
assign B_t[0] = s1_0_1;
assign A_t[1] = s1_1_1;
assign B_t[1] = c1_0_1;
assign A_t[2] = s1_2_1;
assign B_t[2] = c1_1_1;
assign A_t[3] = s1_3_1;
assign B_t[3] = c1_2_1;
assign A_t[4] = s1_4_1;
assign B_t[4] = c1_3_1;
assign A_t[5] = s1_5_1;
assign B_t[5] = c1_4_1;
assign A_t[6] = s1_6_1;
assign B_t[6] = c1_5_1;
assign A_t[7] = s1_7_1;
assign B_t[7] = c1_6_1;
assign A_t[8] = s1_8_1;
assign B_t[8] = c1_7_1;
assign A_t[9] = s1_9_1;
assign B_t[9] = c1_8_1;
assign A_t[10] = s1_10_1;
assign B_t[10] = c1_9_1;
assign A_t[11] = s1_11_1;
assign B_t[11] = c1_10_1;
assign A_t[12] = s1_12_1;
assign B_t[12] = c1_11_1;
assign A_t[13] = s1_13_1;
assign B_t[13] = c1_12_1;
assign A_t[14] = s1_14_1;
assign B_t[14] = c1_13_1;
assign A_t[15] = s1_15_1;
assign B_t[15] = c1_14_1;
assign A_t[16] = s1_16_1;
assign B_t[16] = c1_15_1;
assign A_t[17] = s1_17_1;
assign B_t[17] = c1_16_1;
assign A_t[18] = s1_18_1;
assign B_t[18] = c1_17_1;
assign A_t[19] = s1_19_1;
assign B_t[19] = c1_18_1;
assign A_t[20] = s1_20_1;
assign B_t[20] = c1_19_1;
assign A_t[21] = s1_21_1;
assign B_t[21] = c1_20_1;
assign A_t[22] = s1_22_1;
assign B_t[22] = c1_21_1;
assign A_t[23] = s1_23_1;
assign B_t[23] = c1_22_1;
assign A_t[24] = s1_24_1;
assign B_t[24] = c1_23_1;
assign A_t[25] = s1_25_1;
assign B_t[25] = c1_24_1;
assign A_t[26] = s1_26_1;
assign B_t[26] = c1_25_1;
assign A_t[27] = s1_27_1;
assign B_t[27] = c1_26_1;
assign A_t[28] = s1_28_1;
assign B_t[28] = c1_27_1;
assign A_t[29] = s1_29_1;
assign B_t[29] = c1_28_1;
assign A_t[30] = s1_30_1;
assign B_t[30] = c1_29_1;
assign A_t[31] = s1_31_1;
assign B_t[31] = c1_30_1;
assign A_t[32] = s1_32_1;
assign B_t[32] = c1_31_1;
assign A_t[33] = s1_33_1;
assign B_t[33] = c1_32_1;
assign A_t[34] = s1_34_1;
assign B_t[34] = c1_33_1;
assign A_t[35] = s1_35_1;
assign B_t[35] = c1_34_1;
assign A_t[36] = s1_36_1;
assign B_t[36] = c1_35_1;
assign A_t[37] = s1_37_1;
assign B_t[37] = c1_36_1;
assign A_t[38] = s1_38_1;
assign B_t[38] = c1_37_1;
assign A_t[39] = s1_39_1;
assign B_t[39] = c1_38_1;
assign A_t[40] = s1_40_1;
assign B_t[40] = c1_39_1;
assign A_t[41] = s1_41_1;
assign B_t[41] = c1_40_1;
assign A_t[42] = s1_42_1;
assign B_t[42] = c1_41_1;
assign A_t[43] = s1_43_1;
assign B_t[43] = c1_42_1;
assign A_t[44] = s1_44_1;
assign B_t[44] = c1_43_1;
assign A_t[45] = s1_45_1;
assign B_t[45] = c1_44_1;
assign A_t[46] = s1_46_1;
assign B_t[46] = c1_45_1;
assign A_t[47] = s1_47_1;
assign B_t[47] = c1_46_1;
assign A_t[48] = s1_48_1;
assign B_t[48] = c1_47_1;
assign A_t[49] = s1_49_1;
assign B_t[49] = c1_48_1;
assign A_t[50] = s1_50_1;
assign B_t[50] = c1_49_1;
assign A_t[51] = s1_51_1;
assign B_t[51] = c1_50_1;
assign A_t[52] = s1_52_1;
assign B_t[52] = c1_51_1;
assign A_t[53] = s1_53_1;
assign B_t[53] = c1_52_1;
assign A_t[54] = s1_54_1;
assign B_t[54] = c1_53_1;
assign A_t[55] = s1_55_1;
assign B_t[55] = c1_54_1;
assign A_t[56] = s1_56_1;
assign B_t[56] = c1_55_1;
assign A_t[57] = s1_57_1;
assign B_t[57] = c1_56_1;
assign A_t[58] = s1_58_1;
assign B_t[58] = c1_57_1;
assign A_t[59] = s1_59_1;
assign B_t[59] = c1_58_1;
assign A_t[60] = s1_60_1;
assign B_t[60] = c1_59_1;
assign A_t[61] = s1_61_1;
assign B_t[61] = c1_60_1;
assign A_t[62] = s1_62_1;
assign B_t[62] = c1_61_1;
assign A_t[63] = s1_63_1;
assign B_t[63] = c1_62_1;

adder64 Adder(
	.A(A_t),
	.B(B_t),
	.res(res),
	.overflow());

endmodule
