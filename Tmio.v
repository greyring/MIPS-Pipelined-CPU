`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:17:07 09/12/2017
// Design Name:   MIO
// Module Name:   F:/MyProgramme/0/PCPU/Tmio.v
// Project Name:  PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tmio;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] BTN;
	reg [15:0] SW;
	reg mem_w;
	reg [31:0] Cpu_data2bus;
	reg [31:0] addr_bus;
	reg [31:0] ram_data_out;
	reg [15:0] led_out;
	reg [31:0] counter_out;
	reg counter0_out;
	reg counter1_out;
	reg counter2_out;
	reg [31:0] vga_status;
	reg [31:0] vga_cursor_status;

	// Outputs
	wire [31:0] Cpu_data4bus;
	wire [31:0] ram_data_in;
	wire [9:0] ram_addr;
	wire data_ram_we;
	wire vga_we_t;
	wire vga_we_g;
	wire vga_we_r;
	wire vga_we_c;
	wire [12:0] vga_taddr;
	wire [18:0] vga_gaddr;
	wire [31:0] vga_data;
	wire GPIOf0000000_we;
	wire GPIOe0000000_we;
	wire counter_we;
	wire [31:0] Peripheral_in;

	// Instantiate the Unit Under Test (UUT)
	MIO uut (
		.clk(clk), 
		.rst(rst), 
		.BTN(BTN), 
		.SW(SW), 
		.mem_w(mem_w), 
		.Cpu_data2bus(Cpu_data2bus), 
		.addr_bus(addr_bus), 
		.ram_data_out(ram_data_out), 
		.led_out(led_out), 
		.counter_out(counter_out), 
		.counter0_out(counter0_out), 
		.counter1_out(counter1_out), 
		.counter2_out(counter2_out), 
		.vga_status(vga_status), 
		.vga_cursor_status(vga_cursor_status), 
		.Cpu_data4bus(Cpu_data4bus), 
		.ram_data_in(ram_data_in), 
		.ram_addr(ram_addr), 
		.data_ram_we(data_ram_we), 
		.vga_we_t(vga_we_t), 
		.vga_we_g(vga_we_g), 
		.vga_we_r(vga_we_r), 
		.vga_we_c(vga_we_c), 
		.vga_taddr(vga_taddr), 
		.vga_gaddr(vga_gaddr), 
		.vga_data(vga_data), 
		.GPIOf0000000_we(GPIOf0000000_we), 
		.GPIOe0000000_we(GPIOe0000000_we), 
		.counter_we(counter_we), 
		.Peripheral_in(Peripheral_in)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		BTN = 0;
		SW = 0;
		mem_w = 0;
		Cpu_data2bus = 0;
		addr_bus = 0;
		ram_data_out = 0;
		led_out = 0;
		counter_out = 0;
		counter0_out = 0;
		counter1_out = 0;
		counter2_out = 0;
		vga_status = 0;
		vga_cursor_status = 0;

		// Wait 100 ns for global reset to finish
		#100;
      addr_bus = 32'h8000006c;
		// Add stimulus here

	end
      
endmodule

