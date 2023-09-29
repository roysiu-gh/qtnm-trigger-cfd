//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Sat Aug 12 16:26:29 2023
//Host        : XPS-13-9310 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (MF_out,
    adc_clk_n_i,
    record_data);
  input MF_out;
  input adc_clk_n_i;
  output [0:0]record_data;

  wire MF_out_1;
  wire adc_clk_n_i_1;
  wire [7:0]cfd_0_y;
  wire [7:0]lp_filter_2_0_y;
  wire zero_detector_0_y;

  assign MF_out_1 = MF_out;
  assign adc_clk_n_i_1 = adc_clk_n_i;
  assign record_data[0] = zero_detector_0_y;
  design_1_cfd_0_0 cfd_0
       (.clk(adc_clk_n_i_1),
        .x(lp_filter_2_0_y),
        .y(cfd_0_y));
  design_1_lp_filter_2_0_0 lp_filter_2_0
       (.clk(adc_clk_n_i_1),
        .x({MF_out_1,MF_out_1,MF_out_1,MF_out_1,MF_out_1,MF_out_1,MF_out_1,MF_out_1}),
        .y(lp_filter_2_0_y));
  design_1_zero_detector_0_0 zero_detector_0
       (.clk(adc_clk_n_i_1),
        .x(cfd_0_y),
        .y(zero_detector_0_y));
endmodule
