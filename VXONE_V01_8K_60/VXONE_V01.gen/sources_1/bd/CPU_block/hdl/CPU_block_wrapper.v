//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Thu Oct 26 15:21:40 2023
//Host        : mob-System-Product-Name running 64-bit HamoniKR
//Command     : generate_target CPU_block_wrapper.bd
//Design      : CPU_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CPU_block_wrapper
   (M_AVALON_0_address,
    M_AVALON_0_read,
    M_AVALON_0_readdata,
    M_AVALON_0_readdatavalid,
    M_AVALON_0_waitrequest,
    M_AVALON_0_write,
    M_AVALON_0_writedata,
    UART_0_rxd,
    UART_0_txd,
    axi_clk,
    axi_resetn,
    c0_init_calib_complete,
    clk_74p25,
    ext_clk,
    ext_resetn_in,
    sys_rst);
  output [31:0]M_AVALON_0_address;
  output M_AVALON_0_read;
  input [31:0]M_AVALON_0_readdata;
  input M_AVALON_0_readdatavalid;
  input M_AVALON_0_waitrequest;
  output M_AVALON_0_write;
  output [31:0]M_AVALON_0_writedata;
  input UART_0_rxd;
  output UART_0_txd;
  output axi_clk;
  output [0:0]axi_resetn;
  output c0_init_calib_complete;
  output clk_74p25;
  input ext_clk;
  input ext_resetn_in;
  input sys_rst;

  wire [31:0]M_AVALON_0_address;
  wire M_AVALON_0_read;
  wire [31:0]M_AVALON_0_readdata;
  wire M_AVALON_0_readdatavalid;
  wire M_AVALON_0_waitrequest;
  wire M_AVALON_0_write;
  wire [31:0]M_AVALON_0_writedata;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire axi_clk;
  wire [0:0]axi_resetn;
  wire c0_init_calib_complete;
  wire clk_74p25;
  wire ext_clk;
  wire ext_resetn_in;
  wire sys_rst;

  CPU_block CPU_block_i
       (.M_AVALON_0_address(M_AVALON_0_address),
        .M_AVALON_0_read(M_AVALON_0_read),
        .M_AVALON_0_readdata(M_AVALON_0_readdata),
        .M_AVALON_0_readdatavalid(M_AVALON_0_readdatavalid),
        .M_AVALON_0_waitrequest(M_AVALON_0_waitrequest),
        .M_AVALON_0_write(M_AVALON_0_write),
        .M_AVALON_0_writedata(M_AVALON_0_writedata),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .axi_clk(axi_clk),
        .axi_resetn(axi_resetn),
        .c0_init_calib_complete(c0_init_calib_complete),
        .clk_74p25(clk_74p25),
        .ext_clk(ext_clk),
        .ext_resetn_in(ext_resetn_in),
        .sys_rst(sys_rst));
endmodule
