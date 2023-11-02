// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Oct 27 15:24:22 2023
// Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vx1_phy_stub.v
// Design      : vx1_phy
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku11p-ffve1517-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vx1_phy_gtwizard_top,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(gtwiz_userclk_tx_reset_in, 
  gtwiz_userclk_tx_srcclk_out, gtwiz_userclk_tx_usrclk_out, 
  gtwiz_userclk_tx_usrclk2_out, gtwiz_userclk_tx_active_out, gtwiz_userclk_rx_reset_in, 
  gtwiz_userclk_rx_srcclk_out, gtwiz_userclk_rx_usrclk_out, 
  gtwiz_userclk_rx_usrclk2_out, gtwiz_userclk_rx_active_out, 
  gtwiz_reset_clk_freerun_in, gtwiz_reset_all_in, gtwiz_reset_tx_pll_and_datapath_in, 
  gtwiz_reset_tx_datapath_in, gtwiz_reset_rx_pll_and_datapath_in, 
  gtwiz_reset_rx_datapath_in, gtwiz_reset_rx_cdr_stable_out, gtwiz_reset_tx_done_out, 
  gtwiz_reset_rx_done_out, gtwiz_userdata_tx_in, gtwiz_userdata_rx_out, gtrefclk00_in, 
  qpll0lock_out, qpll0outclk_out, qpll0outrefclk_out, gthrxn_in, gthrxp_in, loopback_in, 
  rx8b10ben_in, rxcommadeten_in, rxlpmen_in, rxmcommaalignen_in, rxpcommaalignen_in, 
  tx8b10ben_in, txctrl0_in, txctrl1_in, txctrl2_in, txdiffctrl_in, txpostcursor_in, gthtxn_out, 
  gthtxp_out, gtpowergood_out, rxbyteisaligned_out, rxbyterealign_out, rxcommadet_out, 
  rxctrl0_out, rxctrl1_out, rxctrl2_out, rxctrl3_out, rxpmaresetdone_out, txpmaresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_reset_in[0:0],gtwiz_userclk_tx_srcclk_out[0:0],gtwiz_userclk_tx_usrclk_out[0:0],gtwiz_userclk_tx_usrclk2_out[0:0],gtwiz_userclk_tx_active_out[0:0],gtwiz_userclk_rx_reset_in[0:0],gtwiz_userclk_rx_srcclk_out[0:0],gtwiz_userclk_rx_usrclk_out[0:0],gtwiz_userclk_rx_usrclk2_out[0:0],gtwiz_userclk_rx_active_out[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[1023:0],gtwiz_userdata_rx_out[1023:0],gtrefclk00_in[7:0],qpll0lock_out[7:0],qpll0outclk_out[7:0],qpll0outrefclk_out[7:0],gthrxn_in[31:0],gthrxp_in[31:0],loopback_in[95:0],rx8b10ben_in[31:0],rxcommadeten_in[31:0],rxlpmen_in[31:0],rxmcommaalignen_in[31:0],rxpcommaalignen_in[31:0],tx8b10ben_in[31:0],txctrl0_in[511:0],txctrl1_in[511:0],txctrl2_in[255:0],txdiffctrl_in[159:0],txpostcursor_in[159:0],gthtxn_out[31:0],gthtxp_out[31:0],gtpowergood_out[31:0],rxbyteisaligned_out[31:0],rxbyterealign_out[31:0],rxcommadet_out[31:0],rxctrl0_out[511:0],rxctrl1_out[511:0],rxctrl2_out[255:0],rxctrl3_out[255:0],rxpmaresetdone_out[31:0],txpmaresetdone_out[31:0]" */;
  input [0:0]gtwiz_userclk_tx_reset_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_reset_in;
  output [0:0]gtwiz_userclk_rx_srcclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk2_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [1023:0]gtwiz_userdata_tx_in;
  output [1023:0]gtwiz_userdata_rx_out;
  input [7:0]gtrefclk00_in;
  output [7:0]qpll0lock_out;
  output [7:0]qpll0outclk_out;
  output [7:0]qpll0outrefclk_out;
  input [31:0]gthrxn_in;
  input [31:0]gthrxp_in;
  input [95:0]loopback_in;
  input [31:0]rx8b10ben_in;
  input [31:0]rxcommadeten_in;
  input [31:0]rxlpmen_in;
  input [31:0]rxmcommaalignen_in;
  input [31:0]rxpcommaalignen_in;
  input [31:0]tx8b10ben_in;
  input [511:0]txctrl0_in;
  input [511:0]txctrl1_in;
  input [255:0]txctrl2_in;
  input [159:0]txdiffctrl_in;
  input [159:0]txpostcursor_in;
  output [31:0]gthtxn_out;
  output [31:0]gthtxp_out;
  output [31:0]gtpowergood_out;
  output [31:0]rxbyteisaligned_out;
  output [31:0]rxbyterealign_out;
  output [31:0]rxcommadet_out;
  output [511:0]rxctrl0_out;
  output [511:0]rxctrl1_out;
  output [255:0]rxctrl2_out;
  output [255:0]rxctrl3_out;
  output [31:0]rxpmaresetdone_out;
  output [31:0]txpmaresetdone_out;
endmodule
