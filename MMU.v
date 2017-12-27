`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:21 12/16/2017 
// Design Name: 
// Module Name:    MMU 
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
module MMU(
	input clk,
	input rst,
	
	input [31:0]IVaddr,
	output reg [31:0]IPaddr,
	output reg ITLB_Refill,
	output reg ITLB_Invalid,
	
	input [3:0]dwe,
	input drd,
	input [31:0]DVaddr,
	output reg [31:0]DPaddr,
	output reg DTLB_Refill,
	output reg DTLB_Invalid,
	output reg DTLB_Modified,
	
	input tlbwr,
	input tlbwi,
	input tlbr,
	input tlbp,
	
	input [31:0]INDEX,
	input [31:0]RANDOM,
	input [31:0]ENTRY_HI,
	input [31:0]ENTRY_LO0,
	input [31:0]ENTRY_LO1,
	
	output INDEX_P,
	output [3:0]INDEX_INDEX,
	output [18:0]ENTRY_HI_VPN2,
	output [7:0]ENTRY_HI_ASID,
	output [19:0]ENTRY_LO0_PFN,
	output [1:0]ENTRY_LO0_DV,
	output [19:0]ENTRY_LO1_PFN,
	output [1:0]ENTRY_LO1_DV,
	output ENTRY_LO_G
    );

wire [31:0]IPaddr_tlb, DPaddr_tlb;
wire I_reg, I_Inv, D_Reg, D_Inv, D_Mod;
TLB_16 TLB(
    .clk(clk), .rst(rst), 
	 .op({tlbwr, tlbwi, tlbr, tlbp}), 
	 
    .IVaddr(IVaddr), .IPaddr(IPaddr_tlb), 
	 .ITLB_Refill(I_Ref), .ITLB_Invalid(I_Inv), 
	 
	 .dwe(|dwe), .drd(drd), .DVaddr(DVaddr), .DPaddr(DPaddr_tlb), 
	 .DTLB_Refill(D_Ref), .DTLB_Invalid(D_Inv), .DTLB_Modified(D_Mod), 
	 
    .INDEX(INDEX), .RANDOM(RANDOM), .ENTRY_HI(ENTRY_HI), .ENTRY_LO0(ENTRY_LO0), .ENTRY_LO1(ENTRY_LO1), 
    .INDEX_P(INDEX_P),  .INDEX_INDEX(INDEX_INDEX), 
    .ENTRY_HI_VPN2(ENTRY_HI_VPN2), .ENTRY_HI_ASID(ENTRY_HI_ASID), 
    .ENTRY_LO0_PFN(ENTRY_LO0_PFN), .ENTRY_LO0_DV(ENTRY_LO0_DV), 
    .ENTRY_LO1_PFN(ENTRY_LO1_PFN), 
    .ENTRY_LO1_DV(ENTRY_LO1_DV), 
    .ENTRY_LO_G(ENTRY_LO_G)
    );

//0x00000000-0x7fffffff kuseg tlbed cached  2G    user   level
//0x80000000-0x9fffffff kseg0 untlb cache 512M  kernel level
//0xa0000000-0xbfffffff kseg1 untlb uncached  512M  kernel level
//0xc0000000-0xdfffffff ksseg tlbed cached  512M  supervisor level
//0xe0000000-0xffffffff kseg3 tlbed cached  512M  kernel level
wire Ikuseg, Ikseg0, Ikseg1, Iksseg, Ikseg3;
wire Dkuseg, Dkseg0, Dkseg1, Dksseg, Dkseg3;
assign Ikuseg = ~IVaddr[31];                       assign Ikseg0 = IVaddr[31]&~IVaddr[30]&~IVaddr[29];
assign Ikseg1 = IVaddr[31]&~IVaddr[30]&IVaddr[29]; assign Iksseg = IVaddr[31]&IVaddr[30]&~IVaddr[29];
assign Ikseg3 = IVaddr[31]&IVaddr[30]&IVaddr[29];
assign Dkuseg = ~DVaddr[31];                       assign Dkseg0 = DVaddr[31]&~DVaddr[30]&~DVaddr[29];
assign Dkseg1 = DVaddr[31]&~DVaddr[30]&DVaddr[29]; assign Dksseg = DVaddr[31]&DVaddr[30]&~DVaddr[29];
assign Dkseg3 = DVaddr[31]&DVaddr[30]&DVaddr[29];

always @* begin
	if (Ikseg0 | Ikseg1) begin
		IPaddr = {3'b0, IVaddr[28:0]};
		{ITLB_Refill, ITLB_Invalid} = 0;
	end
	else begin
		IPaddr = IPaddr_tlb;
		{ITLB_Refill, ITLB_Invalid} = {I_Ref, I_Inv};
	end
end

always @* begin
	if (Dkseg0 | Dkseg1) begin
		DPaddr = {3'b0, DVaddr[28:0]};
		{DTLB_Refill, DTLB_Invalid, DTLB_Modified} = 0;
	end
	else begin
		DPaddr = DPaddr_tlb;
		{DTLB_Refill, DTLB_Invalid, DTLB_Modified} = {D_Ref, D_Inv, D_Mod};
	end
end

endmodule
