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
    
   output led_clk,
   output led_do,
   output led_pen,
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
	 
wire [31:0]Peripheral_in;
wire GPIOe0000000_we;
wire [31:0]PC;
wire [31:0]inst;
wire [31:0]Counter_out;
wire [31:0]Addr_out;
wire [31:0]Data_out;
wire [31:0]Data_in;
wire [31:0]cause_data;
wire [31:0]status_data;
	Multi_8CH32  multi_8ch32(
		.clk(~Clk_CPU), 
		.Data0(Peripheral_in), 
		.data1(cause_data[31:0]), 
		.data2(inst[31:0]), 
		.data3(status_data[31:0]), 
		.data4(Addr_out[31:0]), 
		.data5(Data_out[31:0]), 
		.data6(Data_in[31:0]), 
		.data7(PC[31:0]), 
		.EN(GPIOe0000000_we), 
		.LES(64'b0), 
		.point_in({Div[31:0], Div[31:0]}), 
		.rst(rst), 
		.Test(SW_OK[7:5]), 
		.Disp_num(Disp_num), 
		.LE_out(LE_out), 
		.point_out(point_out)
		);

wire counter0_OUT,counter1_OUT,counter2_OUT;
wire [15:0]LED_out;
wire mem_w;
wire mem_rd;
wire [31:0]ram_data_in;
wire counter_we;
wire data_ram_we;
wire GPIOf0000000_we;
wire [9:0]ram_addr;
wire [31:0]douta;
wire vga_we_t, vga_we_g, vga_we_c, vga_we_r;
wire vga_rd_t, vga_rd_g, vga_rd_c, vga_rd_r;
wire [31:0]vga_addr;
wire [31:0]vga_data;
wire [31:0]vga_data_out;
MIO  mio_bus(
	  .addr_bus(Addr_out[31:0]), 
	  .counter_out(Counter_out), 
	  .counter0_out(counter0_OUT), 
	  .counter1_out(counter1_OUT), 
	  .counter2_out(counter2_OUT), 
	  .Cpu_data2bus(Data_out[31:0]), 
	  .led_out(LED_out), 
	  .mem_w(mem_w), 
	  .mem_rd(mem_rd),
	  .ram_data_out(douta), 
	  .SW(SW_OK), 
	  .counter_we(counter_we), 
	  .Cpu_data4bus(Data_in), 
	  .data_ram_we(data_ram_we), 
	  .GPIOe0000000_we(GPIOe0000000_we), 
	  .GPIOf0000000_we(GPIOf0000000_we), 
	  .Peripheral_in(Peripheral_in), 
	  .ram_addr(ram_addr), 
	  .ram_data_in(ram_data_in),
	  .vga_data_out(vga_data_out),
	  .vga_we_t(vga_we_t),
	  .vga_we_g(vga_we_g),
	  .vga_we_c(vga_we_c),
	  .vga_we_r(vga_we_r),
	  .vga_rd_t(vga_rd_t),
	  .vga_rd_g(vga_rd_g),
	  .vga_rd_c(vga_rd_c),
	  .vga_rd_r(vga_rd_r),
	  .vga_addr(vga_addr),
	  .vga_data(vga_data)
	  );

vga_controller Vga_controller(
    .clk(clk_100mhz), 
    .rst(rst), 
    .clk_vga(Div[1]), 
    .clk_cursor(Div[25]), 
    .we_text(vga_we_t), 
    .we_graph(vga_we_g), 
    .we_cursor(vga_we_c), 
    .we_reg(vga_we_r), 
    .rd_text(vga_rd_t), 
    .rd_graph(vga_rd_g), 
    .rd_cursor(vga_rd_c), 
    .rd_reg(vga_rd_r), 
    .addr_in(vga_addr), 
    .data_in(vga_data), 
    .data_out(vga_data_out), 
    .r(vga_red), 
    .g(vga_green), 
    .b(vga_blue), 
    .hsync(vga_h_sync), 
    .vsync(vga_v_sync), 
    .busy()
    );
	  
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

   PCPU_v PCPU(
		.clk(Clk_CPU & ~SW_OK[15]), 
		`ifdef DEBUG
		.rst(RSTN),
		`else
		.rst(rst),
		`endif
		.int_(5'b0),
		.mem_we(mem_w), 
		.mem_rd(mem_rd),
		.mem_addr(Addr_out), 
		.mem_data(Data_out), 
		.inst_addr(PC), 
		.inst_data(inst), 
		.cause_data(cause_data),
		.status_data(status_data),
		.mem_data_in(Data_in)
   );
	
	Data_RAM Data_RAM_(
	  .clka(~Clk_CPU), 
	  .wea(data_ram_we), 
	  .addra(ram_addr[9:0]), 
	  .dina(ram_data_in), 
	  .douta(douta) 
	);
	
	Inst_ROM Inst_ROM_(
	  .clka(~Clk_CPU), 
	  .addra(PC[11:2]), // addra,要移动两位
	  .douta(inst) 
	);
	  

endmodule
