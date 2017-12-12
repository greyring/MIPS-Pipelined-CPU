`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:49 12/12/2017
// Design Name:   TLB_16
// Module Name:   F:/MyProgramme/0arch/PCPU/TTLB_16.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TLB_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TTLB_16;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] IVaddr;
	reg dwe;
	reg drd;
	reg [31:0] DVaddr;
	reg [3:0] op;
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
	TLB_16 uut (
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
		.op(op), 
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
		op = 0;
		INDEX = 0;
		RANDOM = 0;
		ENTRY_HI = 0;
		ENTRY_LO0 = 0;
		ENTRY_LO1 = 0;

		// Wait 100 ns for global reset to finish
		#11;
      rst = 0;
		op = 4'b0100;
		INDEX = 32'b0;
		ENTRY_HI = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		ENTRY_LO0 = 32'b0000_0011_1111_1111_1111_1111_1100_0010;
		ENTRY_LO1 = 32'b0000_0011_1111_1111_1111_1111_1000_0110;
		#10
		op = 4'b1000;
		RANDOM = 32'b1;
		ENTRY_HI = 32'b0000_0000_0000_0000_0010_0000_1111_1111;
		ENTRY_LO0 = 32'b0000_0011_1111_1111_1111_1111_0100_0111;
		ENTRY_LO1 = 32'b0000_0011_1111_1111_1111_1111_0000_0101;
		#10
		op = 0;
		drd = 1;
		IVaddr = 32'b0000_0000_0000_0000_0100_0000_0000_0100;//ITLB_Refill
		DVaddr = 32'b0000_0000_0000_0000_0011_0000_0000_0100;//DTLB_Invalid
		#10
		drd = 1;
		IVaddr = 32'b0000_0000_0000_0000_0011_0000_0000_0100;//ITLB_Invalid
		DVaddr = 32'b0000_0000_0000_0000_0100_0000_0000_0100;//DTLB_Refill
		#10
		drd = 1;
		ENTRY_HI = 32'b0;
		IVaddr = 32'b0000_0000_0000_0000_0100_0000_0000_0100;//OK
		DVaddr = 32'b0000_0000_0000_0000_0010_0000_0000_0100;//OK
		#10
		drd = 0;
		dwe = 1;
		IVaddr = 32'b0000_0000_0000_0000_0110_0000_0000_0100;//ITLB_Refill
		DVaddr = 32'b0000_0000_0000_0000_0100_0000_0000_0100;//DTLB_Modified
		#10
		dwe = 0;
		op = 4'b0010;
		INDEX = 1;
		#10
		op = 4'b0001;
		ENTRY_HI = 32'b0000_0000_0000_0000_0010_0000_0000_0000;//INDEX = 1
		#10
		ENTRY_HI = 32'b0000_0000_0000_0000_0100_0000_0000_0001;//INDEX = 32'b1000...0
		#10
		op = 0;
		drd =0;
		dwe = 0;
		// Add stimulus here

	end
	always @*
		#5
		clk <= ~clk;
      
endmodule

