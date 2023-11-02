

`timescale 1ps/1ps


module us_vbone_phy_wrapper # (
		parameter CH_NUM			= 32,
		parameter FRAME_RATE        = 60
	)(
     input	      mgtrefclk0_226_p
    ,input	      mgtrefclk0_226_n
    ,input	      mgtrefclk0_230_p
    ,input	      mgtrefclk0_230_n
    
    ,input  [0:0] freerun
    ,input  [0:0] reset
    ,input  [2:0] gt_loopback
    
    ,input  [31:0] gthrxn_in
    ,input  [31:0] gthrxp_in
    ,output [31:0] gthtxn_out
    ,output [31:0] gthtxp_out
    
    ,output [7:0]   qpll1lock_out

    ,output [0:0] tx_usrclk
    ,output [0:0] rx_usrclk
    
    ,output [0:0]       gtwiz_reset_tx_done_out
    ,output [0:0]       gtwiz_reset_rx_done_out
    ,output [31:0]      rxbyteisaligned_out
    
    ,input  [1023:0]    gtwiz_userdata_tx_in
    ,input  [127:0]     txcharisk
    
    ,output [1023:0]    gtwiz_userdata_rx_out
    ,output [127:0]     rxcharisk
    ,output [127:0]     rxdisperr
    ,output [127:0]     rxnotintable 
);
vx1_phy_refclk vx1_phy_refclk 
(
		.mgtrefclk0_226_p	(mgtrefclk0_226_p),
		.mgtrefclk0_226_n (mgtrefclk0_226_n),
		.mgtrefclk0_230_p	(mgtrefclk0_230_p),
		.mgtrefclk0_230_n (mgtrefclk0_230_n),
		
		.QREFCLK0			(gtrefclk01_in[3:0]),
		.QREFCLK1			(gtrefclk01_in[7:4]));

wire [0:0] gtwiz_userclk_tx_reset_in                ;
wire [0:0] gtwiz_userclk_tx_srcclk_out              ;
wire [0:0] gtwiz_userclk_tx_usrclk_out              ;
wire [0:0] gtwiz_userclk_tx_usrclk2_out             ;
wire [0:0] gtwiz_userclk_tx_active_out              ;
wire [0:0] gtwiz_userclk_rx_reset_in                ;
wire [0:0] gtwiz_userclk_rx_srcclk_out              ;
wire [0:0] gtwiz_userclk_rx_usrclk_out              ;
wire [0:0] gtwiz_userclk_rx_usrclk2_out             ;
wire [0:0] gtwiz_userclk_rx_active_out              ;
wire [0:0] gtwiz_reset_clk_freerun_in               ;
wire [0:0] gtwiz_reset_all_in                       ;
wire [0:0] gtwiz_reset_tx_pll_and_datapath_in       ;
wire [0:0] gtwiz_reset_tx_datapath_in               ;
wire [0:0] gtwiz_reset_rx_pll_and_datapath_in       ;
wire [0:0] gtwiz_reset_rx_datapath_in               ;
wire [0:0] gtwiz_reset_rx_cdr_stable_out            ;
wire [7:0] gtrefclk01_in                            ;
wire [7:0] qpll1outclk_out                          ;
wire [7:0] qpll1outrefclk_out                       ;
wire [31:0] rx8b10ben_in                            ;
wire [31:0] rxcommadeten_in                         ;
wire [31:0] rxmcommaalignen_in                      ;
wire [31:0] rxpcommaalignen_in                      ;
wire [31:0] tx8b10ben_in                            ;
wire [511:0] txctrl0_in                             ;
wire [511:0] txctrl1_in                             ;
wire [255:0] txctrl2_in                             ;
wire [31:0] rxbyterealign_out                       ;
wire [31:0] rxcommadet_out                          ;
wire [511:0] rxctrl0_out                            ;
wire [511:0] rxctrl1_out                            ;
wire [255:0] rxctrl2_out                            ;
wire [255:0] rxctrl3_out                            ;
wire [31:0] rxpmaresetdone_out                      ;
wire [31:0] txpmaresetdone_out                      ;

wire	[127:0]	txdiffctrl_in;
wire	[159:0]	txpostcursor_in;

genvar k;
generate for (k = 0; k < 32 ; k =k  + 1) begin : k_loop
	assign gtwiz_reset_clk_freerun_in = freerun;
	assign gtwiz_reset_all_in = reset;
	assign gtwiz_reset_tx_datapath_in = reset;
	assign gtwiz_reset_rx_datapath_in = reset;
	
	assign tx_usrclk = gtwiz_userclk_tx_usrclk2_out;
	assign rx_usrclk = gtwiz_userclk_rx_usrclk2_out;
 
	assign gtwiz_reset_tx_pll_and_datapath_in = 1'b0;
	assign gtwiz_reset_rx_pll_and_datapath_in = 1'b0;
	
	assign gtwiz_userclk_tx_reset_in = ~&txpmaresetdone_out;
	assign gtwiz_userclk_rx_reset_in = ~&rxpmaresetdone_out;
	
	assign rx8b10ben_in[k] = 1'b1;
	assign tx8b10ben_in[k] = 1'b1;
	
	// assign rxcommadeten_in[19:16] = {comma_en,{16{1'b1}}};
	// assign rxmcommaalignen_in[19:16] = {comma_en,{16{1'b1}}};
	// assign rxpcommaalignen_in[19:16] = {comma_en,{16{1'b1}}};
	assign rxcommadeten_in[k] = 1'b1;
	assign rxmcommaalignen_in[k] = 1'b1;
	assign rxpcommaalignen_in[k] = 1'b1;
	
	assign txctrl0_in[(k+1)*16-1:k*16] = 16'd0;
	assign txctrl1_in[(k+1)*16-1:k*16] = 16'd0;
	assign txctrl2_in[(k+1)*8-1:k*8] = {4'd0,txcharisk[(k+1)*4-1:k*4]};
	
	assign rxcharisk[(k+1)*4-1:k*4] = rxctrl0_out[k*16+3:k*16];
	assign rxdisperr[(k+1)*4-1:k*4] = rxctrl1_out[k*16+3:k*16];
	// assign rxchariscomma[(k+1)*4-1:k*4] = rxctrl2_out[(k+1)*8-5:k*8];
	assign rxnotintable[(k+1)*4-1:k*4] = rxctrl3_out[(k+1)*8-5:k*8];
	
	
	assign txdiffctrl_in[(k+1)*4-1:k*4] = 4'ha;  
	assign txpostcursor_in[(k+1)*5-1:k*5] = 5'h1c;
  
end 
endgenerate	

  // ===================================================================================================================
  // PARAMETERS AND FUNCTIONS
  // ===================================================================================================================

  // Declare and initialize local parameters and functions used for HDL generation
  localparam [191:0] P_CHANNEL_ENABLE = 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111;
  `include "us_vbone_phy_wrapper_functions.v"
  localparam integer P_TX_MASTER_CH_PACKED_IDX = f_calc_pk_mc_idx(0);
  localparam integer P_RX_MASTER_CH_PACKED_IDX = f_calc_pk_mc_idx(0);

