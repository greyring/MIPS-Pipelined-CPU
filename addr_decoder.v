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
	output reg en_TEXTS,
	output reg en_DATAS,
	output reg en_BIOS,
	output reg en_vga_reg,
	output reg en_cursor_reg,
	output reg en_textRAM,
	output reg en_graphRAM,
	output reg en_DRAM,
	output reg en_SEG,
	output reg en_keyboard,
	output reg en_switch,
	output reg en_led,
	output reg en_dma,
	output reg en_dmaRAM,
	output reg en_others
    );
//0x0000_0000-0x0fff_ffff SRAM 256M
	//0x0000_0000-0x0000_1fff TEXT_SECTION 8k
	//0x0000_2000-0x0000_2fff DATA_SECTION 4k
//0x1000_0000-0x1000_0fff regs 4K
//0x1000_2000-0x1000_3fff text_ram 8K
//0x1001_0000-0x1001_ffff graph_ram 64K
//0x1002_0000-0x1002_01ff DMA_ram 512B
//0x1fc0_0000-0x1fff_ffff IROM 4M
//0x2000_0000-0xffff_ffff DRAM 4G-512M

//0x10000000 vgareg
//0x10000004 cursor
//0x10000008 switches
//0x1000000c leds
//0x10000010 seg
//0x10000014 keyboard
//0x10000018 dma
reg en_regs;
always @* begin
	{en_TEXTS, en_DATAS, en_BIOS, en_regs, en_textRAM, en_graphRAM,
	 en_DRAM, en_dmaRAM, en_others} = 0;
	//if (addr[31:28] == 4'b0) en_SRAM = 1'b1;
	if (addr[31:28] == 4'b0)begin
		if (addr[15:12] == 4'b0000 || addr[15:12] == 4'b0001) en_TEXTS = 1'b1;
		else if (addr[15:12] == 4'b0010) en_DATAS = 1'b1;
		else en_others = 1'b1;
	end
	else if (addr[31:12] == 20'h10000) en_regs = 1'b1;
	else if (addr[31:13] == 19'b0001_0000_0000_0000_001) en_textRAM = 1'b1;
	else if (addr[31:16] == 16'h1001) en_graphRAM = 1'b1;
	else if (addr[31:9] == 23'b0001_0000_0000_0010_0000_000) en_dmaRAM = 1'b1;
	else if (addr[31:22] == 10'b0001_1111_11) en_BIOS = 1'b1;
	else if (|addr[31:29]) en_DRAM = 1'b1;
	else en_others = 1'b1;
	
//regs decoder
	{en_vga_reg, en_cursor_reg, en_SEG, en_keyboard, en_switch, en_led, en_dma} = 0;
	if (en_regs) begin
		case (addr[11:0])
			12'h000: en_vga_reg = 1'b1;
			12'h004: en_cursor_reg = 1'b1;
			12'h008: en_switch = 1'b1;
			12'h00c: en_led = 1'b1;
			12'h010: en_SEG = 1'b1;
			12'h014: en_keyboard = 1'b1;
			12'h018: en_dma = 1'b1;
			default: en_others = 1'b1;
		endcase
	end
end
endmodule
