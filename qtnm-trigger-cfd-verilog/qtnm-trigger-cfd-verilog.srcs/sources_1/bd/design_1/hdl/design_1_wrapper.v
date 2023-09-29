//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Sat Aug 12 16:26:29 2023
//Host        : XPS-13-9310 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (MF_out,
    adc_clk_n_i,
    record_data);
  input MF_out;
  input adc_clk_n_i;
  output [0:0]record_data;

  wire MF_out;
  wire adc_clk_n_i;
  wire [0:0]record_data;

  design_1 design_1_i
       (.MF_out(MF_out),
        .adc_clk_n_i(adc_clk_n_i),
        .record_data(record_data));
endmodule
