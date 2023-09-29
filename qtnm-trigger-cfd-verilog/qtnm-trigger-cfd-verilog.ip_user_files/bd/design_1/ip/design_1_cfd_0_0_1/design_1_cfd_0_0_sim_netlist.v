// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Wed Aug 09 14:27:04 2023
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

  wire [7:0]x;
  wire [7:2]\^y ;

  assign y[7:2] = \^y [7:2];
  assign y[1:0] = x[1:0];
  design_1_cfd_0_0_cfd inst
       (.x(x),
        .y(\^y ));
endmodule

(* ORIG_REF_NAME = "cfd" *) 
module design_1_cfd_0_0_cfd
   (y,
    x);
  output [5:0]y;
  input [7:0]x;

  wire [7:0]x;
  wire [5:0]y;
  wire y0_carry__0_n_3;
  wire y0_carry_i_1__0_n_0;
  wire y0_carry_i_1_n_0;
  wire y0_carry_i_2__0_n_0;
  wire y0_carry_i_2_n_0;
  wire y0_carry_i_3_n_0;
  wire y0_carry_i_4_n_0;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire [3:1]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_y0_carry__0_O_UNCONNECTED;

  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({x[5:3],1'b0}),
        .O(y[3:0]),
        .S({y0_carry_i_1__0_n_0,y0_carry_i_2__0_n_0,y0_carry_i_3_n_0,y0_carry_i_4_n_0}));
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({NLW_y0_carry__0_CO_UNCONNECTED[3:1],y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,x[6]}),
        .O({NLW_y0_carry__0_O_UNCONNECTED[3:2],y[5:4]}),
        .S({1'b0,1'b0,y0_carry_i_1_n_0,y0_carry_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    y0_carry_i_1
       (.I0(x[7]),
        .I1(x[4]),
        .I2(x[2]),
        .I3(x[0]),
        .I4(x[1]),
        .I5(x[3]),
        .O(y0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9996)) 
    y0_carry_i_1__0
       (.I0(x[5]),
        .I1(x[2]),
        .I2(x[0]),
        .I3(x[1]),
        .O(y0_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h99999996)) 
    y0_carry_i_2
       (.I0(x[6]),
        .I1(x[3]),
        .I2(x[1]),
        .I3(x[0]),
        .I4(x[2]),
        .O(y0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    y0_carry_i_2__0
       (.I0(x[4]),
        .I1(x[1]),
        .I2(x[0]),
        .O(y0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_carry_i_3
       (.I0(x[3]),
        .I1(x[0]),
        .O(y0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    y0_carry_i_4
       (.I0(x[2]),
        .O(y0_carry_i_4_n_0));
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
