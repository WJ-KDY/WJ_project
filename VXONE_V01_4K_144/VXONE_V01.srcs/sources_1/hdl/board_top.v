module board_top #(
    parameter   BUILD_DATE  = 32'h20231026,
    parameter   SIMULATION  = 0,
    parameter   CH_NUM      = 32,  // vx1 channel number
    parameter   DW          = 32,
    parameter   CW          = 16,
    parameter   FRAME_RATE  = 144,
    parameter   VIDEO_TIMING = "4K")(  // vx1 link data width
    FPGA_50MHz, // freerun clock
    UART0_RXD,  UART0_TXD,
    FAN_ON,     LED,
    PLL1_CSn,   PLL1_SCLK,    PLL1_SDIO,
    PLL1_SDO,
    PLL1_RSTn,  PLL1_PDNn,    PLL1_OEn,   PLL1_SYNCn,
    PLL1_LOCK,
    PLL2_CSn,   PLL2_SCLK,    PLL2_SDIO,
    PLL2_SDO,
    PLL2_RSTn,  PLL2_PDNn,    PLL2_OEn,   PLL2_SYNCn,
    PLL2_LOCK,
    gthrxn_in,          gthrxp_in,
    gthtxn_out,         gthtxp_out,
    mgtrefclk0_226_p,   mgtrefclk0_226_n,
    mgtrefclk0_230_p,   mgtrefclk0_230_n,
    REFCLK1_P,          REFCLK1_N,
    REFCLK2_P,          REFCLK2_N,
    RX_LOCKN,           RX_HPDN,
    TX_LOCKN);
 
input   FPGA_50MHz ;
output  UART0_TXD ; input   UART0_RXD;
output  FAN_ON ;
output  reg [2:0] LED;

output  PLL1_CSn ;  output PLL1_SCLK ;  output PLL1_SDIO ;
input   PLL1_SDO ;
output  PLL1_RSTn ; output PLL1_PDNn ;  output PLL1_OEn ;   output PLL1_SYNCn ;
input   PLL1_LOCK ;

output  PLL2_CSn ;   output PLL2_SCLK ;  output PLL2_SDIO ;
input   PLL2_SDO ;
output  PLL2_RSTn ;  output PLL2_PDNn ;  output PLL2_OEn ;   output PLL2_SYNCn ;
input   PLL2_LOCK ;

input   [CH_NUM-1:0]  gthrxn_in , gthrxp_in ;
output  [CH_NUM-1:0]  gthtxn_out, gthtxp_out ;

input   mgtrefclk0_226_p,   mgtrefclk0_226_n ;
input   mgtrefclk0_230_p,   mgtrefclk0_230_n ;
output  REFCLK1_P,  REFCLK1_N;
output  REFCLK2_P,  REFCLK2_N;
output  reg RX_LOCKN,   RX_HPDN ;
input   TX_LOCKN ;

assign FAN_ON = 1;              //activ high   FAN allways on
reg  [31:0] FPGA_BUILD  = BUILD_DATE ;
always @(posedge FPGA_50MHz)begin
    FPGA_BUILD  <= BUILD_DATE; 
    RX_LOCKN    <=  rx_lockn;
    RX_HPDN     <=  rx_hpdn;
    LED[0]      <=  rx_lockn                ? 1 : 0;      //active low,  LED low On
    LED[1]      <=  rx_trn_done             ? 0 : 1;      //active high, LED low On
    LED[2]      <=  tx_lockn                ? 1 : 0;      //active low , LED low On
end

pwr_on_rst #(.SIMULATION (SIMULATION))  pwr_on_rst (
    .freerunclk (FPGA_50MHz),           // freerun clock
    .resetn_out (pwr_on_rstn));     //active low

