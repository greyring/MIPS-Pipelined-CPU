// Verilog test fixture created from schematic F:\MyProgramme\0\PCPU\PCPU.sch - Tue Sep 05 11:13:55 2017

`timescale 1ns / 1ps

module PCPU_PCPU_sch_tb();

// Inputs
   reg clk;
   reg rst;
   reg [31:0] inst_data;

// Output
   wire mem_we;
   wire [31:0] mem_addr;
   wire [31:0] mem_data;
   wire [31:0] inst_addr;

// Bidirs

// Instantiate the UUT
   PCPU UUT (
		.clk(clk), 
		.rst(rst), 
		.mem_we(mem_we), 
		.mem_addr(mem_addr), 
		.mem_data(mem_data), 
		.inst_addr(inst_addr), 
		.inst_data(inst_data)
   );
// Initialize Inputs
    initial begin
		clk = 0;
		rst = 0;
		inst_data = 0;
	end
endmodule
