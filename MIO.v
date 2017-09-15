`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:25 09/05/2017 
// Design Name: 
// Module Name:    MIO 
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
module MIO(
input wire clk, 
input wire rst,
input wire [3:0] BTN, 
input wire [15:0]SW,
input wire mem_w,
input wire mem_rd,
input wire [31:0] Cpu_data2bus, //data from CPU
input wire [31:0] addr_bus, //addr from CPU
input wire [31:0] ram_data_out,
input wire [15:0] led_out,
input wire [31:0] counter_out,
input wire counter0_out,
input wire counter1_out,
input wire counter2_out,

input wire [31:0]vga_status,
input wire [31:0]vga_cursor_status,

output reg [31:0] Cpu_data4bus, //write to CPU
output reg [31:0] ram_data_in, //from CPU write to Memory
output reg [9: 0] ram_addr, //Memory Address signals
output reg data_ram_we,

output reg vga_we_t,//text��ʾ��д��
output reg vga_we_g,//graph��ʾ��д��
output reg vga_we_r,//vga�Ĵ���д��
output reg vga_we_c,//cursorд��
output reg [12:0]vga_taddr,//textд���ַ
output reg [18:0]vga_gaddr,//graphд���ַ
output reg [31:0]vga_data,//д������

output reg GPIOf0000000_we, // GPIOffffff00_we
output reg GPIOe0000000_we, // GPIOfffffe00_we
output reg counter_we, //������
output reg [31:0] Peripheral_in //���ⲿ�豸����

    );
	 
	 reg data_ram_rd, GPIOf0000000_rd, GPIOe0000000_rd, counter_rd;
	 reg vga_rd, vga_cur_rd;
wire counter_over; //��������

//RAM & IO decode signals:
always @* begin
data_ram_we = 0; //����д�ź�
data_ram_rd = 0; //������ź�
counter_we = 0; //������д�ź�
counter_rd = 0; //���������ź�
GPIOf0000000_we = 0; //�豸1�� PIOд�ź�
GPIOe0000000_we = 0; //�������� Counter_xд�ź�
GPIOf0000000_rd = 0; //�豸3�� 4�� SW�ȶ��ź�
GPIOe0000000_rd = 0; //�豸2���߶���ʾ��д�ź�
ram_addr = 10'h0; //�ڴ������ַ�� RAM_B��ַ
ram_data_in = 32'h0; //�ڴ�����ݣ� RAM_B�������
Peripheral_in=32'h0; //�������ߣ� CPU���������д������
vga_we_t = 0;
vga_we_g = 0;
vga_we_c = 0;
vga_we_r = 0;
vga_rd = 0;
vga_cur_rd = 0;
vga_taddr = 0;
vga_gaddr = 0;
vga_data = 0;
casex(addr_bus[31:0]) //��ʼ����
	32'h0xxxxxxx: begin // data_ram (00000000 - 00000ffc, actually lower 4KB RAM)
	data_ram_we = mem_w;
	ram_addr = addr_bus[11:2];
	ram_data_in = Cpu_data2bus;
	data_ram_rd = mem_rd;
	end
	
	32'hb8xxxxxx: begin//text ��ʾ��
	vga_we_t = mem_w;//text��ʾ��д��
	vga_taddr = addr_bus[14:2];
	vga_data = Cpu_data2bus;
	end
	
	32'hb1000000: begin//cursor���� [28:17]color [15:3]addr [1:0]��״
	vga_we_c = mem_w;
	vga_data = Cpu_data2bus;
	vga_cur_rd = mem_rd;
	end
	
	32'haxxxxxxx: begin//graph ��ʾ��
	vga_we_g = mem_w;//graph��ʾ��д��
	vga_gaddr = addr_bus[20:2];
	vga_data = Cpu_data2bus;
	end
	
	32'hb0000000: begin//vga_reg[1:0]ģʽ
	vga_we_r = mem_w;//regд��
	vga_data = Cpu_data2bus;
	vga_rd = mem_rd;
	end
	
	32'hexxxxxxx: begin // �߶���ʾ�� (e0000000 - efffffff, SSeg7_Dev)
	GPIOe0000000_we = mem_w;
	Peripheral_in = Cpu_data2bus;
	GPIOe0000000_rd = mem_rd;
	end
	
	32'hfxxxxxxx: begin // PIO (f0000000 - ffffffff0, 8 LEDs& counter, f000004-fffffff4)
		if(addr_bus[2]) begin //f0000004
		counter_we = mem_w;
		Peripheral_in = Cpu_data2bus; //write Counter Value
		counter_rd = mem_rd;
		end
		else begin //f0000000
		GPIOf0000000_we = mem_w;
		Peripheral_in =Cpu_data2bus; //write Counter set & Initialization and light LED
		GPIOf0000000_rd = mem_rd;
		end
	end
	
	default: begin
		data_ram_we = 1'b0;
		{vga_we_t, vga_we_g, vga_we_r} = 3'b0;
		GPIOf0000000_we = 1'b0; // GPIOffffff00_we
		GPIOe0000000_we = 1'b0; // GPIOfffffe00_we
		counter_we = 1'b0; //������
	end
	
endcase

	Cpu_data4bus = 32'h0;
	casex({data_ram_rd, GPIOe0000000_rd,counter_rd, GPIOf0000000_rd, vga_rd, vga_cur_rd})
		6'b1xxxxx: Cpu_data4bus = ram_data_out; //read from RAM
		6'bx1xxxx: Cpu_data4bus = counter_out; //read from Counter
		6'bxx1xxx: Cpu_data4bus = counter_out; //read from Counter
		6'bxxx1xx: Cpu_data4bus = {counter0_out,2'b0,//counter1_out,counter2_out,
		led_out[12:0], SW}; //read from SW & BTN
		6'bxxxx1x: Cpu_data4bus = vga_status;
		6'bxxxxx1: Cpu_data4bus = vga_cursor_status;
		default: Cpu_data4bus = 32'b0;
	endcase

end

endmodule
