//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Tue Jul 25 15:04:26 2023
//Host        : XPS-13-9310 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (adc_clk_n_i);
  input adc_clk_n_i;

  wire adc_clk_n_i_1;

  assign adc_clk_n_i_1 = adc_clk_n_i;
  design_1_logic_1_0_0 logic_1_0
       (.a(1'b0),
        .b(1'b0),
        .c(1'b0),
        .d(1'b0));
  design_1_main_0_0 main_0
       (.clock(adc_clk_n_i_1));
endmodule
