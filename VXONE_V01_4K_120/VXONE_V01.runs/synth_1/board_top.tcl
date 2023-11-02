# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.runs/synth_1/board_top.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_msg_config  -id {[BD 41-1306]}  -suppress 
set_msg_config  -id {[BD 41-1271]}  -suppress 
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xcku11p-ffve1517-1-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.cache/wt [current_project]
set_property parent.project_path C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths ../../../ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
add_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/imports/Debug/mb_0.elf
set_property SCOPED_TO_REF CPU_block [get_files -all C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/imports/Debug/mb_0.elf]
set_property SCOPED_TO_CELLS microblaze_0 [get_files -all C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/imports/Debug/mb_0.elf]
read_verilog C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/imports/vx1/us_vbone_phy_wrapper_functions.v
set_property file_type "Verilog Header" [get_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/imports/vx1/us_vbone_phy_wrapper_functions.v]
read_verilog -library xil_defaultlib {
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/Reset_Gen.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/Vbyone_Rx.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/Vbyone_Tx.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/VxOne.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/amm_regfile.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/ddr_emul.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/fifos.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/g_reset.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/gt_mapping.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/power_on_reset.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/refclkm.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/rx_align_buff.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/si5386_spi.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/imports/spi_fifo_wrapper.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/vx1/us_vbone_phy_wrapper.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/vid_tpg.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/new/vx1_debug.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/vx1/vx1_wrapper.v
  C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/board_top.v
}
add_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/bd/CPU_block/CPU_block.bd
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_dlmb_v10_1/CPU_block_dlmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_ilmb_v10_1/CPU_block_ilmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_dlmb_bram_if_cntlr_1/CPU_block_dlmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_ilmb_bram_if_cntlr_1/CPU_block_ilmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_lmb_bram_1/CPU_block_lmb_bram_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_mdm_1_1/CPU_block_mdm_1_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_mdm_1_1/CPU_block_mdm_1_1_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_mdm_1_1/CPU_block_mdm_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_1_1/CPU_block_clk_wiz_1_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_1_1/CPU_block_clk_wiz_1_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_1_1/CPU_block_clk_wiz_1_1_late.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_1_1/CPU_block_clk_wiz_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_rst_clk_wiz_1_100M_0/CPU_block_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_rst_clk_wiz_1_100M_0/CPU_block_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_rst_clk_wiz_1_100M_0/CPU_block_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_xbar_0/CPU_block_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_intc_0_0/CPU_block_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_intc_0_0/CPU_block_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_intc_0_0/CPU_block_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_amm_bridge_0_0/CPU_block_axi_amm_bridge_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_amm_bridge_0_0/CPU_block_axi_amm_bridge_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_0_0/CPU_block_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_0_0/CPU_block_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_0_0/CPU_block_clk_wiz_0_0_late.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_clk_wiz_0_0/CPU_block_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_microblaze_0_2/CPU_block_microblaze_0_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_microblaze_0_2/CPU_block_microblaze_0_2_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_microblaze_0_2/CPU_block_microblaze_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_uartlite_0_0/CPU_block_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_uartlite_0_0/CPU_block_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_axi_uartlite_0_0/CPU_block_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/CPU_block_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.gen/sources_1/bd/CPU_block/ip/CPU_block_microblaze_0_2/data/mb_bootloop_le.elf]

read_ip -quiet C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vid_ila/vx1_vid_ila.xci
set_property used_in_synthesis false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vid_ila/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vid_ila/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vid_ila/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vid_ila/vx1_vid_ila_ooc.xdc]

read_ip -quiet C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/rx_fifo/rx_fifo.xci
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/rx_fifo/rx_fifo.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/rx_fifo/rx_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/rx_fifo/rx_fifo_ooc.xdc]

read_ip -quiet C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_phy/vx1_phy.xci
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_phy/synth/vx1_phy_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_phy/synth/vx1_phy.xdc]

read_ip -quiet C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vio_0/vx1_vio_0.xci
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vio_0/vx1_vio_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/ip/vx1_vio_0/vx1_vio_0_ooc.xdc]

read_edif C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/vx1/VbyOne_TX_161212.edf
read_edif C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/sources_1/hdl/vx1/VbyOne_RX_161212.edf
OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/pin.xdc
set_property used_in_implementation false [get_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/pin.xdc]

read_xdc C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/us_vbone_phy_top.xdc
set_property used_in_implementation false [get_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/us_vbone_phy_top.xdc]

read_xdc C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/config.xdc
set_property used_in_implementation false [get_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/config.xdc]

read_xdc C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/timing.xdc
set_property used_in_implementation false [get_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/imports/xdc/timing.xdc]

read_xdc C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/new/debug.xdc
set_property used_in_implementation false [get_files C:/Users/oem/Desktop/VXONE_V01_4K_120/VXONE_V01.srcs/constrs_1/new/debug.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top board_top -part xcku11p-ffve1517-1-i
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef board_top.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file board_top_utilization_synth.rpt -pb board_top_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }