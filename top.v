`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:31 09/04/2017 
// Design Name: 
// Module Name:    top 
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
`include "define.vh"
module top(
	input clk200P,
	input clk200N,
	`ifdef DEBUG
	input clk_100mhz,
	`endif
	
    output [4:0] btn_x,
	 input [4:0] btn_y,
	 input [15:0] switch,
    input RSTN,
    
   //output led_clk,
   //output led_do,
   //output led_pen,
   output seg_clk,
   output seg_do,
   output seg_pen,
	
	output [3:0]vga_red,
	output [3:0]vga_green,
	output [3:0]vga_blue,
	output vga_h_sync,
	output vga_v_sync
    );
`ifdef DEBUG
reg [31:0]Div = 32'b0;
always @(posedge clk_100mhz)
	Div <= Div+1;
`else
wire clk_100mhz;
wire [31:0]Div;
clk_gen_sword Clk_gen(
    .clk_pad_p(clk200P), 
    .clk_pad_n(clk200N), 
    .clk_100m(clk_100mhz), 
    .clk_50m(), 
    .clk_25m(), 
    .clk_10m(), 
    .Div(Div), 
    .locked()
    );
`endif

wire [15:0]SW_OK;
wire [24:0]BTN_OK;
wire rst;
input_switch_btn Input_switch_btn(
    .clk(clk_100mhz), 
    .RSTN(RSTN), 
    .switch(switch), 
    .btn_x(btn_x), 
    .btn_y(btn_y), 
    .sw_ok(SW_OK), 
    .btn_ok(BTN_OK),
	 .cr(),
	 .rst(rst)
    );

wire Clk_CPU;
assign Clk_CPU = SW_OK[2]? Div[24]:Div[0];

wire [31:0]addr_bus;
wire [31:0]data_bus;
wire [2:0]ctrl_bus;
wire en_SRAM, en_BIOS, en_vga_reg, en_cursor_reg, en_textRAM, 
		en_graphRAM, en_DRAM, en_SEG, en_others;
addr_decoder Addr_decoder(
    .addr(addr_bus), 
    .en_SRAM(en_SRAM), .en_BIOS(en_BIOS), .en_vga_reg(en_vga_reg),     
	 .en_cursor_reg(en_cursor_reg), .en_textRAM(en_textRAM),     
	 .en_graphRAM(en_graphRAM), .en_DRAM(en_DRAM), .en_SEG(en_SEG), 
    .en_others(en_others)
    );
wire [31:0]SRAM_addr, SRAM_wdata, SRAM_rdata;
wire SRAM_r, SRAM_w;
bus_interface SRAM(
    .enable(en_SRAM), 
    .addr(addr_bus), .data(data_bus), .r(ctrl_bus[0]), .w(ctrl_bus[1]), .ready(ctrl_bus[2]), 
    .addr_(SRAM_addr), .wdata(SRAM_wdata), .rdata(SRAM_rdata), 
	 .r_(SRAM_r), .w_(SRAM_w), .ready_(1'b1)
    );
wire [31:0]vga_reg_wdata, vga_reg_rdata;
wire vga_reg_r, vga_reg_w;
bus_interface VGA_REG(
    .enable(en_vga_reg), 
    .addr(addr_bus), .data(data_bus), .r(ctrl_bus[0]), .w(ctrl_bus[1]), .ready(ctrl_bus[2]), 
    .addr_(), .wdata(vga_reg_wdata), .rdata(vga_reg_rdata), 
	 .r_(vga_reg_r), .w_(vga_reg_w), .ready_(1'b1)
    );
wire [31:0]vga_cursor_wdata, vga_cursor_rdata;
wire vga_cursor_r, vga_cursor_w;
bus_interface VGA_CURSOR(
    .enable(en_cursor_reg), 
    .addr(addr_bus), .data(data_bus), .r(ctrl_bus[0]), .w(ctrl_bus[1]), .ready(ctrl_bus[2]), 
    .addr_(), .wdata(vga_cursor_wdata), .rdata(vga_cursor_rdata), 
	 .r_(vga_cursor_r), .w_(vga_cursor_w), .ready_(1'b1)
    );
wire [31:0]vga_text_addr, vga_text_wdata, vga_text_rdata;
wire vga_text_r, vga_text_w;
bus_interface VGA_TEXT(
    .enable(en_textRAM), 
    .addr(addr_bus), .data(data_bus), .r(ctrl_bus[0]), .w(ctrl_bus[1]), .ready(ctrl_bus[2]), 
    .addr_(vga_text_addr), .wdata(vga_text_wdata), .rdata(vga_text_rdata), 
	 .r_(vga_text_r), .w_(vga_text_w), .ready_(1'b1)
    );
wire [31:0]vga_graph_addr, vga_graph_wdata, vga_graph_rdata;
wire vga_graph_r, vga_graph_w;
bus_interface VGA_GRAPH(
    .enable(en_graphRAM), 
    .addr(addr_bus), .data(data_bus), .r(ctrl_bus[0]), .w(ctrl_bus[1]), .ready(ctrl_bus[2]), 
    .addr_(vga_graph_addr), .wdata(vga_graph_wdata), .rdata(vga_graph_rdata), 
	 .r_(vga_graph_r), .w_(vga_graph_w), .ready_(1'b1)
    );
wire SEG_r, SEG_w;
wire [31:0]SEG_wdata;
bus_interface SEG(
    .enable(en_SEG), 
    .addr(addr_bus), .data(data_bus), .r(ctrl_bus[0]), .w(ctrl_bus[1]), .ready(ctrl_bus[2]), 
    .addr_(), .wdata(SEG_wdata), .rdata(32'h0), 
	 .r_(SEG_r), .w_(SEG_w), .ready_(1'b1)
    );
	 
wire [31:0]Disp_num;
wire [7:0]point_out;
wire [7:0]LE_out;
	 Display display(
    .clk(clk_100mhz), 
    .rst(rst), 
    .Start(Div[20]), 
    .Text(SW_OK[0]), 
    .flash(Div[25]), 
    .Hexs(Disp_num), 
    .point(point_out), 
    .LES(LE_out), 
    .segclk(seg_clk), 
    .segsout(seg_do), 
    .SEGEN(seg_pen), 
    .segclrn()
    );

wire [31:0]PC;
wire [31:0]inst;
//wire [31:0]Addr_out;
//wire [31:0]Data_out;
wire [31:0]Data_in;
wire [31:0]cause_data;
wire [31:0]status_data;
	Multi_8CH32  multi_8ch32(
		.clk(~Clk_CPU), 
		.Data0(SEG_wdata), 
		.data1(cause_data[31:0]), 
		.data2(inst[31:0]), 
		.data3(status_data[31:0]), 
		.data4(addr_bus[31:0]), 
		.data5(data_bus[31:0]), 
		.data6(Data_in[31:0]), 
		.data7(PC[31:0]), 
		.EN(SEG_w), 
		.LES(64'b0), 
		.point_in({Div[31:0], Div[31:0]}), 
		.rst(rst), 
		.Test(SW_OK[7:5]), 
		.Disp_num(Disp_num), 
		.LE_out(LE_out), 
		.point_out(point_out)
		);

vga_controller Vga_controller(
    .clk(clk_100mhz), 
    .rst(rst), 
    .clk_vga(Div[1]), 
    .clk_cursor(Div[25]), 
    .we_text(vga_text_w), 
    .we_graph(vga_graph_w), 
    .we_cursor(vga_cursor_w), 
    .we_reg(vga_reg_w), 
	 .rd_text(vga_text_r), 
    .rd_graph(vga_graph_r), 
    .rd_cursor(vga_cursor_r), 
    .rd_reg(vga_reg_r), 
    .text_addr(vga_text_addr), 
    .text_wdata(vga_text_wdata), 
    .text_rdata(vga_text_rdata), 
    .graph_addr(vga_graph_addr), 
    .graph_wdata(vga_graph_wdata), 
    .graph_rdata(vga_graph_rdata), 
    .cursor_wdata(vga_cursor_wdata), 
    .cursor_rdata(vga_cursor_rdata), 
    .reg_wdata(vga_reg_wdata), 
    .reg_rdata(vga_reg_rdata), 
    .r(vga_red), 
    .g(vga_green), 
    .b(vga_blue), 
    .hsync(vga_h_sync), 
    .vsync(vga_v_sync), 
    .busy()
    );
/*
wire [1:0]counter_set;
GPIO gpio(
    .clk(~Clk_CPU), 
    .rst(rst), 
    .EN(GPIOf0000000_we), 
    .Start(Div[20]), 
    .P_Data(Peripheral_in), 
    .counter_set(counter_set), 
    .LED_out(LED_out), 
    .ledclk(led_clk), 
    .ledsout(led_do), 
    .LEDEN(led_pen)
    );

	Counter  counter(
		.clk(~Clk_CPU), 
	  .clk0(Div[6]), 
	  .clk1(Div[9]), 
	  .clk2(Div[11]), 
	  .counter_ch(counter_set), 
	  .counter_val(Peripheral_in), 
	  .counter_we(counter_we), 
	  `ifdef DEBUG
	  .rst(RSTN),
	  `else
	  .rst(rst), 
	  `endif
	  .counter_out(Counter_out), 
	  .counter0_OUT(counter0_OUT), 
	  .counter1_OUT(counter1_OUT), 
	  .counter2_OUT(counter2_OUT)
	  );
