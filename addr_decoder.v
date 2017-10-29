`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:28 10/29/2017 
// Design Name: 
// Module Name:    addr_decoder 
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
module addr_decoder(
	input [31:0]addr,
	output reg en_SDRAM,
	output reg en_BIOS,
	output reg en_vga_reg,
	output reg en_cursor_reg,
	output reg en_textRAM,
	output reg en_graphRAM,
	output reg en_DRAM
    );
//0x0000_0000-0x0fff_ffff DRAM 256M
//0x1000_0000-0x1000_0fff regs 4K
//0x1000_2000-0x1000_3fff text_ram 8K
//0x1001_0000-0x1001_ffff graph_ram 64K
//0x1fc0_0000-0x1fff_ffff IROM 4M
//0x2000_0000-0xffff_ffff DRAM 4G-512M
wire a0001 = ~(|addr[31:29]) & addr[28] ;
reg en_regs;
always @* begin
	{en_SDRAM, en_BIOS, en_regs, en_textRAM, en_graphRAM,
	 en_DRAM} = 0;
	if (~(|addr[31:28])) en_SDRAM = 1'b1;
	if (a0001 & ~(|addr[27:12])) en_regs = 1'b1;
	if (a0001 & ~(|addr[27:14]) & addr[13]) en_textRAM = 1'b1;
	if (a0001 & ~(|addr[27:17]) & addr[16]) en_graphRAM = 1'b1;
	if (~(|addr[31:29]) & (&addr[28:22])) en_BIOS = 1'b1;
	if (|addr[31:29]) en_DRAM = 1'b1;
end
always @* begin
	{en_vga_reg, en_cursor_reg} = 0;
	if (en_regs) begin
		case (addr[11:0])
			3'h000: en_vga_reg = 1'b1;
			3'h004: en_cursor_reg = 1'b1;
		endcase
	end
end

endmodule
