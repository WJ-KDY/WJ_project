-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Oct 31 09:17:17 2023
-- Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/oem/Desktop/VXONE_V01_4K_144/VXONE_V01.runs/vx1_phy_144_synth_1/vx1_phy_144_stub.vhdl
-- Design      : vx1_phy_144
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku11p-ffve1517-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vx1_phy_144 is
  Port ( 
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 95 downto 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 511 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 511 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 159 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 159 downto 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end vx1_phy_144;

architecture stub of vx1_phy_144 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gtwiz_userclk_tx_reset_in[0:0],gtwiz_userclk_tx_srcclk_out[0:0],gtwiz_userclk_tx_usrclk_out[0:0],gtwiz_userclk_tx_usrclk2_out[0:0],gtwiz_userclk_tx_active_out[0:0],gtwiz_userclk_rx_reset_in[0:0],gtwiz_userclk_rx_srcclk_out[0:0],gtwiz_userclk_rx_usrclk_out[0:0],gtwiz_userclk_rx_usrclk2_out[0:0],gtwiz_userclk_rx_active_out[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[1023:0],gtwiz_userdata_rx_out[1023:0],gtrefclk00_in[7:0],qpll0lock_out[7:0],qpll0outclk_out[7:0],qpll0outrefclk_out[7:0],gthrxn_in[31:0],gthrxp_in[31:0],loopback_in[95:0],rx8b10ben_in[31:0],rxcommadeten_in[31:0],rxlpmen_in[31:0],rxmcommaalignen_in[31:0],rxpcommaalignen_in[31:0],tx8b10ben_in[31:0],txctrl0_in[511:0],txctrl1_in[511:0],txctrl2_in[255:0],txdiffctrl_in[159:0],txpostcursor_in[159:0],gthtxn_out[31:0],gthtxp_out[31:0],gtpowergood_out[31:0],rxbyteisaligned_out[31:0],rxbyterealign_out[31:0],rxcommadet_out[31:0],rxctrl0_out[511:0],rxctrl1_out[511:0],rxctrl2_out[255:0],rxctrl3_out[255:0],rxpmaresetdone_out[31:0],txpmaresetdone_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vx1_phy_144_gtwizard_top,Vivado 2022.2";
begin
end;