*/
wire [31:0]CPU_wdata;
   PCPU_v PCPU(
		.clk(Clk_CPU & ~SW_OK[15]), 
		`ifdef DEBUG
		.rst(RSTN),
		`else
		.rst(rst),
		`endif
		.int_(5'b0),
		.mem_we(ctrl_bus[1]), 
		.mem_rd(ctrl_bus[0]),
		.mem_addr(addr_bus), 
		.mem_data(CPU_wdata), 
		.inst_addr(PC), 
		.inst_data(inst), 
		.cause_data(cause_data),
		.status_data(status_data),
		.mem_data_in(data_bus)
   );
assign data_bus = ctrl_bus[1] ? CPU_wdata : 32'hz;
/*
bus Bus(
    .master_addr(master_addr), 
    .master_data_w(master_data_w), 
    .master_data_r(master_data_r), 
    .master_rw(master_rw), 
    .IROM_addr(IROM_addr), 
    .IROM_data(IROM_data), 
    .SRAM_addr(SRAM_addr), 
    .SRAM_data_r(SRAM_data_r), 
    .SRAM_data_w(SRAM_data_w), 
    .SRAM_rw(SRAM_rw), 
    .vga_text_addr(vga_text_addr), 
    .vga_text_data_r(vga_text_data_r), 
    .vga_text_data_w(vga_text_data_w), 
    .vga_text_rw(vga_text_rw), 
    .vga_graph_addr(vga_graph_addr), 
    .vga_graph_data_r(vga_graph_data_r), 
    .vga_graph_data_w(vga_graph_data_w), 
    .vga_graph_rw(vga_graph_rw), 
    .vga_reg_data_r(vga_reg_data_r), 
    .vga_reg_data_w(vga_reg_data_w), 
    .vga_reg_rw(vga_reg_rw), 
    .vga_cursor_data_r(vga_cursor_data_r), 
    .vga_cursor_data_w(vga_cursor_data_w), 
    .vga_cursor_rw(vga_cursor_rw)
    );
*/
	
	Data_RAM Data_RAM_(
	  .clka(~Clk_CPU), 
	  .wea(SRAM_w), 
	  .addra(SRAM_addr[11:2]), 
	  .dina(SRAM_wdata), 
	  .douta(SRAM_rdata) 
	);
	
	Inst_ROM Inst_ROM_(
	  .clka(~Clk_CPU), 
	  .addra(PC[11:2]), // addra,要移动两位
	  .douta(inst) 
	);
	  

endmodule