wire    [31:0]  M_AVALON_0_address;
wire            M_AVALON_0_read;
wire    [31:0]  M_AVALON_0_readdata;
wire            M_AVALON_0_readdatavalid;
wire            M_AVALON_0_waitrequest;
wire            M_AVALON_0_write;
wire    [31:0]  M_AVALON_0_writedata;
wire            axi_clk ;
wire            axi_resetn ;
wire            ddr_cal_done;
CPU_block CPU_block (
    .M_AVALON_0_address			(M_AVALON_0_address),
    .M_AVALON_0_read			(M_AVALON_0_read),
    .M_AVALON_0_readdata		(M_AVALON_0_readdata),
    .M_AVALON_0_readdatavalid	(M_AVALON_0_readdatavalid),
    .M_AVALON_0_waitrequest		(M_AVALON_0_waitrequest),
    .M_AVALON_0_write			(M_AVALON_0_write),
    .M_AVALON_0_writedata		(M_AVALON_0_writedata),
    .UART_0_rxd                 (UART0_RXD),
    .UART_0_txd                 (UART0_TXD),
    .axi_clk                    (axi_clk),              // axi cpu interface clok out 100Mhz
    .axi_resetn                 (axi_resetn),           // aci cpu integerfac reset out active low
    .ext_clk                    (FPGA_50MHz),           // freerun clock input
    .clk_74p25                  (pll_refclk_74p25),     // pll refclk 74.25Mhz out
    .ext_resetn_in              (pwr_on_rstn));       // reset input for cpu reset active low

amm_regfile #(.BUILD_DATE(BUILD_DATE))  pll_spi(
    .nreset                 (axi_resetn),           // mcu I/F reset active low
    .aclk                   (axi_clk),              // mcu I/F clock
    .M_AVALON_address       (M_AVALON_0_address),
    .M_AVALON_read          (M_AVALON_0_read),
    .M_AVALON_readdata      (M_AVALON_0_readdata),
    .M_AVALON_readdatavalid (M_AVALON_0_readdatavalid),
    .M_AVALON_waitrequest   (M_AVALON_0_waitrequest),
    .M_AVALON_write         (M_AVALON_0_write),
    .M_AVALON_writedata     (M_AVALON_0_writedata),
    .SI5386_1ST_cs          (PLL1_CSn),
    .SI5386_1ST_sck         (PLL1_SCLK),
    .SI5386_1ST_sdi         (PLL1_SDIO),
    .SI5386_1ST_sdo         (PLL1_SDO),
    .SI5386_1ST_rstn        (PLL1_RSTn),            // active low , noraml operation high
    .SI5386_1ST_pdn         (PLL1_PDNn),            // acitve low , normal operation high
    .SI5386_1ST_LOCK        (PLL1_LOCK),            // active high
    .SI5386_1ST_oen         (PLL1_OEn),             // active low , noraml operation low
    .SI5386_1ST_sync        (PLL1_SYNCn),           // active low , normal operation high
    .SI5386_2ND_cs          (PLL2_CSn),
    .SI5386_2ND_sck         (PLL2_SCLK),
    .SI5386_2ND_sdi         (PLL2_SDIO),
    .SI5386_2ND_sdo         (PLL2_SDO),
    .SI5386_2ND_rstn        (PLL2_RSTn),
    .SI5386_2ND_pdn         (PLL2_PDNn),
    .SI5386_2ND_LOCK        (PLL2_LOCK),
    .SI5386_2ND_oen         (PLL2_OEn),
    .SI5386_2ND_sync        (PLL2_SYNCn));

wire [4:0] vio_rx_ch_sel;
wire [15:0] hact,htotal,vact,vtotal,frate;
vx1_vio_0 vx1_vio (
  .clk          (axi_clk),
  .probe_in0    (rx_lockn),
  .probe_in1    (rx_trn_done),
  .probe_in2    (tx_lockn),
  .probe_in3    (ddr_rst),
  .probe_in4    (frc_rst),
  .probe_in5    (vx1_rst),
  .probe_in6    (gt_err),
  .probe_in7    (PLL1_LOCK),
  .probe_in8    (SYNC_LOCK),
  .probe_in9    (FPGA_BUILD),
  .probe_in10   (hact),
  .probe_in11   (htotal),
  .probe_in12   (vact),
  .probe_in13   (vtotal),
  .probe_in14   (frate),
  .probe_out0   (vio_gt_loopback),
  .probe_out1   (vio_rx_ch_sel),
  .probe_out2   (vio_tx_tpg_en),
  .probe_out3   (vio_cable_loopback));

