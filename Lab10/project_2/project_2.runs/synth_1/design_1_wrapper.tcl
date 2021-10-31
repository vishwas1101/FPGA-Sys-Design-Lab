# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
set_param synth.incrementalSynthesisCache C:/Users/LENOVO/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-5424-DESKTOP-01OUUJ0/incrSyn
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.cache/wt [current_project]
set_property parent.project_path F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo f:/CompArch/FPGA_Lab/Lab10/project_2/project_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all f:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_0_0/design_1_mult_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_0_1/design_1_mult_gen_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/constrs_1/new/cons.xdc
set_property used_in_implementation false [get_files F:/CompArch/FPGA_Lab/Lab10/project_2/project_2.srcs/constrs_1/new/cons.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
