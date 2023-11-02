// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Oct 27 15:24:09 2023
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
LIlFOAw0cd/v2P5WwmzFC0XKtrlT8Aag
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