wire [2:0]   gt_loopback;

assign gt_loopback = vio_gt_loopback ? 2 : 0;

assign tx_lockn    = vio_gt_loopback? rx_lockn : TX_LOCKN;

clk_wiz_0 clk_wiz_0(
.clk_out1(ref_clk_74p25),     // output clk_out1
.clk_in1(rx_usrclk));      // input clk_in1

assign ref_clk =  vio_cable_loopback    ? pll_refclk_74p25 :
                  vio_gt_loopback       ? pll_refclk_74p25 :
                  FRAME_RATE == 144     ? ref_clk_74p25:
                  rx_usrclk;

assign vx1_pclk =   rx_usrclk;

refclkm pll_refclk(
    .refclk1_in (ref_clk),                      // vx1 pll refclk
    .refclk2_in (ref_clk),                      // user app refclk
    .REFCLK1_P  (REFCLK1_P),    .REFCLK1_N  (REFCLK1_N),
    .REFCLK2_P  (REFCLK2_P),    .REFCLK2_N  (REFCLK2_N));

wire    [CH_NUM/4-1:0]  gt_qpll1lock;
wire    [CH_NUM-1:0]    gt_rxbyteisaligned, gt_rxreset_out;
wire	[CH_NUM*DW-1:0] gtwiz_userdata_tx, gtwiz_userdata_rx;
wire    [CH_NUM*4:0]    gt_txcharisk,   gt_rxcharisk,   gt_rxdisperr,   gt_rxnotintable  ;

assign gt_err = VIDEO_TIMING == "4K" ? |gt_rxdisperr[16*4:0] | |gt_rxnotintable[16*4:0] :
                |gt_rxdisperr | |gt_rxnotintable;

g_reset vx1_reset(
    .freerun            (FPGA_50MHz),
    .reset              (~pwr_on_rstn),  // active high
    .c0_ddr_init_done	(emul_ddr_cal_done),              // ddr cal done check
    .c1_ddr_init_done	(emul_ddr_cal_done),              // ddr cal done check
    .gterr              (VIDEO_TIMING== "4K" ? gt_rxdisperr[16*4:0]     :gt_rxdisperr ),
    .gtnit              (VIDEO_TIMING== "4K" ? gt_rxnotintable[16*4:0]  :gt_rxnotintable ),
    
    .o_vx1rst           (vx1_rst),      // active high reset for vx1_phy
    .o_frcrst           (frc_rst),      // active high reset for frc
    .o_ddrrst           (ddr_rst));     // active high reset for ddr frame buffer reset

ddr_emul ddr_rst_emul(
    .ddr_rst        (ddr_rst),
    .ddr_cal_done   (emul_ddr_cal_done),
    .ddr_clk        (FPGA_50MHz));

us_vbone_phy_wrapper #(
    .CH_NUM(CH_NUM),
    .FRAME_RATE(FRAME_RATE)) vx1_phy(
    .mgtrefclk0_226_p           (mgtrefclk0_226_p),
    .mgtrefclk0_226_n           (mgtrefclk0_226_n),
    .mgtrefclk0_230_p           (mgtrefclk0_230_p),
    .mgtrefclk0_230_n           (mgtrefclk0_230_n),
    
    .freerun                    (FPGA_50MHz 	),  // freerun clock
    .reset                      (vx1_rst      ),    // activ high
    .gt_loopback                (gt_loopback),      
    
    .gthrxn_in                  (gthrxn_in      ),
    .gthrxp_in                  (gthrxp_in      ),
    .gthtxn_out					(gthtxn_out     ),
    .gthtxp_out                 (gthtxp_out     ),
    
    .qpll1lock_out  			(gt_qpll1lock   ),
    
    .tx_usrclk                  (tx_usrclk      ),
    .rx_usrclk                  (rx_usrclk      ),
    
    .gtwiz_reset_tx_done_out	(gtwiz_reset_tx_done ),
    .gtwiz_reset_rx_done_out	(gtwiz_reset_rx_done ),
    .rxbyteisaligned_out		(gt_rxbyteisaligned	 ),
    
    .gtwiz_userdata_tx_in		(gtwiz_userdata_tx	 ),
    .txcharisk					(gt_txcharisk		 ),
    
    .gtwiz_userdata_rx_out		(gtwiz_userdata_rx	 ),
    .rxcharisk					(gt_rxcharisk		 ),
    .rxdisperr					(gt_rxdisperr		 ),
    .rxnotintable				(gt_rxnotintable	 ));

