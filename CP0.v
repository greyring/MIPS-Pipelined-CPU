`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:58 09/09/2017 
// Design Name: 
// Module Name:    CP0 
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
module CP0(//≤ª¥¶¿Ìharzard
	input clk,
	input rst,
	
	input we,
	input [4:0]r_reg,
	input [31:0]data_in,
	output reg [31:0]data_out,
	
	input STATUS_EXL,
	output [31:0]STATUS_out,
	
	input CAUSE_BD,
	input [5:0]CAUSE_HIP,
	input [4:0]CAUSE_EXCCODE,
	output [31:0]CAUSE_out,
	
	input [31:0]EPC_in,
	output [31:0]EPC_out,
	
	input INDEX_P,
	input [3:0]INDEX_INDEX,
	output [31:0]INDEX_out,
	
	output [31:0]RANDOM_out,
	
	input [19:0]ENTRY_LO0_PFN,
	input [2:0]ENTRY_LO0_DVG,
	output [31:0]ENTRY_LO0_out,
	
	input [19:0]ENTRY_LO1_PFN,
	input [2:0]ENTRY_LO1_DVG,
	output [31:0]ENTRY_LO1_out,
	
	input [18:0]ENTRY_HI_VPN2,
	input [7:0]ENTRY_HI_ASID,
	output [31:0]ENTRY_HI_out,
	
	output timer_int
    );

/////////////////////////////
//Wired and Random
	wire [31:0]WIRED_out;
	wire wired_we;
	Wired WIRED(//6
    .clk(clk), 
    .rst(rst), 
    .we(wired_we), 
    .mtcd(data_in), 
    .Q(WIRED_out)
    );
	 
	Random RANDOM(//1
    .clk(clk), 
    .rst(rst), 
    .Wired(WIRED_out), 
    .Wired_we(wired_we), 
    .Q(RANDOM_out)
    );
///////////////////////////
//index and entrylo0 and entrylo1 and entryhi
	wire index_we;
	Index INDEX(//0
		 .clk(clk), 
		 .rst(rst), 
		 .we(index_we), 
		 .mtcd(data_in), 
		 .p(INDEX_P), 
		 .index(INDEX_INDEX), 
		 .Q(INDEX_out)
		 );
		 
	wire entry_lo0_we;
	EntryLo ENTRYLO0(//2
    .clk(clk), 
    .rst(rst), 
    .we(entry_lo0_we), 
    .mtcd(data_in), 
    .pfn(ENTRY_LO0_PFN), 
    .dvg(ENTRY_LO0_DVG), 
    .Q(ENTRY_LO0_out)
    );
	
	wire entry_lo1_we;
	EntryLo ENTRYLO1(//3
    .clk(clk), 
    .rst(rst), 
    .we(entry_lo1_we), 
    .mtcd(data_in), 
    .pfn(ENTRY_LO1_PFN), 
    .dvg(ENTRY_LO1_DVG), 
    .Q(ENTRY_LO1_out)
    );
	
	wire entry_hi_we;
	EntryHi ENTRYHI(
    .clk(clk), 
    .rst(rst), 
    .we(entry_hi_we), 
    .mtcd(data_in), 
    .vpn2(ENTRY_HI_VPN2), 
    .asid(ENTRY_HI_ASID), 
    .Q(ENTRY_HI_out)
    );
	
	
////////////////////////////////////////////////////////
//COUNT and COMPARE
   wire count_we;
	wire [31:0]COUNT_out;
	Count COUNT(//9
    .clk(clk), 
	 .rst(rst),
	 .we(count_we),
	 .mtcd(data_in),
    .Q(COUNT_out)
    );
	
	wire compare_we;
	wire [31:0]COMPARE_out;
	Compare COMPARE(//11
    .clk(clk), 
    .rst(rst), 
    .we(compare_we), 
    .mtcd(data_in), 
    .Q(COMPARE_out), 
	 
	 .count(COUNT_out), 
    .timer_int(timer_int)
    );
/////////////////////////////////////////////////////////////////
	wire [31:0]STATUS_in;
	wire status_we;
	Status STATUS(//12
    .clk(clk), 
    .rst(rst), 
    .we(status_we), 
    .mtcd(data_in), 
    .EXL_(STATUS_EXL),
    .Q(STATUS_out)
    );

	wire [31:0]CAUSE_in;
	wire cause_we;
	Cause CAUSE(//13
    .clk(clk), 
    .rst(rst), 
    .we(cause_we), 
    .mtcd(data_in), 
    .BD_(CAUSE_BD), 
    .CAUSE_HIP(CAUSE_HIP),//IP7 is timmer interrupt 
    .ExcCode_(CAUSE_EXCCODE), 
    .Q(CAUSE_out)
    );
	
	wire epc_we;
	Epc  EPC( //14
			  .clk(clk),  
			  .we(epc_we),
			  .mtcd(data_in),
			  .D(EPC_in), 
			  .rst(rst), 
			  .Q(EPC_out));
////////////////////////////////////////////////////

always @* begin
	case (r_reg)
		5'd0 : data_out = INDEX_out;
		5'd1 : data_out = RANDOM_out;
		5'd2 : data_out = ENTRY_LO0_out;
		5'd3 : data_out = ENTRY_LO1_out;
		5'd6 : data_out = WIRED_out;
		5'd9 : data_out = COUNT_out;
		5'd10: data_out = ENTRY_HI_out;
		5'd11: data_out = COMPARE_out;
		5'd12: data_out = STATUS_out;
		5'd13: data_out = CAUSE_out;
		5'd14: data_out = EPC_out;
		default: data_out = 32'b0;
	endcase
end

assign index_we = we & (r_reg == 5'd0);
assign entry_lo0_we = we & (r_reg == 5'd2);
assign entry_lo1_we = we & (r_reg == 5'd3);
assign wired_we = we & (r_reg == 5'd6);
assign count_we = we & (r_reg == 5'd9);
assign entry_hi_we = we & (r_reg == 5'd10);
assign compare_we = we & (r_reg == 5'd11);
assign status_we = we & (r_reg == 5'd12);
assign cause_we = we & (r_reg == 5'd13);
assign epc_we = we & (r_reg == 5'd14);

endmodule
