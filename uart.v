module uart (
reset          ,
txclk          ,
ld_tx_data     , // load transmit data
tx_data        , // data to transmit  7:0
tx_enable      ,
tx_out         , // transmit data (1bit)
tx_empty       ,
rxclk          ,
uld_rx_data    ,  // unload receive data (0/1) whether to unload
rx_data        ,  // received data 7:0
rx_enable      ,
rx_in          ,  // receive data input(1bit)
rx_ready
);
// Port declarations
input        reset          ;
input        txclk          ;
input        ld_tx_data     ;
input  [7:0] tx_data        ;
input        tx_enable      ;
output       tx_out         ;
output       tx_empty       ;
input        rxclk          ;
input        uld_rx_data    ;
output [7:0] rx_data        ;
input        rx_enable      ;
input        rx_in          ;
output       rx_ready       ;

// Internal Variables 
reg [7:0]    tx_reg         ;
reg          tx_empty       ;
reg          tx_over_run    ;
reg [3:0]    tx_cnt         ;
reg          tx_out         ;
reg [7:0]    rx_reg         ;
reg [7:0]    rx_data        ;
reg [3:0]    rx_cnt         ;  
reg          rx_ready       ;
reg          rx_busy        ;

// UART RX Logic
always @ (posedge rxclk or posedge reset)
if (reset) begin
  rx_reg        <= 0; 
  rx_data       <= 0;
  rx_cnt        <= 0;
  rx_ready      <= 0;
  rx_busy       <= 0;
end else begin
  // Synchronize the asynch signal
  // Uload the rx data
  if (uld_rx_data) begin
    rx_ready <= 0;
  end
  // Receive data only when rx is enabled
  if (rx_enable) begin
    // Check if just received start of frame
    if (~rx_busy & ~rx_in) begin
      rx_busy       <= 1;
      rx_cnt        <= 0;
    end
    // Start of frame detected, Proceed with rest of data
    if (rx_busy) begin
		rx_cnt <= rx_cnt + 4'b1; 
		// Start storing the rx data
		if (rx_cnt < 8) begin  // 8 bits data 0--7
		  rx_reg[rx_cnt] <= rx_in;
		end
		else begin
			rx_busy <= 0;
			// Check if End of frame received correctly
			if (rx_in) begin
			  rx_data <= rx_reg;
			  rx_ready  <= 1;
			end
		end
    end 
  end
  else begin
    rx_busy <= 0;
  end
end

// UART TX Logic
always @ (posedge txclk or posedge reset)
if (reset) begin
  tx_reg        <= 0;
  tx_empty      <= 1;
  tx_out        <= 1;
  tx_cnt        <= 0;
end else begin
   if (ld_tx_data) begin
        tx_reg   <= tx_data;
        tx_empty <= 0;
   end
   if (tx_enable && !tx_empty) begin
     tx_cnt <= tx_cnt + 1'b1;
     if (tx_cnt == 0) begin
       tx_out <= 0;
     end
     if (tx_cnt > 0 && tx_cnt < 9) begin
        tx_out <= tx_reg[tx_cnt -1];
     end
     if (tx_cnt == 9) begin
       tx_out <= 1;
       tx_cnt <= 0;
       tx_empty <= 1;
     end
   end
   if (!tx_enable) begin
     tx_cnt <= 0;
   end
end

endmodule