wire  [   CH_NUM-1:0]   vx1_rx_de,  vx1_rx_hs,  vx1_rx_vs;
wire  [DW*CH_NUM-1:0]   vx1_rx_data;

wire  [   CH_NUM-1:0]   vx1_tx_de,  vx1_tx_hs,  vx1_tx_vs;
wire  [DW*CH_NUM-1:0]   vx1_tx_data;

vx1_link#(.SIMULATION (SIMULATION),.CH_NUM(CH_NUM),.DW(DW)) vx1_link(
    .FPGA_50MHz                 (FPGA_50MHz) , // freerun clock

    .gt_qpll1lock_in			(gt_qpll1lock  			 ),
    .tx_usrclk					(tx_usrclk  			 ),
    .rx_usrclk					(rx_usrclk	    		 ),

    .vx1_rst                    (vx1_rst),
    .ddr_rst                    (ddr_rst),
     
    
    .gtwiz_reset_tx_done_in     (gtwiz_reset_tx_done ),
    .gtwiz_reset_rx_done_in     (gtwiz_reset_rx_done ),
    .gt_rxbyteisaligned_in      (gt_rxbyteisaligned	 ),
    
    .gtwiz_userdata_tx_out      (gtwiz_userdata_tx	     ),
    .gt_txcharisk_out           (gt_txcharisk			 ),
    
    .gtwiz_userdata_rx_in		(gtwiz_userdata_rx  	 ),
    .gt_rxcharisk_in			(gt_rxcharisk			 ),
    .gt_rxdisperr_in			(gt_rxdisperr			 ),
    .gt_rxnotintable_in			(gt_rxnotintable		 ),
    .gt_rxreset_out             (gt_rxreset_out         ),

    .PLL_LOCK           (PLL1_LOCK),
    .RX_LOCKN           (rx_lockn),
    .RX_HPDN            (rx_hpdn),
    .RX_TRN_DONE        (rx_trn_done),
    .TX_LOCKN           (tx_lockn),
    
    .vx1_rx_out_de  (vx1_rx_de),    .vx1_rx_out_hs  (vx1_rx_hs),    .vx1_rx_out_vs  (vx1_rx_vs),    .vx1_rx_out_data    (vx1_rx_data),
    .vx1_tx_in_de   (vx1_tx_de),    .vx1_tx_in_hs   (vx1_tx_hs),    .vx1_tx_in_vs   (vx1_tx_vs),    .vx1_tx_in_data     (vx1_tx_data),
    .vx1_pclk       (vx1_pclk));

vx1_debug #(
.FRAME_RATE(FRAME_RATE),
.VIDEO_TIMING(VIDEO_TIMING))
vx1_debug(
    .vio_gt_loopback(vio_gt_loopback),  .vio_tx_tpg_en  (vio_tx_tpg_en|vio_cable_loopback),    .vio_rx_ch_sel(vio_rx_ch_sel),
    .vx1_rx_de  (vx1_rx_de),    .vx1_rx_hs  (vx1_rx_hs),    .vx1_rx_vs  (vx1_rx_vs),    .vx1_rx_data    (vx1_rx_data),
    .vx1_tx_de  (vx1_tx_de),    .vx1_tx_hs  (vx1_tx_hs),    .vx1_tx_vs  (vx1_tx_vs),    .vx1_tx_data    (vx1_tx_data),
    .htotal(htotal), .hact(hact),    .vtotal(vtotal),    .vact(vact),    .frate(frate),
    .SYNC_LOCK(SYNC_LOCK),  .vx1_pclk(vx1_pclk));

endmodule