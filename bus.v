`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:57 10/29/2017 
// Design Name: 
// Module Name:    bus 
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
module bus(
	input [31:0]master_addr,
	input [31:0]master_data_w,
	output[31:0]master_data_r,
	input [1:0]master_rw,
	
	output[31:0]IROM_addr,
	input [31:0]IROM_data,
	
	output[31:0]DRAM_addr,
	input [31:0]DRAM_data_r,
	output[31:0]DRAM_data_w,
	output [1:0]DRAM_rw,
	
	output[31:0]vga_text_addr,
	input [31:0]vga_text_data_r,
	output[31:0]vga_text_data_w,
	output [1:0]vga_text_rw,
	
	output[31:0]vga_graph_addr,
	input [31:0]vga_graph_data_r,
	output[31:0]vga_graph_data_w,
	output [1:0]vga_graph_rw,
	
	input [31:0]vga_reg_data_r,
	output [31:0]vga_reg_data_w,
	output [1:0]vga_reg_rw,
	
	input [31:0]vga_cursor_data_r,
	output[31:0]vga_cursor_data_w,
	output [1:0]vga_cursor_rw
    );

wire en_SDRAM, en_BIOS, en_vga_reg, en_cursor_reg,
		en_textRAM, en_graphRAM, en_DRAM;
addr_decoder Addr_decoder(
    .addr(master_addr), 
    .en_SDRAM(en_SDRAM), 
    .en_BIOS(en_BIOS), 
    .en_vga_reg(en_vga_reg), 
    .en_cursor_reg(en_cursor_reg), 
    .en_textRAM(en_textRAM), 
    .en_graphRAM(en_graphRAM), 
    .en_DRAM(en_DRAM)
    );
	 
wire [31:0]addr_bus;
wire[31:0]data_bus;
wire [1:0]control_bus;

//0x0000_0000-0x0fff_ffff DRAM 256M
//0x1000_0000-0x1000_0fff regs 4K
//0x1000_2000-0x1000_3fff text_ram 8K
//0x1001_0000-0x1001_ffff graph_ram 64K
//0x1fc0_0000-0x1fff_ffff IROM 4M
//0x2000_0000-0xffff_ffff DRAM 4G-512M
assign addr_bus = master_addr;
assign IROM_addr = {10'b0, addr_bus[21:0]};
assign DRAM_addr = {4'b0, addr_bus[27:0]};
assign vga_text_addr = {19'b0, addr_bus[12:0]};
assign vga_graph_addr = {16'b0, addr_bus[15:0]};

//////////////////////////////////control
assign control_bus = master_rw;
assign DRAM_rw = control_bus & {en_SDRAM, en_SDRAM};
assign vga_text_rw = control_bus & {en_textRAM, en_textRAM};
assign vga_graph_rw = control_bus & {en_graphRAM, en_graphRAM};
assign vga_reg_rw = control_bus & {en_vga_reg, en_vga_reg};
assign vga_cursor_rw = control_bus & {en_cursor_reg, en_cursor_reg};

//////////////////////////////////data
assign data_bus = master_rw[1] ? master_data_w : 32'bz;
assign data_bus = (en_BIOS & master_rw[0]) ? IROM_data : 32'bz;
assign data_bus = (en_SDRAM & master_rw[0]) ? DRAM_data_r : 32'bz;
assign data_bus = (en_textRAM & master_rw[0]) ? vga_text_data_r : 32'bz;
assign data_bus = (en_graphRAM & master_rw[0]) ? vga_graph_data_r : 32'bz;
assign data_bus = (en_vga_reg & master_rw[0]) ? vga_reg_data_r : 32'bz;
assign data_bus = (en_cursor_reg & master_rw[0]) ? vga_cursor_data_r : 32'bz;
assign master_data_r = data_bus;
assign DRAM_data_w = data_bus;
assign vga_text_data_w = data_bus;
assign vga_graph_data_w = data_bus;
assign vga_reg_data_w = data_bus;
assign vga_cursor_data_w = data_bus;

endmodule
