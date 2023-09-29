// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Sat Aug 12 16:27:05 2023
// Host        : XPS-13-9310 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/roysi/Files/URSS/Verilog/Practice/Practice.srcs/sources_1/bd/design_1/ip/design_1_cfd_0_0_1/design_1_cfd_0_0_sim_netlist.v
// Design      : design_1_cfd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_cfd_0_0,cfd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cfd,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module design_1_cfd_0_0
   (clk,
    x,
    y);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [7:0]x;
  output [7:0]y;

  wire clk;
  wire [7:0]x;
  wire [7:0]y;

  design_1_cfd_0_0_cfd inst
       (.clk(clk),
        .x(x),
        .y(y));
endmodule

(* ORIG_REF_NAME = "cfd" *) 
module design_1_cfd_0_0_cfd
   (y,
    x,
    clk);
  output [7:0]y;
  input [7:0]x;
  input clk;

  wire \buffer_reg[31][2]_srl32_n_1 ;
  wire \buffer_reg[31][3]_srl32_n_1 ;
  wire \buffer_reg[31][4]_srl32_n_1 ;
  wire \buffer_reg[32][0]_srl32_n_1 ;
  wire \buffer_reg[32][1]_srl32_n_1 ;
  wire \buffer_reg[63][2]_srl32_n_1 ;
  wire \buffer_reg[63][3]_srl32_n_1 ;
  wire \buffer_reg[63][4]_srl32_n_1 ;
  wire \buffer_reg[64][0]_srl32_n_1 ;
  wire \buffer_reg[64][1]_srl32_n_1 ;
  wire \buffer_reg[95][2]_srl32_n_1 ;
  wire \buffer_reg[95][3]_srl32_n_1 ;
  wire \buffer_reg[95][4]_srl32_n_1 ;
  wire \buffer_reg[96][0]_srl32_n_1 ;
  wire \buffer_reg[96][1]_srl32_n_1 ;
  wire \buffer_reg[98][0]_srl2_n_0 ;
  wire \buffer_reg[98][1]_srl2_n_0 ;
  wire \buffer_reg[98][2]_srl3_n_0 ;
  wire \buffer_reg[98][3]_srl3_n_0 ;
  wire \buffer_reg[98][4]_srl3_n_0 ;
  wire [4:0]\buffer_reg[99] ;
  wire clk;
  wire [7:0]x;
  wire [7:0]y;
  wire [7:2]y0;
  wire y0_carry__0_i_1_n_0;
  wire y0_carry__0_i_2_n_0;
  wire y0_carry__0_n_3;
  wire y0_carry_i_1_n_0;
  wire y0_carry_i_2_n_0;
  wire y0_carry_i_3_n_0;
  wire y0_carry_i_4_n_0;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire \NLW_buffer_reg[31][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[31][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[31][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[32][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[32][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[63][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[63][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[63][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[64][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[64][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[95][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[95][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[95][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[96][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_buffer_reg[96][1]_srl32_Q_UNCONNECTED ;
  wire [3:1]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_y0_carry__0_O_UNCONNECTED;

  (* srl_bus_name = "\inst/buffer_reg[31] " *) 
  (* srl_name = "\inst/buffer_reg[31][2]_srl32 " *) 
  SRLC32E \buffer_reg[31][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(x[2]),
        .Q(\NLW_buffer_reg[31][2]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[31][2]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[31] " *) 
  (* srl_name = "\inst/buffer_reg[31][3]_srl32 " *) 
  SRLC32E \buffer_reg[31][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(x[3]),
        .Q(\NLW_buffer_reg[31][3]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[31][3]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[31] " *) 
  (* srl_name = "\inst/buffer_reg[31][4]_srl32 " *) 
  SRLC32E \buffer_reg[31][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(x[4]),
        .Q(\NLW_buffer_reg[31][4]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[31][4]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[32] " *) 
  (* srl_name = "\inst/buffer_reg[32][0]_srl32 " *) 
  SRLC32E \buffer_reg[32][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(y[0]),
        .Q(\NLW_buffer_reg[32][0]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[32][0]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[32] " *) 
  (* srl_name = "\inst/buffer_reg[32][1]_srl32 " *) 
  SRLC32E \buffer_reg[32][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(y[1]),
        .Q(\NLW_buffer_reg[32][1]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[32][1]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[63] " *) 
  (* srl_name = "\inst/buffer_reg[63][2]_srl32 " *) 
  SRLC32E \buffer_reg[63][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[31][2]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[63][2]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[63][2]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[63] " *) 
  (* srl_name = "\inst/buffer_reg[63][3]_srl32 " *) 
  SRLC32E \buffer_reg[63][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[31][3]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[63][3]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[63][3]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[63] " *) 
  (* srl_name = "\inst/buffer_reg[63][4]_srl32 " *) 
  SRLC32E \buffer_reg[63][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[31][4]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[63][4]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[63][4]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[64] " *) 
  (* srl_name = "\inst/buffer_reg[64][0]_srl32 " *) 
  SRLC32E \buffer_reg[64][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[32][0]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[64][0]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[64][0]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[64] " *) 
  (* srl_name = "\inst/buffer_reg[64][1]_srl32 " *) 
  SRLC32E \buffer_reg[64][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[32][1]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[64][1]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[64][1]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[95] " *) 
  (* srl_name = "\inst/buffer_reg[95][2]_srl32 " *) 
  SRLC32E \buffer_reg[95][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[63][2]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[95][2]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[95][2]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[95] " *) 
  (* srl_name = "\inst/buffer_reg[95][3]_srl32 " *) 
  SRLC32E \buffer_reg[95][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[63][3]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[95][3]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[95][3]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[95] " *) 
  (* srl_name = "\inst/buffer_reg[95][4]_srl32 " *) 
  SRLC32E \buffer_reg[95][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[63][4]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[95][4]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[95][4]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[96] " *) 
  (* srl_name = "\inst/buffer_reg[96][0]_srl32 " *) 
  SRLC32E \buffer_reg[96][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[64][0]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[96][0]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[96][0]_srl32_n_1 ));
  (* srl_bus_name = "\inst/buffer_reg[96] " *) 
  (* srl_name = "\inst/buffer_reg[96][1]_srl32 " *) 
  SRLC32E \buffer_reg[96][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[64][1]_srl32_n_1 ),
        .Q(\NLW_buffer_reg[96][1]_srl32_Q_UNCONNECTED ),
        .Q31(\buffer_reg[96][1]_srl32_n_1 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\inst/buffer_reg[98] " *) 
  (* srl_name = "\inst/buffer_reg[98][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \buffer_reg[98][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[96][0]_srl32_n_1 ),
        .Q(\buffer_reg[98][0]_srl2_n_0 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\inst/buffer_reg[98] " *) 
  (* srl_name = "\inst/buffer_reg[98][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \buffer_reg[98][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[96][1]_srl32_n_1 ),
        .Q(\buffer_reg[98][1]_srl2_n_0 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\inst/buffer_reg[98] " *) 
  (* srl_name = "\inst/buffer_reg[98][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \buffer_reg[98][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[95][2]_srl32_n_1 ),
        .Q(\buffer_reg[98][2]_srl3_n_0 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\inst/buffer_reg[98] " *) 
  (* srl_name = "\inst/buffer_reg[98][3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \buffer_reg[98][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[95][3]_srl32_n_1 ),
        .Q(\buffer_reg[98][3]_srl3_n_0 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\inst/buffer_reg[98] " *) 
  (* srl_name = "\inst/buffer_reg[98][4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \buffer_reg[98][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buffer_reg[95][4]_srl32_n_1 ),
        .Q(\buffer_reg[98][4]_srl3_n_0 ));
  FDRE \buffer_reg[99][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\buffer_reg[98][0]_srl2_n_0 ),
        .Q(\buffer_reg[99] [0]),
        .R(1'b0));
  FDRE \buffer_reg[99][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\buffer_reg[98][1]_srl2_n_0 ),
        .Q(\buffer_reg[99] [1]),
        .R(1'b0));
  FDRE \buffer_reg[99][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\buffer_reg[98][2]_srl3_n_0 ),
        .Q(\buffer_reg[99] [2]),
        .R(1'b0));
  FDRE \buffer_reg[99][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\buffer_reg[98][3]_srl3_n_0 ),
        .Q(\buffer_reg[99] [3]),
        .R(1'b0));
  FDRE \buffer_reg[99][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\buffer_reg[98][4]_srl3_n_0 ),
        .Q(\buffer_reg[99] [4]),
        .R(1'b0));
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({x[5:3],1'b0}),
        .O(y0[5:2]),
        .S({y0_carry_i_1_n_0,y0_carry_i_2_n_0,y0_carry_i_3_n_0,y0_carry_i_4_n_0}));
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({NLW_y0_carry__0_CO_UNCONNECTED[3:1],y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,x[6]}),
        .O({NLW_y0_carry__0_O_UNCONNECTED[3:2],y0[7:6]}),
        .S({1'b0,1'b0,y0_carry__0_i_1_n_0,y0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    y0_carry__0_i_1
       (.I0(x[7]),
        .I1(\buffer_reg[99] [4]),
        .I2(\buffer_reg[99] [2]),
        .I3(\buffer_reg[99] [0]),
        .I4(\buffer_reg[99] [1]),
        .I5(\buffer_reg[99] [3]),
        .O(y0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h99999996)) 
    y0_carry__0_i_2
       (.I0(x[6]),
        .I1(\buffer_reg[99] [3]),
        .I2(\buffer_reg[99] [1]),
        .I3(\buffer_reg[99] [0]),
        .I4(\buffer_reg[99] [2]),
        .O(y0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9996)) 
    y0_carry_i_1
       (.I0(x[5]),
        .I1(\buffer_reg[99] [2]),
        .I2(\buffer_reg[99] [0]),
        .I3(\buffer_reg[99] [1]),
        .O(y0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    y0_carry_i_2
       (.I0(x[4]),
        .I1(\buffer_reg[99] [1]),
        .I2(\buffer_reg[99] [0]),
        .O(y0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_carry_i_3
       (.I0(x[3]),
        .I1(\buffer_reg[99] [0]),
        .O(y0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    y0_carry_i_4
       (.I0(x[2]),
        .O(y0_carry_i_4_n_0));
  FDRE \y_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(x[0]),
        .Q(y[0]),
        .R(1'b0));
  FDRE \y_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(x[1]),
        .Q(y[1]),
        .R(1'b0));
  FDRE \y_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(y0[2]),
        .Q(y[2]),
        .R(1'b0));
  FDRE \y_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(y0[3]),
        .Q(y[3]),
        .R(1'b0));
  FDRE \y_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(y0[4]),
        .Q(y[4]),
        .R(1'b0));
  FDRE \y_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(y0[5]),
        .Q(y[5]),
        .R(1'b0));
  FDRE \y_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(y0[6]),
        .Q(y[6]),
        .R(1'b0));
  FDRE \y_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(y0[7]),
        .Q(y[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
