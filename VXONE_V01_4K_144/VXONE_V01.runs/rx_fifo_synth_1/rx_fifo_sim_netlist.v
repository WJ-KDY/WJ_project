// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Oct 31 09:15:46 2023
// Host        : DESKTOP-T0RQS2O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/oem/Desktop/VXONE_V01_4K_144/VXONE_V01.runs/rx_fifo_synth_1/rx_fifo_sim_netlist.v
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
