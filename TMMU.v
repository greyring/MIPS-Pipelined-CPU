`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:32 01/06/2018
// Design Name:   MMU
// Module Name:   F:/MyProgramme/0arch/PCPU/TMMU.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MMU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TMMU;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] IVaddr;
	reg [3:0] dwe;
	reg drd;
	reg [31:0] DVaddr;
	reg tlbwr;
	reg tlbwi;
	reg tlbr;
	reg tlbp;
	reg [31:0] INDEX;
	reg [31:0] RANDOM;
	reg [31:0] ENTRY_HI;
	reg [31:0] ENTRY_LO0;
	reg [31:0] ENTRY_LO1;

	// Outputs
	wire [31:0] IPaddr;
	wire ITLB_Refill;
	wire ITLB_Invalid;
	wire [31:0] DPaddr;
	wire DTLB_Refill;
	wire DTLB_Invalid;
	wire DTLB_Modified;
	wire INDEX_P;
	wire [3:0] INDEX_INDEX;
	wire [18:0] ENTRY_HI_VPN2;
	wire [7:0] ENTRY_HI_ASID;
	wire [19:0] ENTRY_LO0_PFN;
	wire [1:0] ENTRY_LO0_DV;
	wire [19:0] ENTRY_LO1_PFN;
	wire [1:0] ENTRY_LO1_DV;
	wire ENTRY_LO_G;

	// Instantiate the Unit Under Test (UUT)
	MMU uut (
		.clk(clk), 
		.rst(rst), 
		.IVaddr(IVaddr), 
		.IPaddr(IPaddr), 
		.ITLB_Refill(ITLB_Refill), 
		.ITLB_Invalid(ITLB_Invalid), 
		.dwe(dwe), 
		.drd(drd), 
		.DVaddr(DVaddr), 
		.DPaddr(DPaddr), 
		.DTLB_Refill(DTLB_Refill), 
		.DTLB_Invalid(DTLB_Invalid), 
		.DTLB_Modified(DTLB_Modified), 
		.tlbwr(tlbwr), 
		.tlbwi(tlbwi), 
		.tlbr(tlbr), 
		.tlbp(tlbp), 
		.INDEX(INDEX), 
		.RANDOM(RANDOM), 
		.ENTRY_HI(ENTRY_HI), 
		.ENTRY_LO0(ENTRY_LO0), 
		.ENTRY_LO1(ENTRY_LO1), 
		.INDEX_P(INDEX_P), 
		.INDEX_INDEX(INDEX_INDEX), 
		.ENTRY_HI_VPN2(ENTRY_HI_VPN2), 
		.ENTRY_HI_ASID(ENTRY_HI_ASID), 
		.ENTRY_LO0_PFN(ENTRY_LO0_PFN), 
		.ENTRY_LO0_DV(ENTRY_LO0_DV), 
		.ENTRY_LO1_PFN(ENTRY_LO1_PFN), 
		.ENTRY_LO1_DV(ENTRY_LO1_DV), 
		.ENTRY_LO_G(ENTRY_LO_G)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		IVaddr = 0;
		dwe = 0;
		drd = 0;
		DVaddr = 0;
		tlbwr = 0;
		tlbwi = 0;
		tlbr = 0;
		tlbp = 0;
		INDEX = 0;
		RANDOM = 0;
		ENTRY_HI = 0;
		ENTRY_LO0 = 0;
		ENTRY_LO1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		IVaddr = 32'h80003368;
		tlbwi = 1;
		INDEX = 0;
		ENTRY_HI = 2;
		ENTRY_LO0 = 32'h00800006;
		ENTRY_LO1 = 32'h00800046;
		#10
		tlbwi = 0;
		drd = 1;
		IVaddr = 32'h8000336c;
		DVaddr = 32'h00000180;
		#10
		IVaddr = 32'h80003370;
		DVaddr = 32'h80000180;
		#10
		dwe = 4'b1111;
		IVaddr = 32'h80003374;
		DVaddr = 32'h00000180;
		#10
		dwe = 0;
		IVaddr = 32'h00000538;
		#10
		IVaddr = 32'h0000053c;
		
		// Add stimulus here

	end
	always @*
		#5
		clk <= ~clk;
      
endmodule

