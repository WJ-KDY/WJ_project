// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Oct 31 09:17:43 2023
// Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/oem/Desktop/VXONE_V01_4K_144/VXONE_V01.runs/vx1_vid_ila_synth_1/vx1_vid_ila_stub.v
// Design      : vx1_vid_ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku11p-ffve1517-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2022.2" *)
module vx1_vid_ila(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[31:0],probe3[1023:0],probe4[15:0],probe5[15:0],probe6[31:0],probe7[9:0],probe8[9:0],probe9[9:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [31:0]probe2;
  input [1023:0]probe3;
  input [15:0]probe4;
  input [15:0]probe5;
  input [31:0]probe6;
  input [9:0]probe7;
  input [9:0]probe8;
  input [9:0]probe9;
endmodule
