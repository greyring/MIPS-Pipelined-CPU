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
	output master_ready,
	
	output[31:0]IROM_addr,
	input [31:0]IROM_data_r,
	output[31:0]IROM_data_w,
	output [1:0]IROM_rw,
	
	output[31:0]SRAM_addr,
	input [31:0]SRAM_data_r,
	output[31:0]SRAM_data_w,
	output [1:0]SRAM_rw,
	
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
	output [1:0]vga_cursor_rw,
	
	input [31:0]seg_data_r,
	output[31:0]seg_data_w,
	output [1:0]seg_rw
	
    );

wire [31:0]addr_bus;
wire[31:0]data_bus;
wire [1:0]control_bus;//1: w 0: r
wire ready_bus;

wire en_SRAM, en_IROM, en_vga_reg, en_cursor_reg,
		en_textRAM, en_graphRAM, en_DRAM, en_SEG,
		en_others;
addr_decoder Addr_decoder(
    .addr(master_addr), 
    .en_SRAM(en_SRAM), 
    .en_BIOS(en_IROM), 
    .en_vga_reg(en_vga_reg), 
    .en_cursor_reg(en_cursor_reg), 
    .en_textRAM(en_textRAM), 
    .en_graphRAM(en_graphRAM), 
    .en_DRAM(en_DRAM),
	 .en_SEG(en_SEG),
	 .en_others(en_others)
    );

//0x0000_0000-0x0fff_ffff SRAM 256M
//0x1000_0000-0x1000_0fff regs 4K
//0x1000_2000-0x1000_3fff text_ram 8K
//0x1001_0000-0x1001_ffff graph_ram 64K
//0x1fc0_0000-0x1fff_ffff IROM 4M
//0x2000_0000-0xffff_ffff DRAM 4G-512M
//////////////////////////////////address
assign addr_bus         = master_addr;
assign IROM_addr        = {10'b0, addr_bus[21:0]};
assign SRAM_addr        = {4'b0, addr_bus[27:0]};
assign vga_text_addr    = {19'b0, addr_bus[12:0]};
assign vga_graph_addr   = {16'b0, addr_bus[15:0]};
//////////////////////////////////control
assign control_bus[1:0] = master_rw;
assign IROM_rw          = control_bus[1:0] & {2{en_IROM}};
assign SRAM_rw          = control_bus[1:0] & {2{en_SRAM}};
assign vga_text_rw      = control_bus[1:0] & {2{en_textRAM}};
assign vga_graph_rw     = control_bus[1:0] & {2{en_graphRAM}};
assign vga_reg_rw       = control_bus[1:0] & {2{en_vga_reg}};
assign vga_cursor_rw    = control_bus[1:0] & {2{en_cursor_reg}};
assign seg_rw           = control_bus[1:0] & {2{en_SEG}};
//////////////////////////////////data
assign data_bus = master_rw[1]      ? master_data_w      : 32'bz;
assign data_bus = IROM_rw[0]        ? IROM_data_r        : 32'bz;
assign data_bus = SRAM_rw[0]        ? SRAM_data_r        : 32'bz;
assign data_bus = vga_text_rw[0]    ? vga_text_data_r    : 32'bz;
assign data_bus = vga_graph_rw[0]   ? vga_graph_data_r   : 32'bz;
assign data_bus = vga_reg_rw[0]     ? vga_reg_data_r     : 32'bz;
assign data_bus = vga_cursor_rw[0]  ? vga_cursor_data_r  : 32'bz;
assign data_bus = seg_rw[0]         ? seg_data_r         : 32'bz;

assign master_data_r       = data_bus;
assign IROM_data_w         = data_bus;
assign SRAM_data_w         = data_bus;
assign vga_text_data_w     = data_bus;
assign vga_graph_data_w    = data_bus;
assign vga_reg_data_w      = data_bus;
assign vga_cursor_data_w   = data_bus;
assign seg_data_w          = data_bus;
/////////////////////////////////ready
assign ready_bus = IROM_rw[0]        ? 1'b1 : 1'bz;
assign ready_bus = SRAM_rw[0]        ? 1'b1 : 1'bz;
assign ready_bus = vga_text_rw[0]    ? 1'b1 : 1'bz;
assign ready_bus = vga_graph_rw[0]   ? 1'b1 : 1'bz;
assign ready_bus = vga_reg_rw[0]     ? 1'b1 : 1'bz;
assign ready_bus = vga_cursor_rw[0]  ? 1'b1 : 1'bz;
assign ready_bus = seg_rw[0]         ? 1'b1 : 1'bz;
assign ready_bus = en_others         ? 1'b1 : 1'bz;
assign master_ready = ready_bus;

endmodule
