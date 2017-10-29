`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:02 10/29/2017
// Design Name:   addr_decoder
// Module Name:   F:/MyProgramme/0arch/PCPU/Taddr_decoder.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: addr_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Taddr_decoder;

	// Inputs
	reg [31:0] addr;

	// Outputs
	wire en_SDRAM;
	wire en_BIOS;
	wire en_vga_reg;
	wire en_cursor_reg;
	wire en_textRAM;
	wire en_graphRAM;
	wire en_DRAM;

	// Instantiate the Unit Under Test (UUT)
	addr_decoder uut (
		.addr(addr), 
		.en_SDRAM(en_SDRAM), 
		.en_BIOS(en_BIOS), 
		.en_vga_reg(en_vga_reg), 
		.en_cursor_reg(en_cursor_reg), 
		.en_textRAM(en_textRAM), 
		.en_graphRAM(en_graphRAM), 
		.en_DRAM(en_DRAM)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		//0x0000_0000-0x0fff_ffff DRAM 256M
		//0x1000_0000-0x1000_0fff regs 4K
		//0x1000_2000-0x1000_3fff text_ram 8K
		//0x1001_0000-0x1001_ffff graph_ram 64K
		//0x1fc0_0000-0x1fff_ffff IROM 4M
		//0x2000_0000-0xffff_ffff DRAM 4G-512M
		// Wait 100 ns for global reset to finish
		#100;
		addr = 32'h0fff_ffff;
		#10
		addr = 32'h1000_0000;
		#10
		addr = 32'h1000_0004;
		#10
		addr = 32'h1000_2000;
		#10
		addr = 32'h1000_3fff;
		#10
		addr = 32'h1001_0000;
		#10
		addr = 32'h1001_ffff;
		#10
		addr = 32'h1fc0_0000;
		#10
		addr = 32'h1fff_ffff;
		#10
		addr = 32'h2000_0000;
		#10
		addr = 32'hffff_ffff;
		#10
		addr = 32'h0000_0000;
		
        
		// Add stimulus here

	end
      
endmodule

