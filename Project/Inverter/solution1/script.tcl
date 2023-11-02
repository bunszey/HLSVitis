############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Inverter
set_top inverter
add_files ../inverter_hls.cpp
add_files -tb ../inverter_hls_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
#source "./Inverter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
