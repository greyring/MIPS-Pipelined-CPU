`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:32 12/31/2017 
// Design Name: 
// Module Name:    uart_controller 
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
module uart_controller(
	input clk,
	input clk_CPU,
	input rst,
	
	input [3:0]we,
	input rd,
	input [31:0]wdata,
	output [31:0]status,
	
	output reg [3:0]mem_we,
	output [31:0]mem_addr,
	input  [31:0]mem_rdata,
	output reg [31:0]mem_wdata,
	
	input rx_in,
	output tx_out
    );

reg [15:0]LSA = 0;//logical sector address on disk
reg Start     = 0;
reg R_W       = 0;
reg Ready     = 0;
reg sed_all = 0;
reg rec_all = 0;
always @(posedge clk_CPU) begin
	if (rst)
		LSA <= 0;
	else begin
		LSA <= LSA;
		if (we[3])
			LSA[15:8] <= wdata[31:24];
		if (we[2])
			LSA[7:0]  <= wdata[23:16];
	end
end
always @(posedge clk_CPU) begin
	if (rst)
		Start <= 0;
	else if (we[0])
		Start <= wdata[5];
	else
		Start <= 0;
end
always @(posedge clk_CPU) begin
	if (rst)
		R_W <= 0;
	else if (we[0])
		R_W <= wdata[4];
	else
		R_W <= R_W;
end

reg w_tdata;
reg [7:0]tx_data;
wire [7:0]rx_data;

wire rx_ack;
wire tx_ready, rx_ready;
reg [1:0]rx_ready_;

always @(posedge clk) begin
	rx_ready_ <= {rx_ready_[0], rx_ack};
end
assign rx_ready = (rx_ready_ == 2'b01);

//FSM
parameter INIT = 0;
parameter RX_FF = 1;
parameter RX_FLAG = 2;
parameter RX_LSA0 = 3;
parameter RX_LSA1 = 9;
parameter RX_REC = 4;
parameter TX_FF = 5;
parameter TX_FLAG = 6;
parameter TX_LSA0 = 7;
parameter TX_LSA1 = 10;
parameter TX_SED = 8;
reg [3:0]state = INIT;
reg [3:0]nxtstate;
reg [9:0]byte_count;
wire [7:0]buf_tdata[3:0];

always @(posedge clk) begin
	if (rst)
		state <= INIT;
	else
		state <= nxtstate;
end

always @* begin
	if (rst)
		nxtstate = 0;
	else begin
		case (state)
			INIT: 		if (Start & R_W & ~Ready) nxtstate = TX_FF;
							else if (Start & ~R_W & ~Ready) nxtstate = RX_FF;
							else nxtstate = INIT;
			RX_FF:		if (tx_ready) nxtstate = RX_FLAG;
							else nxtstate = RX_FF;
			RX_FLAG:		if (tx_ready) nxtstate = RX_LSA0;
							else nxtstate = RX_FLAG;
			RX_LSA0:		if (tx_ready) nxtstate = RX_LSA1;
							else nxtstate = RX_LSA0;
			RX_LSA1:		if (tx_ready) nxtstate = RX_REC;
							else nxtstate = RX_LSA1;
			RX_REC:		if (rec_all) nxtstate = INIT;
							else nxtstate = RX_REC;
			TX_FF:		if (tx_ready) nxtstate = TX_FLAG;
							else nxtstate = TX_FF;
			TX_FLAG:		if (tx_ready) nxtstate = TX_LSA0;
							else nxtstate = TX_FLAG;
			TX_LSA0:		if (tx_ready) nxtstate = TX_LSA1;
							else nxtstate = TX_LSA0;
			TX_LSA1:		if (tx_ready) nxtstate = TX_SED;
							else nxtstate = TX_LSA1;
			TX_SED:		if (sed_all) nxtstate = INIT;
							else nxtstate = TX_SED;
			default: nxtstate = 0;
		endcase
	end
end

always @(posedge clk) begin
	if (rst)
		byte_count <= 0;
	else if (state == RX_REC) begin
		if (rx_ready)
			byte_count <= byte_count + 1'b1;
	end
	else if (state == TX_LSA1 || state == TX_SED) begin
		if (tx_ready)
			byte_count <= byte_count + 1'b1;
	end
	else
		byte_count <= 0;
end

always @(posedge clk) begin
	if (rst |(|we))
		Ready <= 0;
	else if (sed_all | rec_all)
		Ready <= 1'b1;
	else
		Ready <= Ready;
end

assign {buf_tdata[3], buf_tdata[2], buf_tdata[1], buf_tdata[0]} = mem_rdata;
always @* begin
	if (rst)
		{sed_all, rec_all,
		w_tdata, tx_data,
		mem_we, mem_wdata} = 0;
	else begin
		{sed_all, rec_all,
		w_tdata, tx_data,
		mem_we, mem_wdata} = 0;
		case (state)
			INIT:		begin 
							if (Start & ~Ready) begin
								w_tdata = 1'b1;
								tx_data = 8'hff;
							end
						end
			RX_FF: 	begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = 8'h00;
							end
						end
			RX_FLAG: begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = LSA[7:0];
							end
						end
			RX_LSA0: begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = LSA[15:8];
							end
						end
			RX_LSA1: begin
						end
			RX_REC:	begin
							if (rx_ready) begin
								case (byte_count[1:0])
									2'b00: begin mem_we = 4'b0001; mem_wdata = {24'b0, rx_data}; end
									2'b01: begin mem_we = 4'b0010; mem_wdata = {16'b0, rx_data, 8'b0}; end
									2'b10: begin mem_we = 4'b0100; mem_wdata = {8'b0, rx_data, 16'b0}; end
									2'b11: begin mem_we = 4'b1000; mem_wdata = {rx_data, 24'b0}; end
								endcase
								if (byte_count == 10'd511)
									rec_all = 1'b1;
							end
						end
			TX_FF :	begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = 8'h01;
							end
						end
			TX_FLAG:	begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = LSA[7:0];
							end
						end
			TX_LSA0:	begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = LSA[15:8];
							end
						end
			TX_LSA1:	begin
							if (tx_ready) begin
								w_tdata = 1'b1;
								tx_data = buf_tdata[byte_count & 2'b11];
							end
						end
			TX_SED :	begin
							if (tx_ready) begin
								if (byte_count < 10'd512) begin
									w_tdata = 1'b1;
									tx_data = buf_tdata[byte_count & 2'b11];
								end
								else
									sed_all = 1'b1;
							end
						end
			endcase
	end
end

assign mem_addr = {23'b0, byte_count[8:0]};

UART_T Uart_T(
    .clk(clk), 
    .Tx(tx_out), 
    .din(tx_data), 
    .ready(w_tdata), 
    .ack(tx_ready), 
    .busy()
    );

UART_R Uart_R(
    .clk(clk), 
    .Rx(rx_in), 
    .dout(rx_data), 
    .ready(rx_ack), 
    .busy()
    );

assign status = {LSA, 9'b0, Ready, Start, R_W, 4'b0};
endmodule
