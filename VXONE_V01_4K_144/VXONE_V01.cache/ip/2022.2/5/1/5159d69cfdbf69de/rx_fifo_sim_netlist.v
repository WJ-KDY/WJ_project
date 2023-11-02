// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Oct 31 09:15:45 2023
// Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rx_fifo_sim_netlist.v
// Design      : rx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku11p-ffve1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rx_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uS/dIpDTldS7400uyLsI6bJxO+WmZJrKXsU8qB+wpyI+d4PWZVO6Cm0qMQFNUZb63p6zCI5fvnQy
SxjaSP1nCte/oQZc55w1rQbTqy54T9kryRoH26nDjSBVZvJ8hffw7NONwiKrqeB6I7HJKX5RKw73
wIJxNNH7BCiCEtRLIxc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L7q2sHnC0pU7uHs8shPm9nAcqyU+hUFnNkd6BPHl+ureEVBUvubWhEbLRLiFFJveufcmAfAXTzae
tWbKcVVt/zKzWEtv0onUXoSEgyS4+QaTAFeCPHR2bbnlP0aCCG2SYmC1dv16cFoAk/NLitClNXAv
h+UBGzod+suWv55DaNHeHtSZ/YLZxHdn/R47atTiQM+A1TWQkpa3faF/L9ANZISSe/OR6mPfQ/Zk
4AptHNmW/pWpd3JL4e06iK9P6ZLLRqSMR9mu6AFIeWYBVz+KkxgSIWgQO7/AHBUFjlIiMFhyQR5Y
UC1fo4CPZX7fMdUPwQiC+eZ7UtxMAUzovIzwEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KZhqqPnSEvcItoYRHrFT/Wt2IEXHe7pq5lmAOfYqAaaoY8mpIG3Kd8B/C4s9kNUbktSOX78NnnrJ
brxcu/1EAlI9itnDH8ahxble+2Nt/Lj3dQ1/wbDy3HOKlwBVuOvVDArOpgho+BAnoLUZXrpsw8EI
FSIPKmsETVzLzZDw6m0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZbb0PsQl1vn7dY/rZzI8ZGsAP5Ad4C/d2cBXS49yTbQqKMTY7r1YHlrjBGteY6wrhKVmM92u/3/
/UJWPyNVqwcsrRAHhR/Lp3Mg87NIhYzETdNAOpnc7rWC9ieIeEiyPM734sI7QtAMVrZxXoUXnCjp
fjQhaMqv+HsuEWpFhDail+v8Ftwmr5xP1JSpqPfxLz5a6+q8/lTxRGeWZokM7vP2YFKg7L7Yoowh
gOm5w3JhR2fXZsksWxfQk7885JzsI4yZOrU8dY667YWWhkjZE/SKo2TMksiasL22T6CpyUbMwQm2
DJ+cMJbr9/8csBEifIsopc4V9zFbSU9eoxlqZA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Adid/GOKDljgmM7UpkmD6EVL+5rt6bnWK9P8RIZiI3EkLW96rM6eCs7jkLeKnEW/WPGRhlZrGw8p
C7Ni27oibJKJT5xUBJDymbO+yheaaTI0GaeDMIzks860gYA3qdvTPxTBotaOg6MIpnYd070NhTod
Qq5XNnxLuF7/s5rAZANJHyRQKwu4gVBfs5SU2FSjF546M5FvN7BX6G7B76ALW6vKqGyKxwoHkc52
Bm8/jGTxJ6zbwn2v31NEfjO6nM5m6yYwY0476QLXWI6+7/ILkSvDVTt7B9HpcaRg3n3T4AEQDMyX
8bBPgm0qFbWZue0dlr9ljYOl0dgwaO8G9uYe9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tq2b3cw7fnIOEbRUxnQIgAjXwRE3aRwj2IBVmS0S998fvCLPMUtm5MVXAqk0TwuEzKG3br/oRham
Oe5KAx6FauTTVpRhLH5RY3832M9OVTSW/bNq12/dXnJyOfYS76FQtd9HNFrSkVPMONGMD0ZQXRic
Yr0MaeflUHQmU6QUCt5OJkbG4F8qJLMWJsg03K7dNzDfkvev3QVf72bmHTm4SF6/cs94NXQl/NPr
CzQorTZ5BgCzVAui7mM0eu3mu6OPkecNQ3Ih+1zsJuGkAHWC7aFgh7ii6xEj1upD365TzJUF1ZCe
0jZj/Ub1m5OgZMbjbLYn/Fh5nqi+fAmL7jDAHQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+EkimFGNL3D/SKyjUVYhIZzRbEoTqlnv2kHD0e4rYYCt/O4IYecNmch6HRfd2U/WSZPkAoJ+xa7
GKQSo51PL81HSvqURo2CxltObyTYiklnzGtbdWUMpOSCjDe8LpQjUNwhSksWjZjUQypyYXS4hbCR
VJy96ow8zi5m1XMzoLaVMDYoJYLtOVh7eaL7InaIL5gXJIHWkhoKYh9bR/O5HE6YTsgZl+Ofmx/3
0mQ/bL5ZKSY6gBEUD8f5+SoMIjfXrGkjMj1+fEAIv0fO/wKyJQMKnDOgWMvcUw56dOJ7FWkbNvbC
kzquuXhk5LuzZfXWmhyDSyMGBWK1wN7iyMKMUg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
LQ4hjhkD/G9XJd+gVR5WF2vSll/p8/psR+nHjJ5/DHrtiRqVWFVc7B7T9XZuJBmTqrQV4iSBYWDo
zNaVdq26mGk6TTNo11Dcici0hEwC2Bg66k9kr1if+0iZo3VtB/ZuEOj2w7euhFo3ja1OovnDXxf0
8t4WMUK68mfUiMuKgVcbOFhm3Jdnbnz4u7SggH2/rkfOS8jbon9q9n0EXlK23tz2NzDLCS8B7ERx
dYvwqwBiySKoP1/EcfSwFNIWpr6p7kbRo7iM/JbP6UwBbkDHgE8HGS+3lTXIUXsmGmsx6EDSr/gY
i7lHwZTmDuhuIEJaf6gTJgtqMSxVyDVsrnba5umKgV8z5OOWUkM3FjVWIXOG7Ef2iKFCzBPmp2Lk
8XbrXk/bb9H/jr4UR3hgdbizISTysLTJd4n5uyeDhDgkxAc+1FudacmuZyBlA/VTR1f0i9+cOgLI
kdqbo1u5hQwnMphluBKjdTA3nZ8VnpDbdq5R7hIF61tIrUfdjwQw02je

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JzhYMwmYowESMI19XNb+BEFcZw3IXZpwZO3gzrVg2CdSjbAR3tiIVbPHI5Rgu59SH7H8abU59Atd
+nrPiG37rmU6CD+cMV2mU8SHfCDLYsnrbd9YLZ1GEfqTovR0NZHQTHj+7c5dP7nqm30C/kg1adqd
DOV7F128PbmM5U45xRxOJKUgS/Waz0gvmYKKJejkiyFPOgGbN5f844mtysoOckLrAU/BzRs8SB9G
zzisK/a8hM5af8/opZ64TGhH44Npzy8kcP+gI+k+U0oF0SOqW7CjadKaJhr2oDkTScVVCbBqFEjc
2gH862vcCfZu5Cd0Sp2ALgoqVxA+91lAIHJp3Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ooNS+XjsaWLRgvcrNWVpR3ihKtIJNT1oT4D5ivD5mCfw+4/SAyx9P4cmdvOotLNPE1eqvx1Smd9Q
LDImL/GqS7Cq3KEUtEBbvQAOp+0SjiW74cC6nyOqCA8NQcn5JM+vUzGSsORPnM5qP96axGmyEvSi
p3uL9Gmx+3S3KUJuAzfuqZwJD7gdcA0Zv3hPRl+xhx8qFtkPCfT5uj7wpFVaaJ8tTl1SDd2uRUIx
rgVgV+oERCg71oEVN7PqPK1y7pFVgSW9uhP1wuvO/EsbyrLYZV6HtBn3tJDcxhTsQWrrou3F1kFQ
cFnl9tcL1wXJo/F3wvsbYM1W0UPHv69XAsEUhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d8YRbu+fllaHlNDedyRNDRtn9CBoVbO9fZCdhKpy0yf9dL6A08sFZuWVtVGljxF/L9volGB0IRjl
KbH2N/JBQA+tZWuh75kK5pjveAAKLVACS8A+Jmt/mrxzlolPWsruJ8o1Owrjq5tGWspdqmeDGS7U
/Ww7cN0C9ExUj4cjRDcKaqDS9MGwRtx4LfcQbQbRDZBk+cyRaWCchvmhjoum4uTizvqMq2u4oSym
t2zyKFjAuMO4zC2LbPbODeumm+FhlOKAHRyEBKA+VQeLB4apkMYparuD5AFWAuVvdWEbGq/L4cJ7
pEGz+6Hqi68CfF/4tMNiyHveP1lxnyAaiW6Kjg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 78000)
`pragma protect data_block
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
vUooo8Nqb0yI5K8Kt0swcdA+es6XK8Qo
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
