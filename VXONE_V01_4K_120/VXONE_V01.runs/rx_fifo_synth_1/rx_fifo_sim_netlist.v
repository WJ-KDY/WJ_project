// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Oct 27 15:24:10 2023
// Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.runs/rx_fifo_synth_1/rx_fifo_sim_netlist.v
// Design      : rx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku11p-ffve1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rx_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module rx_fifo
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
  rx_fifo_fifo_generator_v13_2_7 U0
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
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module rx_fifo_xpm_cdc_async_rst
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
module rx_fifo_xpm_cdc_async_rst__1
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module rx_fifo_xpm_cdc_gray
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
module rx_fifo_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module rx_fifo_xpm_cdc_single
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
module rx_fifo_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77440)
`pragma protect data_block
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
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
