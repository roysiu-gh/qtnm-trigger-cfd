// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Sat Aug 12 16:27:31 2023
// Host        : XPS-13-9310 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/roysi/Files/URSS/Verilog/Practice/Practice.srcs/sources_1/bd/design_1/ip/design_1_lp_filter_2_0_0/design_1_lp_filter_2_0_0_stub.v
// Design      : design_1_lp_filter_2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lp_filter_2,Vivado 2016.3" *)
module design_1_lp_filter_2_0_0(clk, x, y)
/* synthesis syn_black_box black_box_pad_pin="clk[0:0],x[7:0],y[7:0]" */;
  input [0:0]clk;
  input [7:0]x;
  output [7:0]y;
endmodule
