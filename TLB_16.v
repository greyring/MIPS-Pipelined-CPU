`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:12:04 11/22/2017 
// Design Name: 
// Module Name:    TLB_16 
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
module TLB_16(
	input clk,
	input rst,
	
	input [31:0]IVaddr,
	output reg[31:0]IPaddr,
	output reg ITLB_Refill,
	output reg ITLB_Invalid,
	
	input dwe,
	input drd,
	input [31:0]DVaddr,
	output reg[31:0]DPaddr,
	output reg DTLB_Refill,
	output reg DTLB_Invalid,
	output reg DTLB_Modified,
	
	input [3:0]op,//TLBWR TLBWI TLBR TLBP
	input [31:0]INDEX,
	input [31:0]RANDOM,
	input [31:0]ENTRY_HI,
	input [31:0]ENTRY_LO0,
	input [31:0]ENTRY_LO1,
	
	output reg INDEX_P,
	output reg [3:0]INDEX_INDEX,
	output reg [18:0]ENTRY_HI_VPN2,
	output reg [7:0]ENTRY_HI_ASID,
	output reg [19:0]ENTRY_LO0_PFN,
	output reg [1:0]ENTRY_LO0_DV,
	output reg [19:0]ENTRY_LO1_PFN,
	output reg [1:0]ENTRY_LO1_DV,
	output reg ENTRY_LO_G
    );
wire TLBWR, TLBWI, TLBR, TLBP;
assign {TLBWR, TLBWI, TLBR, TLBP} = op;

wire [18:0]ivfn, dvfn;
wire is, ds;
wire [11:0]ioffset, doffset;
assign {ivfn, is, ioffset} = IVaddr;
assign {dvfn, ds, doffset} = DVaddr;

wire [3:0]waddr, raddr;
assign waddr = TLBWR? RANDOM[3:0]: INDEX[3:0];
assign raddr = INDEX[3:0];
`define PFN0 43:24
`define D0 23
`define V0 22
`define PFN1 21:2
`define D1 1
`define V1 0
wire [43:0]wdata;
assign wdata = {ENTRY_LO0[25:6], ENTRY_LO0[2:1],
						ENTRY_LO1[25:6],ENTRY_LO1[2:1]};


reg [15:0]we_ = 0;
always @* begin
	we_ =0;
	if (TLBWR | TLBWI)
		we_[waddr] = 1'b1;
end

wire [15:0]VPN_hit0, VPN_hit1, VPN_hit2;
wire [18:0]VPN_data;
	CAM_16 #(.DATA_SIZE(19))
	VPN(
    .clk(clk), .rst(rst), 
    .we(we_), .wdata(ENTRY_HI[31:13]),
	 .rdata0(ivfn), .rdata1(dvfn), .rdata2(ENTRY_HI[31:13]),
	 .hit0(VPN_hit0), .hit1(VPN_hit1), .hit2(VPN_hit2),
	 .addr(raddr), .data(VPN_data)
    );

wire [15:0]ASID_hit0, ASID_hit1, ASID_hit2;
wire [7:0]ASID_data;
	CAM_16 #(.DATA_SIZE(8))
	ASID(
    .clk(clk), .rst(rst), 
    .we(we_), .wdata(ENTRY_HI[7:0]),
	 .rdata0(ENTRY_HI[7:0]), .rdata1(ENTRY_HI[7:0]), .rdata2(ENTRY_HI[7:0]),
	 .hit0(ASID_hit0), .hit1(ASID_hit1), .hit2(ASID_hit2),
    .addr(raddr), .data(ASID_data)
    );

reg [15:0]G;
always @(posedge clk) begin
	if (rst)
		G <= 0;
	else if (TLBWR | TLBWI)
		G[waddr] <= ENTRY_LO0[0] & ENTRY_LO1[0];
	else
		G <= G;
end


reg [43:0]DATA[15:0];//{PFN0, D  V0, PFN1, DV1}
                     //43 24  23 22  21 2  1 0
always @(posedge clk) begin
	if (rst) begin
		DATA[0] <= 0; DATA[1] <= 0; DATA[2] <= 0; DATA[3] <= 0;
		DATA[4] <= 0; DATA[5] <= 0; DATA[6] <= 0; DATA[7] <= 0;
		DATA[8] <= 0; DATA[9] <= 0; DATA[10] <= 0; DATA[11] <= 0;
		DATA[12] <= 0; DATA[13] <= 0; DATA[14] <= 0; DATA[15] <= 0;
	end
	else begin
		DATA[0] <= DATA[0]; DATA[1] <= DATA[1]; DATA[2] <= DATA[2]; DATA[3] <= DATA[3];
		DATA[4] <= DATA[4]; DATA[5] <= DATA[5]; DATA[6] <= DATA[6]; DATA[7] <= DATA[7];
		DATA[8] <= DATA[8]; DATA[9] <= DATA[9]; DATA[10] <= DATA[10]; DATA[11] <= DATA[11];
		DATA[12] <= DATA[12]; DATA[13] <= DATA[13]; DATA[14] <= DATA[14]; DATA[15] <= DATA[15];
		if (TLBWR | TLBWI)
			DATA[waddr] <= wdata;
	end
end
/*
reg [19:0]PFN1[15:0];
always @(posedge clk) begin
	
	if (rst) begin
		for (i = 0; i<16; i = i+1)
			PFN1[i] <= 0;
	end
	else begin
		for (i = 0; i<16; i=i+1)
			PFN1[i] <= PFN1[i];
		case(we_)
			16'h0001: PFN1[0] <= ENTRY_LO0[25:6];
			16'h0002: PFN1[1] <= ENTRY_LO0[25:6];
			16'h0004: PFN1[2] <= ENTRY_LO0[25:6];
			16'h0008: PFN1[3] <= ENTRY_LO0[25:6];
			16'h0010: PFN1[4] <= ENTRY_LO0[25:6];
			16'h0020: PFN1[5] <= ENTRY_LO0[25:6];
			16'h0040: PFN1[6] <= ENTRY_LO0[25:6];
			16'h0080: PFN1[7] <= ENTRY_LO0[25:6];
			16'h0100: PFN1[8] <= ENTRY_LO0[25:6];
			16'h0200: PFN1[9] <= ENTRY_LO0[25:6];
			16'h0400: PFN1[10] <= ENTRY_LO0[25:6];
			16'h0800: PFN1[11] <= ENTRY_LO0[25:6];
			16'h1000: PFN1[12] <= ENTRY_LO0[25:6];
			16'h2000: PFN1[13] <= ENTRY_LO0[25:6];
			16'h4000: PFN1[14] <= ENTRY_LO0[25:6];
			16'h8000: PFN1[15] <= ENTRY_LO0[25:6];
		endcase
	end
end

reg [1:0]DV0[15:0];
always @(posedge clk) begin
	
	if (rst) begin
		for (i = 0; i<16; i = i+1)
			PFN1[i] <= 0;
	end
	else begin
		for (i = 0; i<16; i=i+1)
			PFN1[i] <= PFN1[i];
		case(we_)
			16'h0001: PFN1[0] <= ENTRY_LO0[25:6];
			16'h0002: PFN1[1] <= ENTRY_LO0[25:6];
			16'h0004: PFN1[2] <= ENTRY_LO0[25:6];
			16'h0008: PFN1[3] <= ENTRY_LO0[25:6];
			16'h0010: PFN1[4] <= ENTRY_LO0[25:6];
			16'h0020: PFN1[5] <= ENTRY_LO0[25:6];
			16'h0040: PFN1[6] <= ENTRY_LO0[25:6];
			16'h0080: PFN1[7] <= ENTRY_LO0[25:6];
			16'h0100: PFN1[8] <= ENTRY_LO0[25:6];
			16'h0200: PFN1[9] <= ENTRY_LO0[25:6];
			16'h0400: PFN1[10] <= ENTRY_LO0[25:6];
			16'h0800: PFN1[11] <= ENTRY_LO0[25:6];
			16'h1000: PFN1[12] <= ENTRY_LO0[25:6];
			16'h2000: PFN1[13] <= ENTRY_LO0[25:6];
			16'h4000: PFN1[14] <= ENTRY_LO0[25:6];
			16'h8000: PFN1[15] <= ENTRY_LO0[25:6];
		endcase
	end
end

generate
genvar i;

for (i = 0; i<16; i = i+1) begin: PFN0
	reg [19:0]data;
	always @(posedge clk) begin
		if (rst)
			data <= 0;
		else if (we_[i])
			data <= ENTRY_LO0[25:6];
		else
			data <= data;
	end
end

for (i = 0; i<16; i = i+1) begin: PFN1
	reg [19:0]data;
	always @(posedge clk) begin
		if (rst)
			data <= 0;
		else if (we_[i])
			data <= ENTRY_LO1[25:6];
		else
			data <= data;
	end
end

for (i = 0; i<16; i = i+1) begin: DV0
	reg [1:0]data;
	always @(posedge clk) begin
		if (rst)
			data <= 0;
		else if (we_[i])
			data <= ENTRY_LO0[2:1];
		else
			data <= data;
	end
end

for (i = 0; i<16; i = i+1) begin: DV1
	reg [1:0]data;
	always @(posedge clk) begin
		if (rst)
			data <= 0;
		else if (we_[i])
			data <= ENTRY_LO1[2:1];
		else
			data <= data;
	end
end
endgenerate
*/
wire [15:0]hit0, hit1, hit2;
assign hit0 = VPN_hit0 & (G | ASID_hit0);
assign hit1 = VPN_hit1 & (G | ASID_hit1);
assign hit2 = VPN_hit2 & (G | ASID_hit2);

wire [3:0]hitaddr0, hitaddr1, hitaddr2;
Decoder _Decoder0(
	.onehot(hit0),
	.addr(hitaddr0));
Decoder _Decoder1(
	.onehot(hit1),
	.addr(hitaddr1));
Decoder _Decoder2(
	.onehot(hit2),
	.addr(hitaddr2));
	
always @* begin
	IPaddr = 0;
	ITLB_Refill = 0;
	ITLB_Invalid = 0;
	if (|hit0) begin
		if (is)
			if (DATA[hitaddr0][`V1])
				IPaddr = {DATA[hitaddr0][`PFN1], ioffset};
			else
				ITLB_Invalid = 1;
		else
			if (DATA[hitaddr0][`V0])
				IPaddr = {DATA[hitaddr0][`PFN0], ioffset};
			else
				ITLB_Invalid = 1;
	end
	else
		ITLB_Refill = 1;
end
always @* begin
	DPaddr = 0;
	DTLB_Refill = 0;
	DTLB_Invalid = 0;
	DTLB_Modified = 0;
	if (dwe | drd) begin
		if (|hit1) begin
			if (ds) begin
				if (DATA[hitaddr1][`V1]) begin
					if (dwe) begin
						if (DATA[hitaddr1][`D1])
							DPaddr = {DATA[hitaddr1][`PFN1], doffset};
						else
							DTLB_Modified = 1'b1;
					end
					else//rd
						DPaddr = {DATA[hitaddr1][`PFN1], doffset};
				end
				else
					DTLB_Invalid = 1'b1;
			end
			else begin
				if (DATA[hitaddr1][`V0]) begin
					if (dwe) begin
						if (DATA[hitaddr1][`D0])
							DPaddr = {DATA[hitaddr1][`PFN0], doffset};
						else
							DTLB_Modified = 1'b1;
					end
					else//rd
						DPaddr = {DATA[hitaddr1][`PFN0], doffset};
				end
				else
					DTLB_Invalid = 1'b1;
			end
		end
		else
			DTLB_Refill = 1'b1;
	end
end

always @* begin
	INDEX_P = INDEX[31];
	if (TLBP & ~(|hit2))
		INDEX_P = 1'b1;
end
always @* begin
	INDEX_INDEX = INDEX[3:0];
	if (TLBP) begin
		if (|hit2)
			INDEX_INDEX = hitaddr2;
		else
			INDEX_INDEX = 0;
	end
end

always @* begin
	ENTRY_HI_VPN2 = ENTRY_HI[31:13];
	ENTRY_HI_ASID = ENTRY_HI[7:0];
	ENTRY_LO0_PFN = ENTRY_LO0[25:6];
	ENTRY_LO0_DV  = ENTRY_LO0[2:1];
	ENTRY_LO1_PFN = ENTRY_LO1[25:6];
	ENTRY_LO1_DV  = ENTRY_LO1[2:1];
	ENTRY_LO_G = ENTRY_LO0[0] & ENTRY_LO1[0];
	if (TLBR) begin
		ENTRY_HI_VPN2 = VPN_data;
		ENTRY_HI_ASID = ASID_data;
		ENTRY_LO0_PFN = DATA[raddr][`PFN0];
		ENTRY_LO0_DV  = {DATA[raddr][`D0], DATA[raddr][`V0]};
		ENTRY_LO1_PFN = DATA[raddr][`PFN1];
		ENTRY_LO1_DV  = {DATA[raddr][`D1], DATA[raddr][`V1]};
		ENTRY_LO_G = G[raddr];
	end
end
endmodule
