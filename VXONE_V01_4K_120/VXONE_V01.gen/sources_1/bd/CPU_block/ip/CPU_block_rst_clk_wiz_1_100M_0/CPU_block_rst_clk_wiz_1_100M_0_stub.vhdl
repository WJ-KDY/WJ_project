-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Oct 27 15:21:31 2023
-- Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_rst_clk_wiz_1_100M_0/CPU_block_rst_clk_wiz_1_100M_0_stub.vhdl
-- Design      : CPU_block_rst_clk_wiz_1_100M_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku11p-ffve1517-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_block_rst_clk_wiz_1_100M_0 is
  Port ( 
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end CPU_block_rst_clk_wiz_1_100M_0;

architecture stub of CPU_block_rst_clk_wiz_1_100M_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "slowest_sync_clk,ext_reset_in,aux_reset_in,mb_debug_sys_rst,dcm_locked,mb_reset,bus_struct_reset[0:0],peripheral_reset[0:0],interconnect_aresetn[0:0],peripheral_aresetn[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "proc_sys_reset,Vivado 2022.2";
begin
end;
