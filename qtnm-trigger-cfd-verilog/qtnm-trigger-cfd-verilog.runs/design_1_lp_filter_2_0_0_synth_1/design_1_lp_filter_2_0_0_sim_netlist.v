// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Sat Aug 12 16:27:31 2023
// Host        : XPS-13-9310 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lp_filter_2_0_0_sim_netlist.v
// Design      : design_1_lp_filter_2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lp_filter_2_0_0,lp_filter_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lp_filter_2,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    x,
    y);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input [0:0]clk;
  input [7:0]x;
  output [7:0]y;

  wire [0:0]clk;
  wire [7:0]x;
  wire [7:7]\^y ;

  assign y[7] = \^y [7];
  assign y[6] = \^y [7];
  assign y[5] = \^y [7];
  assign y[4] = \^y [7];
  assign y[3] = \^y [7];
  assign y[2] = \^y [7];
  assign y[1] = \^y [7];
  assign y[0] = \^y [7];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lp_filter_2 inst
       (.clk(clk),
        .x(x[5:0]),
        .y(\^y ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lp_filter_2
   (y,
    x,
    clk);
  output [0:0]y;
  input [5:0]x;
  input [0:0]clk;

  wire [0:0]clk;
  wire p_0_in0;
  wire [5:0]x;
  wire [0:0]y;
  wire \y[7]_i_10_n_0 ;
  wire \y[7]_i_11_n_0 ;
  wire \y[7]_i_12_n_0 ;
  wire \y[7]_i_13_n_0 ;
  wire \y[7]_i_14_n_0 ;
  wire \y[7]_i_15_n_0 ;
  wire \y[7]_i_16_n_0 ;
  wire \y[7]_i_19_n_0 ;
  wire \y[7]_i_20_n_0 ;
  wire \y[7]_i_21_n_0 ;
  wire \y[7]_i_22_n_0 ;
  wire \y[7]_i_23_n_0 ;
  wire \y[7]_i_4_n_0 ;
  wire \y[7]_i_5_n_0 ;
  wire \y[7]_i_7_n_0 ;
  wire \y[7]_i_8_n_0 ;
  wire \y[7]_i_9_n_0 ;
  wire \y_reg[7]_i_17_n_7 ;
  wire \y_reg[7]_i_18_n_0 ;
  wire \y_reg[7]_i_18_n_1 ;
  wire \y_reg[7]_i_18_n_2 ;
  wire \y_reg[7]_i_18_n_3 ;
  wire \y_reg[7]_i_18_n_4 ;
  wire \y_reg[7]_i_18_n_5 ;
  wire \y_reg[7]_i_18_n_6 ;
  wire \y_reg[7]_i_18_n_7 ;
  wire \y_reg[7]_i_1_n_3 ;
  wire \y_reg[7]_i_2_n_0 ;
  wire \y_reg[7]_i_2_n_1 ;
  wire \y_reg[7]_i_2_n_2 ;
  wire \y_reg[7]_i_2_n_3 ;
  wire \y_reg[7]_i_3_n_2 ;
  wire \y_reg[7]_i_3_n_3 ;
  wire \y_reg[7]_i_3_n_5 ;
  wire \y_reg[7]_i_3_n_6 ;
  wire \y_reg[7]_i_3_n_7 ;
  wire \y_reg[7]_i_6_n_0 ;
  wire \y_reg[7]_i_6_n_1 ;
  wire \y_reg[7]_i_6_n_2 ;
  wire \y_reg[7]_i_6_n_3 ;
  wire \y_reg[7]_i_6_n_4 ;
  wire \y_reg[7]_i_6_n_5 ;
  wire \y_reg[7]_i_6_n_6 ;
  wire [3:1]\NLW_y_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[7]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[7]_i_17_CO_UNCONNECTED ;
  wire [3:1]\NLW_y_reg[7]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[7]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[7]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_y_reg[7]_i_6_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_10 
       (.I0(\y_reg[7]_i_6_n_6 ),
        .I1(y),
        .O(\y[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \y[7]_i_11 
       (.I0(\y_reg[7]_i_17_n_7 ),
        .I1(x[1]),
        .I2(x[5]),
        .I3(\y_reg[7]_i_18_n_4 ),
        .I4(x[0]),
        .O(\y[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[7]_i_12 
       (.I0(x[0]),
        .I1(\y_reg[7]_i_18_n_4 ),
        .I2(x[4]),
        .O(\y[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_13 
       (.I0(x[3]),
        .I1(\y_reg[7]_i_18_n_5 ),
        .O(\y[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_14 
       (.I0(x[2]),
        .I1(\y_reg[7]_i_18_n_6 ),
        .O(\y[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_15 
       (.I0(x[1]),
        .I1(\y_reg[7]_i_18_n_7 ),
        .O(\y[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \y[7]_i_16 
       (.I0(x[0]),
        .O(\y[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[7]_i_19 
       (.I0(x[1]),
        .I1(x[4]),
        .O(\y[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[7]_i_20 
       (.I0(x[0]),
        .I1(x[3]),
        .O(\y[7]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[7]_i_21 
       (.I0(x[2]),
        .O(\y[7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[7]_i_22 
       (.I0(x[1]),
        .O(\y[7]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \y[7]_i_23 
       (.I0(x[0]),
        .O(\y[7]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \y[7]_i_4 
       (.I0(\y_reg[7]_i_3_n_5 ),
        .O(\y[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_5 
       (.I0(\y_reg[7]_i_3_n_6 ),
        .I1(y),
        .O(\y[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_7 
       (.I0(\y_reg[7]_i_3_n_7 ),
        .I1(y),
        .O(\y[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_8 
       (.I0(\y_reg[7]_i_6_n_4 ),
        .I1(y),
        .O(\y[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_9 
       (.I0(\y_reg[7]_i_6_n_5 ),
        .I1(y),
        .O(\y[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in0),
        .Q(y),
        .R(1'b0));
  CARRY4 \y_reg[7]_i_1 
       (.CI(\y_reg[7]_i_2_n_0 ),
        .CO({\NLW_y_reg[7]_i_1_CO_UNCONNECTED [3:1],\y_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\y_reg[7]_i_3_n_6 }),
        .O({\NLW_y_reg[7]_i_1_O_UNCONNECTED [3:2],p_0_in0,\NLW_y_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\y[7]_i_4_n_0 ,\y[7]_i_5_n_0 }));
  CARRY4 \y_reg[7]_i_17 
       (.CI(\y_reg[7]_i_18_n_0 ),
        .CO(\NLW_y_reg[7]_i_17_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg[7]_i_17_O_UNCONNECTED [3:1],\y_reg[7]_i_17_n_7 }),
        .S({1'b0,1'b0,1'b0,\y[7]_i_19_n_0 }));
  CARRY4 \y_reg[7]_i_18 
       (.CI(1'b0),
        .CO({\y_reg[7]_i_18_n_0 ,\y_reg[7]_i_18_n_1 ,\y_reg[7]_i_18_n_2 ,\y_reg[7]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({x[0],1'b0,1'b0,1'b1}),
        .O({\y_reg[7]_i_18_n_4 ,\y_reg[7]_i_18_n_5 ,\y_reg[7]_i_18_n_6 ,\y_reg[7]_i_18_n_7 }),
        .S({\y[7]_i_20_n_0 ,\y[7]_i_21_n_0 ,\y[7]_i_22_n_0 ,\y[7]_i_23_n_0 }));
  CARRY4 \y_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\y_reg[7]_i_2_n_0 ,\y_reg[7]_i_2_n_1 ,\y_reg[7]_i_2_n_2 ,\y_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\y_reg[7]_i_3_n_7 ,\y_reg[7]_i_6_n_4 ,\y_reg[7]_i_6_n_5 ,\y_reg[7]_i_6_n_6 }),
        .O(\NLW_y_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({\y[7]_i_7_n_0 ,\y[7]_i_8_n_0 ,\y[7]_i_9_n_0 ,\y[7]_i_10_n_0 }));
  CARRY4 \y_reg[7]_i_3 
       (.CI(\y_reg[7]_i_6_n_0 ),
        .CO({\NLW_y_reg[7]_i_3_CO_UNCONNECTED [3:2],\y_reg[7]_i_3_n_2 ,\y_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,x[4:3]}),
        .O({\NLW_y_reg[7]_i_3_O_UNCONNECTED [3],\y_reg[7]_i_3_n_5 ,\y_reg[7]_i_3_n_6 ,\y_reg[7]_i_3_n_7 }),
        .S({1'b0,\y[7]_i_11_n_0 ,\y[7]_i_12_n_0 ,\y[7]_i_13_n_0 }));
  CARRY4 \y_reg[7]_i_6 
       (.CI(1'b0),
        .CO({\y_reg[7]_i_6_n_0 ,\y_reg[7]_i_6_n_1 ,\y_reg[7]_i_6_n_2 ,\y_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({x[2:0],1'b0}),
        .O({\y_reg[7]_i_6_n_4 ,\y_reg[7]_i_6_n_5 ,\y_reg[7]_i_6_n_6 ,\NLW_y_reg[7]_i_6_O_UNCONNECTED [0]}),
        .S({\y[7]_i_14_n_0 ,\y[7]_i_15_n_0 ,\y[7]_i_16_n_0 ,1'b0}));
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