/* 
  wire [319:0] txctrl0_int;
  assign txctrl0_int = txctrl0_in;
  
  wire [319:0] txctrl1_int;
  assign txctrl1_int = txctrl1_in;
  
  wire [319:0] rxctrl0_int;
  assign rxctrl0_out = rxctrl0_int;
  
  wire [319:0] rxctrl1_int;
  assign rxctrl1_out = rxctrl1_int;
  */ 
	
	

  // ===================================================================================================================
  // CORE INSTANCE
  // ===================================================================================================================

  // Instantiate the core, mapping its enabled ports to example design ports and helper blocks as appropriate
generate
  if (FRAME_RATE == 144) begin : VID_4K_144
  vx1_phy_144 vx1_phy_144 (
  .gtpowergood_out(),
    .gthrxn_in                               (gthrxn_in)
   ,.gthrxp_in                               (gthrxp_in)
   ,.gthtxn_out                              (gthtxn_out)
   ,.gthtxp_out                              (gthtxp_out)
   ,.rxlpmen_in								               (32'hffffffff)
   ,.gtwiz_userclk_tx_reset_in               (gtwiz_userclk_tx_reset_in)
   ,.gtwiz_userclk_tx_srcclk_out             (gtwiz_userclk_tx_srcclk_out)
   ,.gtwiz_userclk_tx_usrclk_out             (gtwiz_userclk_tx_usrclk_out)
   ,.gtwiz_userclk_tx_usrclk2_out            (gtwiz_userclk_tx_usrclk2_out)
   ,.gtwiz_userclk_tx_active_out             (gtwiz_userclk_tx_active_out)
   ,.gtwiz_userclk_rx_reset_in               (gtwiz_userclk_rx_reset_in)
   ,.gtwiz_userclk_rx_srcclk_out             (gtwiz_userclk_rx_srcclk_out)
   ,.gtwiz_userclk_rx_usrclk_out             (gtwiz_userclk_rx_usrclk_out)
   ,.gtwiz_userclk_rx_usrclk2_out            (gtwiz_userclk_rx_usrclk2_out)
   ,.gtwiz_userclk_rx_active_out             (gtwiz_userclk_rx_active_out)
   ,.gtwiz_reset_clk_freerun_in              (gtwiz_reset_clk_freerun_in)
   ,.gtwiz_reset_all_in                      (gtwiz_reset_all_in)
   ,.gtwiz_reset_tx_pll_and_datapath_in      (gtwiz_reset_tx_pll_and_datapath_in)
   ,.gtwiz_reset_tx_datapath_in              (gtwiz_reset_tx_datapath_in)
   ,.gtwiz_reset_rx_pll_and_datapath_in      (gtwiz_reset_rx_pll_and_datapath_in)
   ,.gtwiz_reset_rx_datapath_in              (gtwiz_reset_rx_datapath_in)
   ,.gtwiz_reset_rx_cdr_stable_out           (gtwiz_reset_rx_cdr_stable_out)
   ,.gtwiz_reset_tx_done_out                 (gtwiz_reset_tx_done_out)
   ,.gtwiz_reset_rx_done_out                 (gtwiz_reset_rx_done_out)
   ,.gtwiz_userdata_tx_in                    (gtwiz_userdata_tx_in)
   ,.gtwiz_userdata_rx_out                   (gtwiz_userdata_rx_out)
   ,.gtrefclk00_in                           (gtrefclk01_in)
   ,.qpll0lock_out                           (qpll1lock_out)
   ,.qpll0outclk_out                         (qpll1outclk_out)
   ,.qpll0outrefclk_out                      (qpll1outrefclk_out)
   ,.loopback_in                             ({32{gt_loopback}})
   ,.rx8b10ben_in                            (rx8b10ben_in)
   ,.rxcommadeten_in                         (rxcommadeten_in)
   ,.rxmcommaalignen_in                      (rxmcommaalignen_in)
   ,.rxpcommaalignen_in                      (rxpcommaalignen_in)
   ,.tx8b10ben_in                            (tx8b10ben_in)
   ,.txctrl0_in                              (txctrl0_in)
   ,.txctrl1_in                              (txctrl1_in)
   ,.txctrl2_in                              (txctrl2_in)
   ,.txdiffctrl_in							             (txdiffctrl_in)
   ,.txpostcursor_in						             (txpostcursor_in)
   ,.rxbyteisaligned_out                     (rxbyteisaligned_out)
   ,.rxbyterealign_out                       (rxbyterealign_out)
   ,.rxcommadet_out                          (rxcommadet_out)
   ,.rxctrl0_out                             (rxctrl0_out)
   ,.rxctrl1_out                             (rxctrl1_out)
   ,.rxctrl2_out                             (rxctrl2_out)
   ,.rxctrl3_out                             (rxctrl3_out)
   ,.rxpmaresetdone_out                      (rxpmaresetdone_out)
   ,.txpmaresetdone_out                      (txpmaresetdone_out));
end else begin : VID_8K_OR_4K_120
  vx1_phy vx1_phy (
  .gtpowergood_out(),
    .gthrxn_in                               (gthrxn_in)
   ,.gthrxp_in                               (gthrxp_in)
   ,.gthtxn_out                              (gthtxn_out)
   ,.gthtxp_out                              (gthtxp_out)
   ,.rxlpmen_in								               (32'hffffffff)
   ,.gtwiz_userclk_tx_reset_in               (gtwiz_userclk_tx_reset_in)
   ,.gtwiz_userclk_tx_srcclk_out             (gtwiz_userclk_tx_srcclk_out)
   ,.gtwiz_userclk_tx_usrclk_out             (gtwiz_userclk_tx_usrclk_out)
   ,.gtwiz_userclk_tx_usrclk2_out            (gtwiz_userclk_tx_usrclk2_out)
   ,.gtwiz_userclk_tx_active_out             (gtwiz_userclk_tx_active_out)
   ,.gtwiz_userclk_rx_reset_in               (gtwiz_userclk_rx_reset_in)
   ,.gtwiz_userclk_rx_srcclk_out             (gtwiz_userclk_rx_srcclk_out)
   ,.gtwiz_userclk_rx_usrclk_out             (gtwiz_userclk_rx_usrclk_out)
   ,.gtwiz_userclk_rx_usrclk2_out            (gtwiz_userclk_rx_usrclk2_out)
   ,.gtwiz_userclk_rx_active_out             (gtwiz_userclk_rx_active_out)
   ,.gtwiz_reset_clk_freerun_in              (gtwiz_reset_clk_freerun_in)
   ,.gtwiz_reset_all_in                      (gtwiz_reset_all_in)
   ,.gtwiz_reset_tx_pll_and_datapath_in      (gtwiz_reset_tx_pll_and_datapath_in)
   ,.gtwiz_reset_tx_datapath_in              (gtwiz_reset_tx_datapath_in)
   ,.gtwiz_reset_rx_pll_and_datapath_in      (gtwiz_reset_rx_pll_and_datapath_in)
   ,.gtwiz_reset_rx_datapath_in              (gtwiz_reset_rx_datapath_in)
   ,.gtwiz_reset_rx_cdr_stable_out           (gtwiz_reset_rx_cdr_stable_out)
   ,.gtwiz_reset_tx_done_out                 (gtwiz_reset_tx_done_out)
   ,.gtwiz_reset_rx_done_out                 (gtwiz_reset_rx_done_out)
   ,.gtwiz_userdata_tx_in                    (gtwiz_userdata_tx_in)
   ,.gtwiz_userdata_rx_out                   (gtwiz_userdata_rx_out)
   ,.gtrefclk00_in                           (gtrefclk01_in)
   ,.qpll0lock_out                           (qpll1lock_out)
   ,.qpll0outclk_out                         (qpll1outclk_out)
   ,.qpll0outrefclk_out                      (qpll1outrefclk_out)
   ,.loopback_in                             ({32{gt_loopback}})
   ,.rx8b10ben_in                            (rx8b10ben_in)
   ,.rxcommadeten_in                         (rxcommadeten_in)
   ,.rxmcommaalignen_in                      (rxmcommaalignen_in)
   ,.rxpcommaalignen_in                      (rxpcommaalignen_in)
   ,.tx8b10ben_in                            (tx8b10ben_in)
   ,.txctrl0_in                              (txctrl0_in)
   ,.txctrl1_in                              (txctrl1_in)
   ,.txctrl2_in                              (txctrl2_in)
   ,.txdiffctrl_in							             (txdiffctrl_in)
   ,.txpostcursor_in						             (txpostcursor_in)
   ,.rxbyteisaligned_out                     (rxbyteisaligned_out)
   ,.rxbyterealign_out                       (rxbyterealign_out)
   ,.rxcommadet_out                          (rxcommadet_out)
   ,.rxctrl0_out                             (rxctrl0_out)
   ,.rxctrl1_out                             (rxctrl1_out)
   ,.rxctrl2_out                             (rxctrl2_out)
   ,.rxctrl3_out                             (rxctrl3_out)
   ,.rxpmaresetdone_out                      (rxpmaresetdone_out)
   ,.txpmaresetdone_out                      (txpmaresetdone_out));
end
endgenerate 

endmodule
