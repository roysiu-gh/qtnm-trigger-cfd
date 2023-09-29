-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Wed Aug 09 14:28:25 2023
-- Host        : XPS-13-9310 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/roysi/Files/URSS/Verilog/Practice/Practice.srcs/sources_1/bd/design_1/ip/design_1_lp_filter_2_0_0/design_1_lp_filter_2_0_0_sim_netlist.vhdl
-- Design      : design_1_lp_filter_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lp_filter_2_0_0_lp_filter_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    x : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lp_filter_2_0_0_lp_filter_2 : entity is "lp_filter_2";
end design_1_lp_filter_2_0_0_lp_filter_2;

architecture STRUCTURE of design_1_lp_filter_2_0_0_lp_filter_2 is
  signal B : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal y10_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \y1__100_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_4\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_5\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_6\ : STD_LOGIC;
  signal \y1__100_carry__0_i_9_n_7\ : STD_LOGIC;
  signal \y1__100_carry__0_n_0\ : STD_LOGIC;
  signal \y1__100_carry__0_n_1\ : STD_LOGIC;
  signal \y1__100_carry__0_n_2\ : STD_LOGIC;
  signal \y1__100_carry__0_n_3\ : STD_LOGIC;
  signal \y1__100_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_n_0\ : STD_LOGIC;
  signal \y1__100_carry__10_n_1\ : STD_LOGIC;
  signal \y1__100_carry__10_n_2\ : STD_LOGIC;
  signal \y1__100_carry__10_n_3\ : STD_LOGIC;
  signal \y1__100_carry__10_n_4\ : STD_LOGIC;
  signal \y1__100_carry__10_n_5\ : STD_LOGIC;
  signal \y1__100_carry__10_n_6\ : STD_LOGIC;
  signal \y1__100_carry__10_n_7\ : STD_LOGIC;
  signal \y1__100_carry__11_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__11_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__11_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__11_n_3\ : STD_LOGIC;
  signal \y1__100_carry__11_n_6\ : STD_LOGIC;
  signal \y1__100_carry__11_n_7\ : STD_LOGIC;
  signal \y1__100_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_1\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_2\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_4\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_5\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_6\ : STD_LOGIC;
  signal \y1__100_carry__1_i_9_n_7\ : STD_LOGIC;
  signal \y1__100_carry__1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__1_n_1\ : STD_LOGIC;
  signal \y1__100_carry__1_n_2\ : STD_LOGIC;
  signal \y1__100_carry__1_n_3\ : STD_LOGIC;
  signal \y1__100_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_i_9_n_3\ : STD_LOGIC;
  signal \y1__100_carry__2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__2_n_1\ : STD_LOGIC;
  signal \y1__100_carry__2_n_2\ : STD_LOGIC;
  signal \y1__100_carry__2_n_3\ : STD_LOGIC;
  signal \y1__100_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__3_n_1\ : STD_LOGIC;
  signal \y1__100_carry__3_n_2\ : STD_LOGIC;
  signal \y1__100_carry__3_n_3\ : STD_LOGIC;
  signal \y1__100_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__4_n_1\ : STD_LOGIC;
  signal \y1__100_carry__4_n_2\ : STD_LOGIC;
  signal \y1__100_carry__4_n_3\ : STD_LOGIC;
  signal \y1__100_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__5_n_1\ : STD_LOGIC;
  signal \y1__100_carry__5_n_2\ : STD_LOGIC;
  signal \y1__100_carry__5_n_3\ : STD_LOGIC;
  signal \y1__100_carry__5_n_4\ : STD_LOGIC;
  signal \y1__100_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__6_n_1\ : STD_LOGIC;
  signal \y1__100_carry__6_n_2\ : STD_LOGIC;
  signal \y1__100_carry__6_n_3\ : STD_LOGIC;
  signal \y1__100_carry__6_n_4\ : STD_LOGIC;
  signal \y1__100_carry__6_n_5\ : STD_LOGIC;
  signal \y1__100_carry__6_n_6\ : STD_LOGIC;
  signal \y1__100_carry__6_n_7\ : STD_LOGIC;
  signal \y1__100_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__7_n_1\ : STD_LOGIC;
  signal \y1__100_carry__7_n_2\ : STD_LOGIC;
  signal \y1__100_carry__7_n_3\ : STD_LOGIC;
  signal \y1__100_carry__7_n_4\ : STD_LOGIC;
  signal \y1__100_carry__7_n_5\ : STD_LOGIC;
  signal \y1__100_carry__7_n_6\ : STD_LOGIC;
  signal \y1__100_carry__7_n_7\ : STD_LOGIC;
  signal \y1__100_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__8_n_1\ : STD_LOGIC;
  signal \y1__100_carry__8_n_2\ : STD_LOGIC;
  signal \y1__100_carry__8_n_3\ : STD_LOGIC;
  signal \y1__100_carry__8_n_4\ : STD_LOGIC;
  signal \y1__100_carry__8_n_5\ : STD_LOGIC;
  signal \y1__100_carry__8_n_6\ : STD_LOGIC;
  signal \y1__100_carry__8_n_7\ : STD_LOGIC;
  signal \y1__100_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_n_0\ : STD_LOGIC;
  signal \y1__100_carry__9_n_1\ : STD_LOGIC;
  signal \y1__100_carry__9_n_2\ : STD_LOGIC;
  signal \y1__100_carry__9_n_3\ : STD_LOGIC;
  signal \y1__100_carry__9_n_4\ : STD_LOGIC;
  signal \y1__100_carry__9_n_5\ : STD_LOGIC;
  signal \y1__100_carry__9_n_6\ : STD_LOGIC;
  signal \y1__100_carry__9_n_7\ : STD_LOGIC;
  signal \y1__100_carry_i_10_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_11_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_1_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_2_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_3_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_4_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_5_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_6_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_1\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_2\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_3\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_4\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_5\ : STD_LOGIC;
  signal \y1__100_carry_i_7_n_6\ : STD_LOGIC;
  signal \y1__100_carry_i_8_n_0\ : STD_LOGIC;
  signal \y1__100_carry_i_9_n_0\ : STD_LOGIC;
  signal \y1__100_carry_n_0\ : STD_LOGIC;
  signal \y1__100_carry_n_1\ : STD_LOGIC;
  signal \y1__100_carry_n_2\ : STD_LOGIC;
  signal \y1__100_carry_n_3\ : STD_LOGIC;
  signal \y1__219_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_n_0\ : STD_LOGIC;
  signal \y1__219_carry__0_n_1\ : STD_LOGIC;
  signal \y1__219_carry__0_n_2\ : STD_LOGIC;
  signal \y1__219_carry__0_n_3\ : STD_LOGIC;
  signal \y1__219_carry__0_n_4\ : STD_LOGIC;
  signal \y1__219_carry__0_n_5\ : STD_LOGIC;
  signal \y1__219_carry__0_n_6\ : STD_LOGIC;
  signal \y1__219_carry__0_n_7\ : STD_LOGIC;
  signal \y1__219_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__1_n_1\ : STD_LOGIC;
  signal \y1__219_carry__1_n_2\ : STD_LOGIC;
  signal \y1__219_carry__1_n_3\ : STD_LOGIC;
  signal \y1__219_carry__1_n_4\ : STD_LOGIC;
  signal \y1__219_carry__1_n_5\ : STD_LOGIC;
  signal \y1__219_carry__1_n_6\ : STD_LOGIC;
  signal \y1__219_carry__1_n_7\ : STD_LOGIC;
  signal \y1__219_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__2_n_1\ : STD_LOGIC;
  signal \y1__219_carry__2_n_2\ : STD_LOGIC;
  signal \y1__219_carry__2_n_3\ : STD_LOGIC;
  signal \y1__219_carry__2_n_4\ : STD_LOGIC;
  signal \y1__219_carry__2_n_5\ : STD_LOGIC;
  signal \y1__219_carry__2_n_6\ : STD_LOGIC;
  signal \y1__219_carry__2_n_7\ : STD_LOGIC;
  signal \y1__219_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_n_0\ : STD_LOGIC;
  signal \y1__219_carry__3_n_1\ : STD_LOGIC;
  signal \y1__219_carry__3_n_2\ : STD_LOGIC;
  signal \y1__219_carry__3_n_3\ : STD_LOGIC;
  signal \y1__219_carry__3_n_4\ : STD_LOGIC;
  signal \y1__219_carry__3_n_5\ : STD_LOGIC;
  signal \y1__219_carry__3_n_6\ : STD_LOGIC;
  signal \y1__219_carry__3_n_7\ : STD_LOGIC;
  signal \y1__219_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_n_0\ : STD_LOGIC;
  signal \y1__219_carry__4_n_1\ : STD_LOGIC;
  signal \y1__219_carry__4_n_2\ : STD_LOGIC;
  signal \y1__219_carry__4_n_3\ : STD_LOGIC;
  signal \y1__219_carry__4_n_4\ : STD_LOGIC;
  signal \y1__219_carry__4_n_5\ : STD_LOGIC;
  signal \y1__219_carry__4_n_6\ : STD_LOGIC;
  signal \y1__219_carry__4_n_7\ : STD_LOGIC;
  signal \y1__219_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry__5_n_1\ : STD_LOGIC;
  signal \y1__219_carry__5_n_3\ : STD_LOGIC;
  signal \y1__219_carry__5_n_6\ : STD_LOGIC;
  signal \y1__219_carry__5_n_7\ : STD_LOGIC;
  signal \y1__219_carry_i_1_n_0\ : STD_LOGIC;
  signal \y1__219_carry_i_2_n_0\ : STD_LOGIC;
  signal \y1__219_carry_i_3_n_0\ : STD_LOGIC;
  signal \y1__219_carry_i_4_n_0\ : STD_LOGIC;
  signal \y1__219_carry_i_5_n_0\ : STD_LOGIC;
  signal \y1__219_carry_i_6_n_0\ : STD_LOGIC;
  signal \y1__219_carry_i_7_n_0\ : STD_LOGIC;
  signal \y1__219_carry_n_0\ : STD_LOGIC;
  signal \y1__219_carry_n_1\ : STD_LOGIC;
  signal \y1__219_carry_n_2\ : STD_LOGIC;
  signal \y1__219_carry_n_3\ : STD_LOGIC;
  signal \y1__219_carry_n_4\ : STD_LOGIC;
  signal \y1__219_carry_n_5\ : STD_LOGIC;
  signal \y1__219_carry_n_6\ : STD_LOGIC;
  signal \y1__219_carry_n_7\ : STD_LOGIC;
  signal \y1__296_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_n_0\ : STD_LOGIC;
  signal \y1__296_carry__0_n_1\ : STD_LOGIC;
  signal \y1__296_carry__0_n_2\ : STD_LOGIC;
  signal \y1__296_carry__0_n_3\ : STD_LOGIC;
  signal \y1__296_carry__0_n_4\ : STD_LOGIC;
  signal \y1__296_carry__0_n_5\ : STD_LOGIC;
  signal \y1__296_carry__0_n_6\ : STD_LOGIC;
  signal \y1__296_carry__0_n_7\ : STD_LOGIC;
  signal \y1__296_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__1_n_1\ : STD_LOGIC;
  signal \y1__296_carry__1_n_2\ : STD_LOGIC;
  signal \y1__296_carry__1_n_3\ : STD_LOGIC;
  signal \y1__296_carry__1_n_4\ : STD_LOGIC;
  signal \y1__296_carry__1_n_5\ : STD_LOGIC;
  signal \y1__296_carry__1_n_6\ : STD_LOGIC;
  signal \y1__296_carry__1_n_7\ : STD_LOGIC;
  signal \y1__296_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_n_0\ : STD_LOGIC;
  signal \y1__296_carry__2_n_1\ : STD_LOGIC;
  signal \y1__296_carry__2_n_2\ : STD_LOGIC;
  signal \y1__296_carry__2_n_3\ : STD_LOGIC;
  signal \y1__296_carry__2_n_4\ : STD_LOGIC;
  signal \y1__296_carry__2_n_5\ : STD_LOGIC;
  signal \y1__296_carry__2_n_6\ : STD_LOGIC;
  signal \y1__296_carry__2_n_7\ : STD_LOGIC;
  signal \y1__296_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_n_0\ : STD_LOGIC;
  signal \y1__296_carry__3_n_1\ : STD_LOGIC;
  signal \y1__296_carry__3_n_2\ : STD_LOGIC;
  signal \y1__296_carry__3_n_3\ : STD_LOGIC;
  signal \y1__296_carry__3_n_4\ : STD_LOGIC;
  signal \y1__296_carry__3_n_5\ : STD_LOGIC;
  signal \y1__296_carry__3_n_6\ : STD_LOGIC;
  signal \y1__296_carry__3_n_7\ : STD_LOGIC;
  signal \y1__296_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_n_0\ : STD_LOGIC;
  signal \y1__296_carry__4_n_1\ : STD_LOGIC;
  signal \y1__296_carry__4_n_2\ : STD_LOGIC;
  signal \y1__296_carry__4_n_3\ : STD_LOGIC;
  signal \y1__296_carry__4_n_4\ : STD_LOGIC;
  signal \y1__296_carry__4_n_5\ : STD_LOGIC;
  signal \y1__296_carry__4_n_6\ : STD_LOGIC;
  signal \y1__296_carry__4_n_7\ : STD_LOGIC;
  signal \y1__296_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry__5_n_7\ : STD_LOGIC;
  signal \y1__296_carry_i_1_n_0\ : STD_LOGIC;
  signal \y1__296_carry_i_2_n_0\ : STD_LOGIC;
  signal \y1__296_carry_i_3_n_0\ : STD_LOGIC;
  signal \y1__296_carry_i_4_n_0\ : STD_LOGIC;
  signal \y1__296_carry_i_5_n_0\ : STD_LOGIC;
  signal \y1__296_carry_i_6_n_0\ : STD_LOGIC;
  signal \y1__296_carry_i_7_n_0\ : STD_LOGIC;
  signal \y1__296_carry_n_0\ : STD_LOGIC;
  signal \y1__296_carry_n_1\ : STD_LOGIC;
  signal \y1__296_carry_n_2\ : STD_LOGIC;
  signal \y1__296_carry_n_3\ : STD_LOGIC;
  signal \y1__296_carry_n_4\ : STD_LOGIC;
  signal \y1__296_carry_n_5\ : STD_LOGIC;
  signal \y1__296_carry_n_6\ : STD_LOGIC;
  signal \y1__296_carry_n_7\ : STD_LOGIC;
  signal \y1__369_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y1__369_carry__0_n_0\ : STD_LOGIC;
  signal \y1__369_carry__0_n_1\ : STD_LOGIC;
  signal \y1__369_carry__0_n_2\ : STD_LOGIC;
  signal \y1__369_carry__0_n_3\ : STD_LOGIC;
  signal \y1__369_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__1_n_1\ : STD_LOGIC;
  signal \y1__369_carry__1_n_2\ : STD_LOGIC;
  signal \y1__369_carry__1_n_3\ : STD_LOGIC;
  signal \y1__369_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__2_n_1\ : STD_LOGIC;
  signal \y1__369_carry__2_n_2\ : STD_LOGIC;
  signal \y1__369_carry__2_n_3\ : STD_LOGIC;
  signal \y1__369_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__3_n_1\ : STD_LOGIC;
  signal \y1__369_carry__3_n_2\ : STD_LOGIC;
  signal \y1__369_carry__3_n_3\ : STD_LOGIC;
  signal \y1__369_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__4_n_1\ : STD_LOGIC;
  signal \y1__369_carry__4_n_2\ : STD_LOGIC;
  signal \y1__369_carry__4_n_3\ : STD_LOGIC;
  signal \y1__369_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry__5_n_0\ : STD_LOGIC;
  signal \y1__369_carry__5_n_1\ : STD_LOGIC;
  signal \y1__369_carry__5_n_2\ : STD_LOGIC;
  signal \y1__369_carry__5_n_3\ : STD_LOGIC;
  signal \y1__369_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry__6_n_3\ : STD_LOGIC;
  signal \y1__369_carry_i_1_n_0\ : STD_LOGIC;
  signal \y1__369_carry_i_2_n_0\ : STD_LOGIC;
  signal \y1__369_carry_i_3_n_0\ : STD_LOGIC;
  signal \y1__369_carry_i_4_n_0\ : STD_LOGIC;
  signal \y1__369_carry_i_5_n_0\ : STD_LOGIC;
  signal \y1__369_carry_i_6_n_0\ : STD_LOGIC;
  signal \y1__369_carry_i_7_n_0\ : STD_LOGIC;
  signal \y1__369_carry_n_0\ : STD_LOGIC;
  signal \y1__369_carry_n_1\ : STD_LOGIC;
  signal \y1__369_carry_n_2\ : STD_LOGIC;
  signal \y1__369_carry_n_3\ : STD_LOGIC;
  signal \y1__426_carry__0_n_1\ : STD_LOGIC;
  signal \y1__426_carry__0_n_2\ : STD_LOGIC;
  signal \y1__426_carry__0_n_3\ : STD_LOGIC;
  signal \y1__426_carry__0_n_4\ : STD_LOGIC;
  signal \y1__426_carry__0_n_5\ : STD_LOGIC;
  signal \y1__426_carry__0_n_6\ : STD_LOGIC;
  signal \y1__426_carry__0_n_7\ : STD_LOGIC;
  signal \y1__426_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_1_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_2_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_3_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \y1__426_carry_i_4_n_0\ : STD_LOGIC;
  signal \y1__426_carry_n_0\ : STD_LOGIC;
  signal \y1__426_carry_n_1\ : STD_LOGIC;
  signal \y1__426_carry_n_2\ : STD_LOGIC;
  signal \y1__426_carry_n_3\ : STD_LOGIC;
  signal \y1__426_carry_n_4\ : STD_LOGIC;
  signal \y1__426_carry_n_5\ : STD_LOGIC;
  signal \y1__426_carry_n_6\ : STD_LOGIC;
  signal \y1__426_carry_n_7\ : STD_LOGIC;
  signal \y1__62_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_n_0\ : STD_LOGIC;
  signal \y1__62_carry__0_n_1\ : STD_LOGIC;
  signal \y1__62_carry__0_n_2\ : STD_LOGIC;
  signal \y1__62_carry__0_n_3\ : STD_LOGIC;
  signal \y1__62_carry__0_n_4\ : STD_LOGIC;
  signal \y1__62_carry__0_n_5\ : STD_LOGIC;
  signal \y1__62_carry__0_n_6\ : STD_LOGIC;
  signal \y1__62_carry__0_n_7\ : STD_LOGIC;
  signal \y1__62_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y1__62_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y1__62_carry__1_n_1\ : STD_LOGIC;
  signal \y1__62_carry__1_n_3\ : STD_LOGIC;
  signal \y1__62_carry__1_n_6\ : STD_LOGIC;
  signal \y1__62_carry__1_n_7\ : STD_LOGIC;
  signal \y1__62_carry_i_1_n_0\ : STD_LOGIC;
  signal \y1__62_carry_i_2_n_0\ : STD_LOGIC;
  signal \y1__62_carry_i_3_n_0\ : STD_LOGIC;
  signal \y1__62_carry_i_4_n_0\ : STD_LOGIC;
  signal \y1__62_carry_i_5_n_0\ : STD_LOGIC;
  signal \y1__62_carry_i_6_n_0\ : STD_LOGIC;
  signal \y1__62_carry_n_0\ : STD_LOGIC;
  signal \y1__62_carry_n_1\ : STD_LOGIC;
  signal \y1__62_carry_n_2\ : STD_LOGIC;
  signal \y1__62_carry_n_3\ : STD_LOGIC;
  signal \y1__62_carry_n_4\ : STD_LOGIC;
  signal \y1__62_carry_n_5\ : STD_LOGIC;
  signal \y1__62_carry_n_6\ : STD_LOGIC;
  signal \y1__62_carry_n_7\ : STD_LOGIC;
  signal \y1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y1_carry__0_n_0\ : STD_LOGIC;
  signal \y1_carry__0_n_1\ : STD_LOGIC;
  signal \y1_carry__0_n_2\ : STD_LOGIC;
  signal \y1_carry__0_n_3\ : STD_LOGIC;
  signal \y1_carry__0_n_4\ : STD_LOGIC;
  signal \y1_carry__0_n_5\ : STD_LOGIC;
  signal \y1_carry__0_n_6\ : STD_LOGIC;
  signal \y1_carry__0_n_7\ : STD_LOGIC;
  signal \y1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y1_carry__1_n_2\ : STD_LOGIC;
  signal \y1_carry__1_n_7\ : STD_LOGIC;
  signal y1_carry_i_2_n_0 : STD_LOGIC;
  signal y1_carry_i_3_n_0 : STD_LOGIC;
  signal y1_carry_i_4_n_0 : STD_LOGIC;
  signal y1_carry_i_5_n_0 : STD_LOGIC;
  signal y1_carry_n_0 : STD_LOGIC;
  signal y1_carry_n_1 : STD_LOGIC;
  signal y1_carry_n_2 : STD_LOGIC;
  signal y1_carry_n_3 : STD_LOGIC;
  signal y1_carry_n_4 : STD_LOGIC;
  signal y3 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \y3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y3_carry__0_n_3\ : STD_LOGIC;
  signal y3_carry_i_1_n_0 : STD_LOGIC;
  signal y3_carry_i_2_n_0 : STD_LOGIC;
  signal y3_carry_i_3_n_0 : STD_LOGIC;
  signal y3_carry_i_4_n_0 : STD_LOGIC;
  signal y3_carry_n_0 : STD_LOGIC;
  signal y3_carry_n_1 : STD_LOGIC;
  signal y3_carry_n_2 : STD_LOGIC;
  signal y3_carry_n_3 : STD_LOGIC;
  signal \y4__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \y4__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \y4__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \y4__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \y4__0_carry_n_2\ : STD_LOGIC;
  signal \y4__0_carry_n_3\ : STD_LOGIC;
  signal \y4__0_carry_n_5\ : STD_LOGIC;
  signal \y4__0_carry_n_6\ : STD_LOGIC;
  signal \y4__0_carry_n_7\ : STD_LOGIC;
  signal \y[2]_i_2_n_0\ : STD_LOGIC;
  signal \y[3]_i_2_n_0\ : STD_LOGIC;
  signal \y[4]_i_2_n_0\ : STD_LOGIC;
  signal \y[5]_i_2_n_0\ : STD_LOGIC;
  signal \y[7]_i_2_n_0\ : STD_LOGIC;
  signal \y[7]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_y1__100_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y1__100_carry__11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y1__100_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__2_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y1__100_carry__2_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__100_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_y1__100_carry_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_y1__219_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y1__219_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y1__296_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__296_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y1__369_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__369_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y1__369_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1__426_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y1__62_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y1__62_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_y1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_y1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_y3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_y3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y4__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y4__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute HLUTNM : string;
  attribute HLUTNM of \y1__100_carry__5_i_4\ : label is "lutpair0";
  attribute HLUTNM of \y1__100_carry__6_i_2\ : label is "lutpair1";
  attribute HLUTNM of \y1__100_carry__6_i_3\ : label is "lutpair0";
  attribute HLUTNM of \y1__100_carry__6_i_6\ : label is "lutpair1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y[7]_i_4\ : label is "soft_lutpair0";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\y1__100_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__100_carry_n_0\,
      CO(2) => \y1__100_carry_n_1\,
      CO(1) => \y1__100_carry_n_2\,
      CO(0) => \y1__100_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry_i_1_n_0\,
      DI(2) => \y1__100_carry_i_2_n_0\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_y1__100_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__100_carry_i_3_n_0\,
      S(2) => \y1__100_carry_i_4_n_0\,
      S(1) => \y1__100_carry_i_5_n_0\,
      S(0) => \y1__100_carry_i_6_n_0\
    );
\y1__100_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry_n_0\,
      CO(3) => \y1__100_carry__0_n_0\,
      CO(2) => \y1__100_carry__0_n_1\,
      CO(1) => \y1__100_carry__0_n_2\,
      CO(0) => \y1__100_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__0_i_1_n_0\,
      DI(2) => \y1__100_carry__0_i_2_n_0\,
      DI(1) => \y1__100_carry__0_i_3_n_0\,
      DI(0) => \y1__100_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_y1__100_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__100_carry__0_i_5_n_0\,
      S(2) => \y1__100_carry__0_i_6_n_0\,
      S(1) => \y1__100_carry__0_i_7_n_0\,
      S(0) => \y1__100_carry__0_i_8_n_0\
    );
\y1__100_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__0_i_9_n_5\,
      I1 => \y1_carry__1_n_2\,
      O => \y1__100_carry__0_i_1_n_0\
    );
\y1__100_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CEA855CC"
    )
        port map (
      I0 => y3(7),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(4),
      I4 => y3(6),
      O => \y1__100_carry__0_i_10_n_0\
    );
\y1__100_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82285500"
    )
        port map (
      I0 => y3(5),
      I1 => \^q\(0),
      I2 => x(0),
      I3 => y3(3),
      I4 => y3(7),
      O => \y1__100_carry__0_i_11_n_0\
    );
\y1__100_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CC64CC49339B33B"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => x(0),
      I3 => \^q\(0),
      I4 => y3(4),
      I5 => y3(5),
      O => \y1__100_carry__0_i_12_n_0\
    );
\y1__100_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807D07F87F82F807"
    )
        port map (
      I0 => y3(7),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(4),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1__100_carry__0_i_13_n_0\
    );
\y1__100_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A87E578781A87E1"
    )
        port map (
      I0 => y3(2),
      I1 => y3(7),
      I2 => y3(3),
      I3 => y3(6),
      I4 => y3(5),
      I5 => y3(4),
      O => \y1__100_carry__0_i_14_n_0\
    );
\y1__100_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36966934C96996CB"
    )
        port map (
      I0 => y3(7),
      I1 => y3(4),
      I2 => y3(2),
      I3 => y3(3),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1__100_carry__0_i_15_n_0\
    );
\y1__100_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CC64CC49339B33B"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => x(0),
      I3 => \^q\(0),
      I4 => y3(4),
      I5 => y3(5),
      O => \y1__100_carry__0_i_16_n_0\
    );
\y1__100_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \y1__100_carry__0_i_9_n_6\,
      I1 => \y1_carry__1_n_7\,
      O => \y1__100_carry__0_i_2_n_0\
    );
\y1__100_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \y1__100_carry__0_i_9_n_7\,
      I1 => \y1_carry__0_n_4\,
      O => \y1__100_carry__0_i_3_n_0\
    );
\y1__100_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \y1__100_carry_i_7_n_4\,
      I1 => \y1_carry__0_n_5\,
      O => \y1__100_carry__0_i_4_n_0\
    );
\y1__100_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \y1__100_carry__0_i_9_n_5\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__0_i_9_n_4\,
      O => \y1__100_carry__0_i_5_n_0\
    );
\y1__100_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \y1_carry__1_n_7\,
      I1 => \y1__100_carry__0_i_9_n_6\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__100_carry__0_i_9_n_5\,
      O => \y1__100_carry__0_i_6_n_0\
    );
\y1__100_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \y1_carry__0_n_4\,
      I1 => \y1__100_carry__0_i_9_n_7\,
      I2 => \y1__100_carry__0_i_9_n_6\,
      I3 => \y1_carry__1_n_7\,
      O => \y1__100_carry__0_i_7_n_0\
    );
\y1__100_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \y1_carry__0_n_5\,
      I1 => \y1__100_carry_i_7_n_4\,
      I2 => \y1__100_carry__0_i_9_n_7\,
      I3 => \y1_carry__0_n_4\,
      O => \y1__100_carry__0_i_8_n_0\
    );
\y1__100_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry_i_7_n_0\,
      CO(3) => \y1__100_carry__0_i_9_n_0\,
      CO(2) => \y1__100_carry__0_i_9_n_1\,
      CO(1) => \y1__100_carry__0_i_9_n_2\,
      CO(0) => \y1__100_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3) => \y1__62_carry__0_i_3_n_0\,
      DI(2) => \y1__100_carry__0_i_10_n_0\,
      DI(1) => \y1__100_carry__0_i_11_n_0\,
      DI(0) => \y1__100_carry__0_i_12_n_0\,
      O(3) => \y1__100_carry__0_i_9_n_4\,
      O(2) => \y1__100_carry__0_i_9_n_5\,
      O(1) => \y1__100_carry__0_i_9_n_6\,
      O(0) => \y1__100_carry__0_i_9_n_7\,
      S(3) => \y1__100_carry__0_i_13_n_0\,
      S(2) => \y1__100_carry__0_i_14_n_0\,
      S(1) => \y1__100_carry__0_i_15_n_0\,
      S(0) => \y1__100_carry__0_i_16_n_0\
    );
\y1__100_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__0_n_0\,
      CO(3) => \y1__100_carry__1_n_0\,
      CO(2) => \y1__100_carry__1_n_1\,
      CO(1) => \y1__100_carry__1_n_2\,
      CO(0) => \y1__100_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__1_i_1_n_0\,
      DI(2) => \y1__100_carry__1_i_2_n_0\,
      DI(1) => \y1__100_carry__1_i_3_n_0\,
      DI(0) => \y1__100_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_y1__100_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__100_carry__1_i_5_n_0\,
      S(2) => \y1__100_carry__1_i_6_n_0\,
      S(1) => \y1__100_carry__1_i_7_n_0\,
      S(0) => \y1__100_carry__1_i_8_n_0\
    );
\y1__100_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__9_n_0\,
      CO(3) => \y1__100_carry__10_n_0\,
      CO(2) => \y1__100_carry__10_n_1\,
      CO(1) => \y1__100_carry__10_n_2\,
      CO(0) => \y1__100_carry__10_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__10_i_1_n_0\,
      DI(2) => \y1__100_carry__10_i_2_n_0\,
      DI(1) => \y1__100_carry__10_i_3_n_0\,
      DI(0) => \y1__100_carry__10_i_4_n_0\,
      O(3) => \y1__100_carry__10_n_4\,
      O(2) => \y1__100_carry__10_n_5\,
      O(1) => \y1__100_carry__10_n_6\,
      O(0) => \y1__100_carry__10_n_7\,
      S(3) => \y1__100_carry__10_i_5_n_0\,
      S(2) => \y1__100_carry__10_i_6_n_0\,
      S(1) => \y1__100_carry__10_i_7_n_0\,
      S(0) => \y1__100_carry__10_i_8_n_0\
    );
\y1__100_carry__10_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__10_i_1_n_0\
    );
\y1__100_carry__10_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__10_i_2_n_0\
    );
\y1__100_carry__10_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__10_i_3_n_0\
    );
\y1__100_carry__10_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__10_i_4_n_0\
    );
\y1__100_carry__10_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__10_i_5_n_0\
    );
\y1__100_carry__10_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__10_i_6_n_0\
    );
\y1__100_carry__10_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__10_i_7_n_0\
    );
\y1__100_carry__10_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__10_i_8_n_0\
    );
\y1__100_carry__11\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__10_n_0\,
      CO(3 downto 1) => \NLW_y1__100_carry__11_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y1__100_carry__11_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y1__100_carry__11_i_1_n_0\,
      O(3 downto 2) => \NLW_y1__100_carry__11_O_UNCONNECTED\(3 downto 2),
      O(1) => \y1__100_carry__11_n_6\,
      O(0) => \y1__100_carry__11_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \y1__100_carry__11_i_2_n_0\,
      S(0) => \y1__100_carry__11_i_3_n_0\
    );
\y1__100_carry__11_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__11_i_1_n_0\
    );
\y1__100_carry__11_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__11_i_2_n_0\
    );
\y1__100_carry__11_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__11_i_3_n_0\
    );
\y1__100_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1_carry__0_i_3_n_0\,
      I2 => \y1__100_carry__1_i_9_n_5\,
      O => \y1__100_carry__1_i_1_n_0\
    );
\y1__100_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FE01FFFF00FF00"
    )
        port map (
      I0 => y3(4),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(5),
      I4 => y3(6),
      I5 => y3(7),
      O => \y1__100_carry__1_i_10_n_0\
    );
\y1__100_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => y3(7),
      I1 => y3(6),
      I2 => y3(5),
      I3 => y3(3),
      I4 => y3(2),
      I5 => y3(4),
      O => \y1__100_carry__1_i_11_n_0\
    );
\y1__100_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE00000000FFFF"
    )
        port map (
      I0 => y3(4),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(5),
      I4 => y3(6),
      I5 => y3(7),
      O => \y1__100_carry__1_i_12_n_0\
    );
\y1__100_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999499999999"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(3),
      I3 => y3(2),
      I4 => y3(4),
      I5 => y3(7),
      O => \y1__100_carry__1_i_13_n_0\
    );
\y1__100_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5502A85502AAFD"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => y3(2),
      I3 => y3(4),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1__100_carry__1_i_14_n_0\
    );
\y1__100_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7FF7D5541551400"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => x(0),
      I2 => \^q\(0),
      I3 => y3(7),
      I4 => y3(3),
      I5 => \y1__100_carry__1_i_9_n_6\,
      O => \y1__100_carry__1_i_2_n_0\
    );
\y1__100_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7D14"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => x(0),
      I2 => \^q\(0),
      I3 => \y1__100_carry__1_i_9_n_7\,
      O => \y1__100_carry__1_i_3_n_0\
    );
\y1__100_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__0_i_9_n_4\,
      I1 => \y1_carry__1_n_2\,
      O => \y1__100_carry__1_i_4_n_0\
    );
\y1__100_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"817E7E81"
    )
        port map (
      I0 => \y1__100_carry__1_i_9_n_5\,
      I1 => \y1_carry__0_i_3_n_0\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__100_carry__1_i_9_n_4\,
      I4 => \y1__62_carry_n_7\,
      O => \y1__100_carry__1_i_5_n_0\
    );
\y1__100_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"817E7E81"
    )
        port map (
      I0 => \y1__100_carry__1_i_9_n_6\,
      I1 => \y1_carry__0_i_4_n_0\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__100_carry__1_i_9_n_5\,
      I4 => \y1_carry__0_i_3_n_0\,
      O => \y1__100_carry__1_i_6_n_0\
    );
\y1__100_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"788787781EE11EE1"
    )
        port map (
      I0 => \y1__100_carry__1_i_9_n_7\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__1_i_9_n_6\,
      I3 => y3(3),
      I4 => y3(7),
      I5 => y3(2),
      O => \y1__100_carry__1_i_7_n_0\
    );
\y1__100_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => \y1__100_carry__0_i_9_n_4\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__1_i_9_n_7\,
      I3 => \^q\(0),
      I4 => x(0),
      O => \y1__100_carry__1_i_8_n_0\
    );
\y1__100_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__0_i_9_n_0\,
      CO(3) => \y1__100_carry__1_i_9_n_0\,
      CO(2) => \y1__100_carry__1_i_9_n_1\,
      CO(1) => \y1__100_carry__1_i_9_n_2\,
      CO(0) => \y1__100_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3) => \y1_carry__1_i_1_n_0\,
      DI(2) => \y1_carry__0_i_1_n_0\,
      DI(1) => \y1__100_carry__1_i_10_n_0\,
      DI(0) => \y1__62_carry__0_i_2_n_0\,
      O(3) => \y1__100_carry__1_i_9_n_4\,
      O(2) => \y1__100_carry__1_i_9_n_5\,
      O(1) => \y1__100_carry__1_i_9_n_6\,
      O(0) => \y1__100_carry__1_i_9_n_7\,
      S(3) => \y1__100_carry__1_i_11_n_0\,
      S(2) => \y1__100_carry__1_i_12_n_0\,
      S(1) => \y1__100_carry__1_i_13_n_0\,
      S(0) => \y1__100_carry__1_i_14_n_0\
    );
\y1__100_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__1_n_0\,
      CO(3) => \y1__100_carry__2_n_0\,
      CO(2) => \y1__100_carry__2_n_1\,
      CO(1) => \y1__100_carry__2_n_2\,
      CO(0) => \y1__100_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__2_i_1_n_0\,
      DI(2) => \y1__100_carry__2_i_2_n_0\,
      DI(1) => \y1__100_carry__2_i_3_n_0\,
      DI(0) => \y1__100_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_y1__100_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__100_carry__2_i_5_n_0\,
      S(2) => \y1__100_carry__2_i_6_n_0\,
      S(1) => \y1__100_carry__2_i_7_n_0\,
      S(0) => \y1__100_carry__2_i_8_n_0\
    );
\y1__100_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \y1__62_carry_n_4\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__2_i_1_n_0\
    );
\y1__100_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \y1__62_carry_n_5\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__2_i_2_n_0\
    );
\y1__100_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \y1__62_carry_n_6\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__2_i_3_n_0\
    );
\y1__100_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__62_carry_n_7\,
      I2 => \y1__100_carry__1_i_9_n_4\,
      O => \y1__100_carry__2_i_4_n_0\
    );
\y1__100_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E187"
    )
        port map (
      I0 => \y1__62_carry_n_4\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__0_n_7\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__2_i_5_n_0\
    );
\y1__100_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E187"
    )
        port map (
      I0 => \y1__62_carry_n_5\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry_n_4\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__2_i_6_n_0\
    );
\y1__100_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E187"
    )
        port map (
      I0 => \y1__62_carry_n_6\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry_n_5\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__2_i_7_n_0\
    );
\y1__100_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E81817E"
    )
        port map (
      I0 => \y1__100_carry__1_i_9_n_4\,
      I1 => \y1__62_carry_n_7\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__62_carry_n_6\,
      I4 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__2_i_8_n_0\
    );
\y1__100_carry__2_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__1_i_9_n_0\,
      CO(3 downto 1) => \NLW_y1__100_carry__2_i_9_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y1__100_carry__2_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_y1__100_carry__2_i_9_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\y1__100_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__2_n_0\,
      CO(3) => \y1__100_carry__3_n_0\,
      CO(2) => \y1__100_carry__3_n_1\,
      CO(1) => \y1__100_carry__3_n_2\,
      CO(0) => \y1__100_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__3_i_1_n_0\,
      DI(2) => \y1__100_carry__3_i_2_n_0\,
      DI(1) => \y1__100_carry__3_i_3_n_0\,
      DI(0) => \y1__100_carry__3_i_4_n_0\,
      O(3 downto 0) => \NLW_y1__100_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__100_carry__3_i_5_n_0\,
      S(2) => \y1__100_carry__3_i_6_n_0\,
      S(1) => \y1__100_carry__3_i_7_n_0\,
      S(0) => \y1__100_carry__3_i_8_n_0\
    );
\y1__100_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1602"
    )
        port map (
      I0 => \y1__62_carry__0_n_4\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__0_n_5\,
      O => \y1__100_carry__3_i_1_n_0\
    );
\y1__100_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E187"
    )
        port map (
      I0 => \y1__62_carry__0_n_5\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__0_n_4\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__3_i_2_n_0\
    );
\y1__100_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__0_n_5\,
      O => \y1__100_carry__3_i_3_n_0\
    );
\y1__100_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \y1__62_carry__0_n_7\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__3_i_4_n_0\
    );
\y1__100_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \y1__100_carry__3_i_1_n_0\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__1_n_7\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      I4 => y3(2),
      I5 => \y1__62_carry__0_n_4\,
      O => \y1__100_carry__3_i_5_n_0\
    );
\y1__100_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A995"
    )
        port map (
      I0 => \y1__62_carry__0_n_4\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__0_n_5\,
      O => \y1__100_carry__3_i_6_n_0\
    );
\y1__100_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A995"
    )
        port map (
      I0 => \y1__62_carry__0_n_5\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__0_n_6\,
      O => \y1__100_carry__3_i_7_n_0\
    );
\y1__100_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E187"
    )
        port map (
      I0 => \y1__62_carry__0_n_7\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__0_n_6\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__3_i_8_n_0\
    );
\y1__100_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__3_n_0\,
      CO(3) => \y1__100_carry__4_n_0\,
      CO(2) => \y1__100_carry__4_n_1\,
      CO(1) => \y1__100_carry__4_n_2\,
      CO(0) => \y1__100_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__4_i_1_n_0\,
      DI(2) => \y1__100_carry__4_i_2_n_0\,
      DI(1) => \y1__100_carry__4_i_3_n_0\,
      DI(0) => \y1__100_carry__4_i_4_n_0\,
      O(3 downto 0) => \NLW_y1__100_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__100_carry__4_i_5_n_0\,
      S(2) => \y1__100_carry__4_i_6_n_0\,
      S(1) => \y1__100_carry__4_i_7_n_0\,
      S(0) => \y1__100_carry__4_i_8_n_0\
    );
\y1__100_carry__4_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAB"
    )
        port map (
      I0 => \y1_carry__0_i_2_n_0\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__4_i_1_n_0\
    );
\y1__100_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CE8E8CF"
    )
        port map (
      I0 => \y1__62_carry__1_n_6\,
      I1 => \y1_carry__0_i_3_n_0\,
      I2 => \y1__62_carry__1_n_1\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      I4 => \y1_carry__1_n_2\,
      O => \y1__100_carry__4_i_2_n_0\
    );
\y1__100_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C80E8FEC"
    )
        port map (
      I0 => \y1__62_carry__1_n_7\,
      I1 => \y1_carry__0_i_4_n_0\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__1_n_6\,
      I4 => \y1_carry__1_n_2\,
      O => \y1__100_carry__4_i_3_n_0\
    );
\y1__100_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666060FF00F6F666"
    )
        port map (
      I0 => \^q\(0),
      I1 => x(0),
      I2 => \y1__62_carry__0_n_4\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      I4 => \y1_carry__1_n_2\,
      I5 => \y1__62_carry__1_n_7\,
      O => \y1__100_carry__4_i_4_n_0\
    );
\y1__100_carry__4_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA99556"
    )
        port map (
      I0 => \y1__100_carry__4_i_1_n_0\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__1_n_1\,
      I4 => \y1_carry__0_i_1_n_0\,
      O => \y1__100_carry__4_i_5_n_0\
    );
\y1__100_carry__4_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA99556"
    )
        port map (
      I0 => \y1_carry__0_i_2_n_0\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__62_carry__1_n_1\,
      I4 => \y1__100_carry__4_i_2_n_0\,
      O => \y1__100_carry__4_i_6_n_0\
    );
\y1__100_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A9A9566A95956A"
    )
        port map (
      I0 => \y1__100_carry__4_i_3_n_0\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__1_n_1\,
      I4 => \y1_carry__0_i_3_n_0\,
      I5 => \y1__62_carry__1_n_6\,
      O => \y1__100_carry__4_i_7_n_0\
    );
\y1__100_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \y1__100_carry__4_i_4_n_0\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__1_n_6\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      I4 => \y1_carry__0_i_4_n_0\,
      I5 => \y1__62_carry__1_n_7\,
      O => \y1__100_carry__4_i_8_n_0\
    );
\y1__100_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__4_n_0\,
      CO(3) => \y1__100_carry__5_n_0\,
      CO(2) => \y1__100_carry__5_n_1\,
      CO(1) => \y1__100_carry__5_n_2\,
      CO(0) => \y1__100_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__5_i_1_n_0\,
      DI(2) => \y1__100_carry__5_i_1_n_0\,
      DI(1) => \y1__100_carry__5_i_2_n_0\,
      DI(0) => \y1__100_carry__5_i_3_n_0\,
      O(3) => \y1__100_carry__5_n_4\,
      O(2 downto 0) => \NLW_y1__100_carry__5_O_UNCONNECTED\(2 downto 0),
      S(3) => \y1__100_carry__5_i_4_n_0\,
      S(2) => \y1__100_carry__5_i_5_n_0\,
      S(1) => \y1__100_carry__5_i_6_n_0\,
      S(0) => \y1__100_carry__5_i_7_n_0\
    );
\y1__100_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__5_i_1_n_0\
    );
\y1__100_carry__5_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1557"
    )
        port map (
      I0 => \y1__100_carry__5_i_8_n_0\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__5_i_2_n_0\
    );
\y1__100_carry__5_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAB"
    )
        port map (
      I0 => \y1_carry__0_i_1_n_0\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__5_i_3_n_0\
    );
\y1__100_carry__5_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"817E"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__100_carry__5_i_1_n_0\,
      O => \y1__100_carry__5_i_4_n_0\
    );
\y1__100_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"817E"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__1_n_1\,
      I3 => \y1__100_carry__5_i_1_n_0\,
      O => \y1__100_carry__5_i_5_n_0\
    );
\y1__100_carry__5_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAB"
    )
        port map (
      I0 => \y1__100_carry__5_i_8_n_0\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1_carry__1_n_2\,
      O => \y1__100_carry__5_i_6_n_0\
    );
\y1__100_carry__5_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1557EAA8"
    )
        port map (
      I0 => \y1_carry__0_i_1_n_0\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1__62_carry__1_n_1\,
      I4 => \y1__100_carry__5_i_8_n_0\,
      O => \y1__100_carry__5_i_7_n_0\
    );
\y1__100_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => y3(7),
      I1 => y3(6),
      I2 => y3(5),
      I3 => y3(3),
      I4 => y3(2),
      I5 => y3(4),
      O => \y1__100_carry__5_i_8_n_0\
    );
\y1__100_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__5_n_0\,
      CO(3) => \y1__100_carry__6_n_0\,
      CO(2) => \y1__100_carry__6_n_1\,
      CO(1) => \y1__100_carry__6_n_2\,
      CO(0) => \y1__100_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__6_i_1_n_0\,
      DI(2) => \y1__100_carry__6_i_2_n_0\,
      DI(1) => \y1__100_carry__6_i_2_n_0\,
      DI(0) => \y1__100_carry__6_i_3_n_0\,
      O(3) => \y1__100_carry__6_n_4\,
      O(2) => \y1__100_carry__6_n_5\,
      O(1) => \y1__100_carry__6_n_6\,
      O(0) => \y1__100_carry__6_n_7\,
      S(3) => \y1__100_carry__6_i_4_n_0\,
      S(2) => \y1__100_carry__6_i_5_n_0\,
      S(1) => \y1__100_carry__6_i_6_n_0\,
      S(0) => \y1__100_carry__6_i_7_n_0\
    );
\y1__100_carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__6_i_1_n_0\
    );
\y1__100_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__6_i_2_n_0\
    );
\y1__100_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__6_i_3_n_0\
    );
\y1__100_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__6_i_4_n_0\
    );
\y1__100_carry__6_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9556"
    )
        port map (
      I0 => \y1__100_carry__6_i_2_n_0\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      I3 => \y1_carry__1_n_2\,
      O => \y1__100_carry__6_i_5_n_0\
    );
\y1__100_carry__6_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"817E"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      I3 => \y1__100_carry__6_i_2_n_0\,
      O => \y1__100_carry__6_i_6_n_0\
    );
\y1__100_carry__6_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9556"
    )
        port map (
      I0 => \y1__100_carry__6_i_3_n_0\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__62_carry__1_n_1\,
      I3 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__6_i_7_n_0\
    );
\y1__100_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__6_n_0\,
      CO(3) => \y1__100_carry__7_n_0\,
      CO(2) => \y1__100_carry__7_n_1\,
      CO(1) => \y1__100_carry__7_n_2\,
      CO(0) => \y1__100_carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__7_i_1_n_0\,
      DI(2) => \y1__100_carry__7_i_2_n_0\,
      DI(1) => \y1__100_carry__7_i_3_n_0\,
      DI(0) => \y1__100_carry__7_i_4_n_0\,
      O(3) => \y1__100_carry__7_n_4\,
      O(2) => \y1__100_carry__7_n_5\,
      O(1) => \y1__100_carry__7_n_6\,
      O(0) => \y1__100_carry__7_n_7\,
      S(3) => \y1__100_carry__7_i_5_n_0\,
      S(2) => \y1__100_carry__7_i_6_n_0\,
      S(1) => \y1__100_carry__7_i_7_n_0\,
      S(0) => \y1__100_carry__7_i_8_n_0\
    );
\y1__100_carry__7_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__7_i_1_n_0\
    );
\y1__100_carry__7_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__7_i_2_n_0\
    );
\y1__100_carry__7_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__7_i_3_n_0\
    );
\y1__100_carry__7_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__7_i_4_n_0\
    );
\y1__100_carry__7_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__7_i_5_n_0\
    );
\y1__100_carry__7_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__7_i_6_n_0\
    );
\y1__100_carry__7_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__7_i_7_n_0\
    );
\y1__100_carry__7_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__7_i_8_n_0\
    );
\y1__100_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__7_n_0\,
      CO(3) => \y1__100_carry__8_n_0\,
      CO(2) => \y1__100_carry__8_n_1\,
      CO(1) => \y1__100_carry__8_n_2\,
      CO(0) => \y1__100_carry__8_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__8_i_1_n_0\,
      DI(2) => \y1__100_carry__8_i_2_n_0\,
      DI(1) => \y1__100_carry__8_i_3_n_0\,
      DI(0) => \y1__100_carry__8_i_4_n_0\,
      O(3) => \y1__100_carry__8_n_4\,
      O(2) => \y1__100_carry__8_n_5\,
      O(1) => \y1__100_carry__8_n_6\,
      O(0) => \y1__100_carry__8_n_7\,
      S(3) => \y1__100_carry__8_i_5_n_0\,
      S(2) => \y1__100_carry__8_i_6_n_0\,
      S(1) => \y1__100_carry__8_i_7_n_0\,
      S(0) => \y1__100_carry__8_i_8_n_0\
    );
\y1__100_carry__8_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__8_i_1_n_0\
    );
\y1__100_carry__8_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__8_i_2_n_0\
    );
\y1__100_carry__8_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__8_i_3_n_0\
    );
\y1__100_carry__8_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1_carry__1_n_2\,
      I2 => \y1__100_carry__2_i_9_n_3\,
      O => \y1__100_carry__8_i_4_n_0\
    );
\y1__100_carry__8_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__8_i_5_n_0\
    );
\y1__100_carry__8_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__8_i_6_n_0\
    );
\y1__100_carry__8_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__8_i_7_n_0\
    );
\y1__100_carry__8_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__8_i_8_n_0\
    );
\y1__100_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__100_carry__8_n_0\,
      CO(3) => \y1__100_carry__9_n_0\,
      CO(2) => \y1__100_carry__9_n_1\,
      CO(1) => \y1__100_carry__9_n_2\,
      CO(0) => \y1__100_carry__9_n_3\,
      CYINIT => '0',
      DI(3) => \y1__100_carry__9_i_1_n_0\,
      DI(2) => \y1__100_carry__9_i_2_n_0\,
      DI(1) => \y1__100_carry__9_i_3_n_0\,
      DI(0) => \y1__100_carry__9_i_4_n_0\,
      O(3) => \y1__100_carry__9_n_4\,
      O(2) => \y1__100_carry__9_n_5\,
      O(1) => \y1__100_carry__9_n_6\,
      O(0) => \y1__100_carry__9_n_7\,
      S(3) => \y1__100_carry__9_i_5_n_0\,
      S(2) => \y1__100_carry__9_i_6_n_0\,
      S(1) => \y1__100_carry__9_i_7_n_0\,
      S(0) => \y1__100_carry__9_i_8_n_0\
    );
\y1__100_carry__9_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__9_i_1_n_0\
    );
\y1__100_carry__9_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__9_i_2_n_0\
    );
\y1__100_carry__9_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__9_i_3_n_0\
    );
\y1__100_carry__9_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \y1_carry__1_n_2\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1__62_carry__1_n_1\,
      O => \y1__100_carry__9_i_4_n_0\
    );
\y1__100_carry__9_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__9_i_5_n_0\
    );
\y1__100_carry__9_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__100_carry__2_i_9_n_3\,
      I1 => \y1__62_carry__1_n_1\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__9_i_6_n_0\
    );
\y1__100_carry__9_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__9_i_7_n_0\
    );
\y1__100_carry__9_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \y1__62_carry__1_n_1\,
      I1 => \y1__100_carry__2_i_9_n_3\,
      I2 => \y1_carry__1_n_2\,
      O => \y1__100_carry__9_i_8_n_0\
    );
\y1__100_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \y1__100_carry_i_7_n_5\,
      I1 => \y1_carry__0_n_6\,
      O => \y1__100_carry_i_1_n_0\
    );
\y1__100_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5995"
    )
        port map (
      I0 => y3(3),
      I1 => y3(7),
      I2 => \^q\(0),
      I3 => x(0),
      O => \y1__100_carry_i_10_n_0\
    );
\y1__100_carry_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => x(0),
      O => \y1__100_carry_i_11_n_0\
    );
\y1__100_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \y1__100_carry_i_7_n_6\,
      I1 => \y1_carry__0_n_7\,
      O => \y1__100_carry_i_2_n_0\
    );
\y1__100_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \y1_carry__0_n_6\,
      I1 => \y1__100_carry_i_7_n_5\,
      I2 => \y1__100_carry_i_7_n_4\,
      I3 => \y1_carry__0_n_5\,
      O => \y1__100_carry_i_3_n_0\
    );
\y1__100_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \y1_carry__0_n_7\,
      I1 => \y1__100_carry_i_7_n_6\,
      I2 => \y1__100_carry_i_7_n_5\,
      I3 => \y1_carry__0_n_6\,
      O => \y1__100_carry_i_4_n_0\
    );
\y1__100_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y1_carry__0_n_7\,
      I1 => \y1__100_carry_i_7_n_6\,
      O => \y1__100_carry_i_5_n_0\
    );
\y1__100_carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y1_carry_n_4,
      O => \y1__100_carry_i_6_n_0\
    );
\y1__100_carry_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__100_carry_i_7_n_0\,
      CO(2) => \y1__100_carry_i_7_n_1\,
      CO(1) => \y1__100_carry_i_7_n_2\,
      CO(0) => \y1__100_carry_i_7_n_3\,
      CYINIT => '1',
      DI(3) => \y1__100_carry_i_8_n_0\,
      DI(2 downto 0) => B"000",
      O(3) => \y1__100_carry_i_7_n_4\,
      O(2) => \y1__100_carry_i_7_n_5\,
      O(1) => \y1__100_carry_i_7_n_6\,
      O(0) => \NLW_y1__100_carry_i_7_O_UNCONNECTED\(0),
      S(3) => \y1__100_carry_i_9_n_0\,
      S(2) => \y1__100_carry_i_10_n_0\,
      S(1) => \y1__100_carry_i_11_n_0\,
      S(0) => '1'
    );
\y1__100_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(0),
      I1 => \^q\(0),
      O => \y1__100_carry_i_8_n_0\
    );
\y1__100_carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"955A5A95"
    )
        port map (
      I0 => y3(4),
      I1 => y3(3),
      I2 => y3(7),
      I3 => \^q\(0),
      I4 => x(0),
      O => \y1__100_carry_i_9_n_0\
    );
\y1__219_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__219_carry_n_0\,
      CO(2) => \y1__219_carry_n_1\,
      CO(1) => \y1__219_carry_n_2\,
      CO(0) => \y1__219_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y1__219_carry_i_1_n_0\,
      DI(2) => \y1__219_carry_i_2_n_0\,
      DI(1) => \y1__219_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \y1__219_carry_n_4\,
      O(2) => \y1__219_carry_n_5\,
      O(1) => \y1__219_carry_n_6\,
      O(0) => \y1__219_carry_n_7\,
      S(3) => \y1__219_carry_i_4_n_0\,
      S(2) => \y1__219_carry_i_5_n_0\,
      S(1) => \y1__219_carry_i_6_n_0\,
      S(0) => \y1__219_carry_i_7_n_0\
    );
\y1__219_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__219_carry_n_0\,
      CO(3) => \y1__219_carry__0_n_0\,
      CO(2) => \y1__219_carry__0_n_1\,
      CO(1) => \y1__219_carry__0_n_2\,
      CO(0) => \y1__219_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y1__219_carry__0_i_1_n_0\,
      DI(2) => \y1__219_carry__0_i_2_n_0\,
      DI(1) => \y1__219_carry__0_i_3_n_0\,
      DI(0) => \y1__219_carry__0_i_4_n_0\,
      O(3) => \y1__219_carry__0_n_4\,
      O(2) => \y1__219_carry__0_n_5\,
      O(1) => \y1__219_carry__0_n_6\,
      O(0) => \y1__219_carry__0_n_7\,
      S(3) => \y1__219_carry__0_i_5_n_0\,
      S(2) => \y1__219_carry__0_i_6_n_0\,
      S(1) => \y1__219_carry__0_i_7_n_0\,
      S(0) => \y1__219_carry__0_i_8_n_0\
    );
\y1__219_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      I1 => \y1__100_carry__7_n_4\,
      I2 => \y1__100_carry__7_n_6\,
      O => \y1__219_carry__0_i_1_n_0\
    );
\y1__219_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      I1 => \y1__100_carry__7_n_5\,
      I2 => \y1__100_carry__7_n_7\,
      O => \y1__219_carry__0_i_2_n_0\
    );
\y1__219_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__7_n_6\,
      I1 => \y1__100_carry__6_n_6\,
      I2 => \y1__100_carry__6_n_4\,
      O => \y1__219_carry__0_i_3_n_0\
    );
\y1__219_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__7_n_7\,
      I1 => \y1__100_carry__6_n_7\,
      I2 => \y1__100_carry__6_n_5\,
      O => \y1__219_carry__0_i_4_n_0\
    );
\y1__219_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__7_n_6\,
      I1 => \y1__100_carry__7_n_4\,
      I2 => \y1__100_carry__6_n_4\,
      I3 => \y1__100_carry__7_n_7\,
      I4 => \y1__100_carry__7_n_5\,
      I5 => \y1__100_carry__8_n_7\,
      O => \y1__219_carry__0_i_5_n_0\
    );
\y1__219_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__7_n_7\,
      I1 => \y1__100_carry__7_n_5\,
      I2 => \y1__100_carry__6_n_5\,
      I3 => \y1__100_carry__6_n_4\,
      I4 => \y1__100_carry__7_n_6\,
      I5 => \y1__100_carry__7_n_4\,
      O => \y1__219_carry__0_i_6_n_0\
    );
\y1__219_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      I1 => \y1__100_carry__6_n_6\,
      I2 => \y1__100_carry__7_n_6\,
      I3 => \y1__100_carry__6_n_5\,
      I4 => \y1__100_carry__7_n_7\,
      I5 => \y1__100_carry__7_n_5\,
      O => \y1__219_carry__0_i_7_n_0\
    );
\y1__219_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      I1 => \y1__100_carry__6_n_7\,
      I2 => \y1__100_carry__7_n_7\,
      I3 => \y1__100_carry__6_n_6\,
      I4 => \y1__100_carry__6_n_4\,
      I5 => \y1__100_carry__7_n_6\,
      O => \y1__219_carry__0_i_8_n_0\
    );
\y1__219_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__219_carry__0_n_0\,
      CO(3) => \y1__219_carry__1_n_0\,
      CO(2) => \y1__219_carry__1_n_1\,
      CO(1) => \y1__219_carry__1_n_2\,
      CO(0) => \y1__219_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \y1__219_carry__1_i_1_n_0\,
      DI(2) => \y1__219_carry__1_i_2_n_0\,
      DI(1) => \y1__219_carry__1_i_3_n_0\,
      DI(0) => \y1__219_carry__1_i_4_n_0\,
      O(3) => \y1__219_carry__1_n_4\,
      O(2) => \y1__219_carry__1_n_5\,
      O(1) => \y1__219_carry__1_n_6\,
      O(0) => \y1__219_carry__1_n_7\,
      S(3) => \y1__219_carry__1_i_5_n_0\,
      S(2) => \y1__219_carry__1_i_6_n_0\,
      S(1) => \y1__219_carry__1_i_7_n_0\,
      S(0) => \y1__219_carry__1_i_8_n_0\
    );
\y1__219_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__7_n_4\,
      I1 => \y1__100_carry__8_n_4\,
      I2 => \y1__100_carry__8_n_6\,
      O => \y1__219_carry__1_i_1_n_0\
    );
\y1__219_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__7_n_5\,
      I1 => \y1__100_carry__8_n_5\,
      I2 => \y1__100_carry__8_n_7\,
      O => \y1__219_carry__1_i_2_n_0\
    );
\y1__219_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__8_n_6\,
      I1 => \y1__100_carry__7_n_6\,
      I2 => \y1__100_carry__7_n_4\,
      O => \y1__219_carry__1_i_3_n_0\
    );
\y1__219_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__8_n_7\,
      I1 => \y1__100_carry__7_n_7\,
      I2 => \y1__100_carry__7_n_5\,
      O => \y1__219_carry__1_i_4_n_0\
    );
\y1__219_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__8_n_6\,
      I1 => \y1__100_carry__8_n_4\,
      I2 => \y1__100_carry__7_n_4\,
      I3 => \y1__100_carry__8_n_7\,
      I4 => \y1__100_carry__8_n_5\,
      I5 => \y1__100_carry__9_n_7\,
      O => \y1__219_carry__1_i_5_n_0\
    );
\y1__219_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__8_n_7\,
      I1 => \y1__100_carry__8_n_5\,
      I2 => \y1__100_carry__7_n_5\,
      I3 => \y1__100_carry__7_n_4\,
      I4 => \y1__100_carry__8_n_6\,
      I5 => \y1__100_carry__8_n_4\,
      O => \y1__219_carry__1_i_6_n_0\
    );
\y1__219_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__7_n_4\,
      I1 => \y1__100_carry__7_n_6\,
      I2 => \y1__100_carry__8_n_6\,
      I3 => \y1__100_carry__7_n_5\,
      I4 => \y1__100_carry__8_n_7\,
      I5 => \y1__100_carry__8_n_5\,
      O => \y1__219_carry__1_i_7_n_0\
    );
\y1__219_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__7_n_5\,
      I1 => \y1__100_carry__7_n_7\,
      I2 => \y1__100_carry__8_n_7\,
      I3 => \y1__100_carry__7_n_6\,
      I4 => \y1__100_carry__7_n_4\,
      I5 => \y1__100_carry__8_n_6\,
      O => \y1__219_carry__1_i_8_n_0\
    );
\y1__219_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__219_carry__1_n_0\,
      CO(3) => \y1__219_carry__2_n_0\,
      CO(2) => \y1__219_carry__2_n_1\,
      CO(1) => \y1__219_carry__2_n_2\,
      CO(0) => \y1__219_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \y1__219_carry__2_i_1_n_0\,
      DI(2) => \y1__219_carry__2_i_2_n_0\,
      DI(1) => \y1__219_carry__2_i_3_n_0\,
      DI(0) => \y1__219_carry__2_i_4_n_0\,
      O(3) => \y1__219_carry__2_n_4\,
      O(2) => \y1__219_carry__2_n_5\,
      O(1) => \y1__219_carry__2_n_6\,
      O(0) => \y1__219_carry__2_n_7\,
      S(3) => \y1__219_carry__2_i_5_n_0\,
      S(2) => \y1__219_carry__2_i_6_n_0\,
      S(1) => \y1__219_carry__2_i_7_n_0\,
      S(0) => \y1__219_carry__2_i_8_n_0\
    );
\y1__219_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__8_n_4\,
      I1 => \y1__100_carry__9_n_4\,
      I2 => \y1__100_carry__9_n_6\,
      O => \y1__219_carry__2_i_1_n_0\
    );
\y1__219_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__8_n_5\,
      I1 => \y1__100_carry__9_n_5\,
      I2 => \y1__100_carry__9_n_7\,
      O => \y1__219_carry__2_i_2_n_0\
    );
\y1__219_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__9_n_6\,
      I1 => \y1__100_carry__8_n_6\,
      I2 => \y1__100_carry__8_n_4\,
      O => \y1__219_carry__2_i_3_n_0\
    );
\y1__219_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__9_n_7\,
      I1 => \y1__100_carry__8_n_7\,
      I2 => \y1__100_carry__8_n_5\,
      O => \y1__219_carry__2_i_4_n_0\
    );
\y1__219_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__9_n_6\,
      I1 => \y1__100_carry__9_n_4\,
      I2 => \y1__100_carry__8_n_4\,
      I3 => \y1__100_carry__9_n_7\,
      I4 => \y1__100_carry__9_n_5\,
      I5 => \y1__100_carry__10_n_7\,
      O => \y1__219_carry__2_i_5_n_0\
    );
\y1__219_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__9_n_7\,
      I1 => \y1__100_carry__9_n_5\,
      I2 => \y1__100_carry__8_n_5\,
      I3 => \y1__100_carry__8_n_4\,
      I4 => \y1__100_carry__9_n_6\,
      I5 => \y1__100_carry__9_n_4\,
      O => \y1__219_carry__2_i_6_n_0\
    );
\y1__219_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__8_n_4\,
      I1 => \y1__100_carry__8_n_6\,
      I2 => \y1__100_carry__9_n_6\,
      I3 => \y1__100_carry__8_n_5\,
      I4 => \y1__100_carry__9_n_7\,
      I5 => \y1__100_carry__9_n_5\,
      O => \y1__219_carry__2_i_7_n_0\
    );
\y1__219_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__8_n_5\,
      I1 => \y1__100_carry__8_n_7\,
      I2 => \y1__100_carry__9_n_7\,
      I3 => \y1__100_carry__8_n_6\,
      I4 => \y1__100_carry__8_n_4\,
      I5 => \y1__100_carry__9_n_6\,
      O => \y1__219_carry__2_i_8_n_0\
    );
\y1__219_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__219_carry__2_n_0\,
      CO(3) => \y1__219_carry__3_n_0\,
      CO(2) => \y1__219_carry__3_n_1\,
      CO(1) => \y1__219_carry__3_n_2\,
      CO(0) => \y1__219_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \y1__219_carry__3_i_1_n_0\,
      DI(2) => \y1__219_carry__3_i_2_n_0\,
      DI(1) => \y1__219_carry__3_i_3_n_0\,
      DI(0) => \y1__219_carry__3_i_4_n_0\,
      O(3) => \y1__219_carry__3_n_4\,
      O(2) => \y1__219_carry__3_n_5\,
      O(1) => \y1__219_carry__3_n_6\,
      O(0) => \y1__219_carry__3_n_7\,
      S(3) => \y1__219_carry__3_i_5_n_0\,
      S(2) => \y1__219_carry__3_i_6_n_0\,
      S(1) => \y1__219_carry__3_i_7_n_0\,
      S(0) => \y1__219_carry__3_i_8_n_0\
    );
\y1__219_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__9_n_4\,
      I1 => \y1__100_carry__10_n_4\,
      I2 => \y1__100_carry__10_n_6\,
      O => \y1__219_carry__3_i_1_n_0\
    );
\y1__219_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__9_n_5\,
      I1 => \y1__100_carry__10_n_5\,
      I2 => \y1__100_carry__10_n_7\,
      O => \y1__219_carry__3_i_2_n_0\
    );
\y1__219_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__10_n_6\,
      I1 => \y1__100_carry__9_n_6\,
      I2 => \y1__100_carry__9_n_4\,
      O => \y1__219_carry__3_i_3_n_0\
    );
\y1__219_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__10_n_7\,
      I1 => \y1__100_carry__9_n_7\,
      I2 => \y1__100_carry__9_n_5\,
      O => \y1__219_carry__3_i_4_n_0\
    );
\y1__219_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__10_n_6\,
      I1 => \y1__100_carry__10_n_4\,
      I2 => \y1__100_carry__9_n_4\,
      I3 => \y1__100_carry__10_n_7\,
      I4 => \y1__100_carry__10_n_5\,
      I5 => \y1__100_carry__11_n_7\,
      O => \y1__219_carry__3_i_5_n_0\
    );
\y1__219_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__10_n_7\,
      I1 => \y1__100_carry__10_n_5\,
      I2 => \y1__100_carry__9_n_5\,
      I3 => \y1__100_carry__9_n_4\,
      I4 => \y1__100_carry__10_n_6\,
      I5 => \y1__100_carry__10_n_4\,
      O => \y1__219_carry__3_i_6_n_0\
    );
\y1__219_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__9_n_4\,
      I1 => \y1__100_carry__9_n_6\,
      I2 => \y1__100_carry__10_n_6\,
      I3 => \y1__100_carry__9_n_5\,
      I4 => \y1__100_carry__10_n_7\,
      I5 => \y1__100_carry__10_n_5\,
      O => \y1__219_carry__3_i_7_n_0\
    );
\y1__219_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__9_n_5\,
      I1 => \y1__100_carry__9_n_7\,
      I2 => \y1__100_carry__10_n_7\,
      I3 => \y1__100_carry__9_n_6\,
      I4 => \y1__100_carry__9_n_4\,
      I5 => \y1__100_carry__10_n_6\,
      O => \y1__219_carry__3_i_8_n_0\
    );
\y1__219_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__219_carry__3_n_0\,
      CO(3) => \y1__219_carry__4_n_0\,
      CO(2) => \y1__219_carry__4_n_1\,
      CO(1) => \y1__219_carry__4_n_2\,
      CO(0) => \y1__219_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \y1__219_carry__4_i_1_n_0\,
      DI(2) => \y1__219_carry__4_i_2_n_0\,
      DI(1) => \y1__219_carry__4_i_3_n_0\,
      DI(0) => \y1__219_carry__4_i_4_n_0\,
      O(3) => \y1__219_carry__4_n_4\,
      O(2) => \y1__219_carry__4_n_5\,
      O(1) => \y1__219_carry__4_n_6\,
      O(0) => \y1__219_carry__4_n_7\,
      S(3) => \y1__219_carry__4_i_5_n_0\,
      S(2) => \y1__219_carry__4_i_6_n_0\,
      S(1) => \y1__219_carry__4_i_7_n_0\,
      S(0) => \y1__219_carry__4_i_8_n_0\
    );
\y1__219_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__10_n_4\,
      I1 => \y1__100_carry__11_n_6\,
      O => \y1__219_carry__4_i_1_n_0\
    );
\y1__219_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__10_n_5\,
      I1 => \y1__100_carry__11_n_7\,
      O => \y1__219_carry__4_i_2_n_0\
    );
\y1__219_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__11_n_6\,
      I1 => \y1__100_carry__10_n_6\,
      I2 => \y1__100_carry__10_n_4\,
      O => \y1__219_carry__4_i_3_n_0\
    );
\y1__219_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__11_n_7\,
      I1 => \y1__100_carry__10_n_7\,
      I2 => \y1__100_carry__10_n_5\,
      O => \y1__219_carry__4_i_4_n_0\
    );
\y1__219_carry__4_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \y1__100_carry__11_n_6\,
      I1 => \y1__100_carry__10_n_4\,
      I2 => \y1__100_carry__11_n_7\,
      O => \y1__219_carry__4_i_5_n_0\
    );
\y1__219_carry__4_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \y1__100_carry__11_n_7\,
      I1 => \y1__100_carry__10_n_5\,
      I2 => \y1__100_carry__11_n_6\,
      I3 => \y1__100_carry__10_n_4\,
      O => \y1__219_carry__4_i_6_n_0\
    );
\y1__219_carry__4_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__10_n_4\,
      I1 => \y1__100_carry__10_n_6\,
      I2 => \y1__100_carry__11_n_6\,
      I3 => \y1__100_carry__11_n_7\,
      I4 => \y1__100_carry__10_n_5\,
      O => \y1__219_carry__4_i_7_n_0\
    );
\y1__219_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__10_n_5\,
      I1 => \y1__100_carry__10_n_7\,
      I2 => \y1__100_carry__11_n_7\,
      I3 => \y1__100_carry__10_n_6\,
      I4 => \y1__100_carry__10_n_4\,
      I5 => \y1__100_carry__11_n_6\,
      O => \y1__219_carry__4_i_8_n_0\
    );
\y1__219_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__219_carry__4_n_0\,
      CO(3) => \NLW_y1__219_carry__5_CO_UNCONNECTED\(3),
      CO(2) => \y1__219_carry__5_n_1\,
      CO(1) => \NLW_y1__219_carry__5_CO_UNCONNECTED\(1),
      CO(0) => \y1__219_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \y1__100_carry__11_n_6\,
      DI(0) => \y1__100_carry__11_n_7\,
      O(3 downto 2) => \NLW_y1__219_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1) => \y1__219_carry__5_n_6\,
      O(0) => \y1__219_carry__5_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \y1__219_carry__5_i_1_n_0\,
      S(0) => \y1__219_carry__5_i_2_n_0\
    );
\y1__219_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \y1__100_carry__11_n_6\,
      O => \y1__219_carry__5_i_1_n_0\
    );
\y1__219_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__100_carry__11_n_7\,
      I1 => \y1__100_carry__11_n_6\,
      O => \y1__219_carry__5_i_2_n_0\
    );
\y1__219_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__100_carry__6_n_4\,
      I2 => \y1__100_carry__6_n_6\,
      O => \y1__219_carry_i_1_n_0\
    );
\y1__219_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      I1 => \y1__100_carry__6_n_6\,
      I2 => \y1__100_carry__5_n_4\,
      O => \y1__219_carry_i_2_n_0\
    );
\y1__219_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      I1 => \y1__100_carry__5_n_4\,
      O => \y1__219_carry_i_3_n_0\
    );
\y1__219_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      I1 => \y1__100_carry__6_n_4\,
      I2 => \y1__100_carry__5_n_4\,
      I3 => \y1__100_carry__6_n_5\,
      I4 => \y1__100_carry__6_n_7\,
      I5 => \y1__100_carry__7_n_7\,
      O => \y1__219_carry_i_4_n_0\
    );
\y1__219_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__100_carry__6_n_6\,
      I2 => \y1__100_carry__6_n_4\,
      I3 => \y1__100_carry__6_n_5\,
      I4 => \y1__100_carry__6_n_7\,
      O => \y1__219_carry_i_5_n_0\
    );
\y1__219_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__100_carry__6_n_6\,
      I2 => \y1__100_carry__6_n_7\,
      I3 => \y1__100_carry__6_n_5\,
      O => \y1__219_carry_i_6_n_0\
    );
\y1__219_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      I1 => \y1__100_carry__5_n_4\,
      O => \y1__219_carry_i_7_n_0\
    );
\y1__296_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__296_carry_n_0\,
      CO(2) => \y1__296_carry_n_1\,
      CO(1) => \y1__296_carry_n_2\,
      CO(0) => \y1__296_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry_i_1_n_0\,
      DI(2) => \y1__296_carry_i_2_n_0\,
      DI(1) => \y1__296_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \y1__296_carry_n_4\,
      O(2) => \y1__296_carry_n_5\,
      O(1) => \y1__296_carry_n_6\,
      O(0) => \y1__296_carry_n_7\,
      S(3) => \y1__296_carry_i_4_n_0\,
      S(2) => \y1__296_carry_i_5_n_0\,
      S(1) => \y1__296_carry_i_6_n_0\,
      S(0) => \y1__296_carry_i_7_n_0\
    );
\y1__296_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__296_carry_n_0\,
      CO(3) => \y1__296_carry__0_n_0\,
      CO(2) => \y1__296_carry__0_n_1\,
      CO(1) => \y1__296_carry__0_n_2\,
      CO(0) => \y1__296_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__0_i_1_n_0\,
      DI(2) => \y1__296_carry__0_i_2_n_0\,
      DI(1) => \y1__296_carry__0_i_3_n_0\,
      DI(0) => \y1__296_carry__0_i_4_n_0\,
      O(3) => \y1__296_carry__0_n_4\,
      O(2) => \y1__296_carry__0_n_5\,
      O(1) => \y1__296_carry__0_n_6\,
      O(0) => \y1__296_carry__0_n_7\,
      S(3) => \y1__296_carry__0_i_5_n_0\,
      S(2) => \y1__296_carry__0_i_6_n_0\,
      S(1) => \y1__296_carry__0_i_7_n_0\,
      S(0) => \y1__296_carry__0_i_8_n_0\
    );
\y1__296_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__7_n_6\,
      I1 => \y1__219_carry__1_n_7\,
      I2 => \y1__100_carry__6_n_5\,
      O => \y1__296_carry__0_i_1_n_0\
    );
\y1__296_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__7_n_7\,
      I1 => \y1__219_carry__0_n_4\,
      I2 => \y1__100_carry__6_n_6\,
      O => \y1__296_carry__0_i_2_n_0\
    );
\y1__296_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      I1 => \y1__219_carry__0_n_5\,
      I2 => \y1__100_carry__6_n_7\,
      O => \y1__296_carry__0_i_3_n_0\
    );
\y1__296_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      I1 => \y1__219_carry__0_n_6\,
      I2 => \y1__100_carry__5_n_4\,
      O => \y1__296_carry__0_i_4_n_0\
    );
\y1__296_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      I1 => \y1__219_carry__1_n_7\,
      I2 => \y1__100_carry__7_n_6\,
      I3 => \y1__100_carry__6_n_4\,
      I4 => \y1__219_carry__1_n_6\,
      I5 => \y1__100_carry__7_n_5\,
      O => \y1__296_carry__0_i_5_n_0\
    );
\y1__296_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      I1 => \y1__219_carry__0_n_4\,
      I2 => \y1__100_carry__7_n_7\,
      I3 => \y1__100_carry__6_n_5\,
      I4 => \y1__219_carry__1_n_7\,
      I5 => \y1__100_carry__7_n_6\,
      O => \y1__296_carry__0_i_6_n_0\
    );
\y1__296_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__6_n_7\,
      I1 => \y1__219_carry__0_n_5\,
      I2 => \y1__100_carry__6_n_4\,
      I3 => \y1__100_carry__6_n_6\,
      I4 => \y1__219_carry__0_n_4\,
      I5 => \y1__100_carry__7_n_7\,
      O => \y1__296_carry__0_i_7_n_0\
    );
\y1__296_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__219_carry__0_n_6\,
      I2 => \y1__100_carry__6_n_5\,
      I3 => \y1__100_carry__6_n_7\,
      I4 => \y1__219_carry__0_n_5\,
      I5 => \y1__100_carry__6_n_4\,
      O => \y1__296_carry__0_i_8_n_0\
    );
\y1__296_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__296_carry__0_n_0\,
      CO(3) => \y1__296_carry__1_n_0\,
      CO(2) => \y1__296_carry__1_n_1\,
      CO(1) => \y1__296_carry__1_n_2\,
      CO(0) => \y1__296_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__1_i_1_n_0\,
      DI(2) => \y1__296_carry__1_i_2_n_0\,
      DI(1) => \y1__296_carry__1_i_3_n_0\,
      DI(0) => \y1__296_carry__1_i_4_n_0\,
      O(3) => \y1__296_carry__1_n_4\,
      O(2) => \y1__296_carry__1_n_5\,
      O(1) => \y1__296_carry__1_n_6\,
      O(0) => \y1__296_carry__1_n_7\,
      S(3) => \y1__296_carry__1_i_5_n_0\,
      S(2) => \y1__296_carry__1_i_6_n_0\,
      S(1) => \y1__296_carry__1_i_7_n_0\,
      S(0) => \y1__296_carry__1_i_8_n_0\
    );
\y1__296_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__8_n_6\,
      I1 => \y1__219_carry__2_n_7\,
      I2 => \y1__100_carry__7_n_5\,
      O => \y1__296_carry__1_i_1_n_0\
    );
\y1__296_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__8_n_7\,
      I1 => \y1__219_carry__1_n_4\,
      I2 => \y1__100_carry__7_n_6\,
      O => \y1__296_carry__1_i_2_n_0\
    );
\y1__296_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__7_n_4\,
      I1 => \y1__219_carry__1_n_5\,
      I2 => \y1__100_carry__7_n_7\,
      O => \y1__296_carry__1_i_3_n_0\
    );
\y1__296_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__7_n_5\,
      I1 => \y1__219_carry__1_n_6\,
      I2 => \y1__100_carry__6_n_4\,
      O => \y1__296_carry__1_i_4_n_0\
    );
\y1__296_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__7_n_5\,
      I1 => \y1__219_carry__2_n_7\,
      I2 => \y1__100_carry__8_n_6\,
      I3 => \y1__100_carry__7_n_4\,
      I4 => \y1__219_carry__2_n_6\,
      I5 => \y1__100_carry__8_n_5\,
      O => \y1__296_carry__1_i_5_n_0\
    );
\y1__296_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__7_n_6\,
      I1 => \y1__219_carry__1_n_4\,
      I2 => \y1__100_carry__8_n_7\,
      I3 => \y1__100_carry__7_n_5\,
      I4 => \y1__219_carry__2_n_7\,
      I5 => \y1__100_carry__8_n_6\,
      O => \y1__296_carry__1_i_6_n_0\
    );
\y1__296_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__7_n_7\,
      I1 => \y1__219_carry__1_n_5\,
      I2 => \y1__100_carry__7_n_4\,
      I3 => \y1__100_carry__7_n_6\,
      I4 => \y1__219_carry__1_n_4\,
      I5 => \y1__100_carry__8_n_7\,
      O => \y1__296_carry__1_i_7_n_0\
    );
\y1__296_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      I1 => \y1__219_carry__1_n_6\,
      I2 => \y1__100_carry__7_n_5\,
      I3 => \y1__100_carry__7_n_7\,
      I4 => \y1__219_carry__1_n_5\,
      I5 => \y1__100_carry__7_n_4\,
      O => \y1__296_carry__1_i_8_n_0\
    );
\y1__296_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__296_carry__1_n_0\,
      CO(3) => \y1__296_carry__2_n_0\,
      CO(2) => \y1__296_carry__2_n_1\,
      CO(1) => \y1__296_carry__2_n_2\,
      CO(0) => \y1__296_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__2_i_1_n_0\,
      DI(2) => \y1__296_carry__2_i_2_n_0\,
      DI(1) => \y1__296_carry__2_i_3_n_0\,
      DI(0) => \y1__296_carry__2_i_4_n_0\,
      O(3) => \y1__296_carry__2_n_4\,
      O(2) => \y1__296_carry__2_n_5\,
      O(1) => \y1__296_carry__2_n_6\,
      O(0) => \y1__296_carry__2_n_7\,
      S(3) => \y1__296_carry__2_i_5_n_0\,
      S(2) => \y1__296_carry__2_i_6_n_0\,
      S(1) => \y1__296_carry__2_i_7_n_0\,
      S(0) => \y1__296_carry__2_i_8_n_0\
    );
\y1__296_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__9_n_6\,
      I1 => \y1__219_carry__3_n_7\,
      I2 => \y1__100_carry__8_n_5\,
      O => \y1__296_carry__2_i_1_n_0\
    );
\y1__296_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__9_n_7\,
      I1 => \y1__219_carry__2_n_4\,
      I2 => \y1__100_carry__8_n_6\,
      O => \y1__296_carry__2_i_2_n_0\
    );
\y1__296_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__8_n_4\,
      I1 => \y1__219_carry__2_n_5\,
      I2 => \y1__100_carry__8_n_7\,
      O => \y1__296_carry__2_i_3_n_0\
    );
\y1__296_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__8_n_5\,
      I1 => \y1__219_carry__2_n_6\,
      I2 => \y1__100_carry__7_n_4\,
      O => \y1__296_carry__2_i_4_n_0\
    );
\y1__296_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__8_n_5\,
      I1 => \y1__219_carry__3_n_7\,
      I2 => \y1__100_carry__9_n_6\,
      I3 => \y1__100_carry__8_n_4\,
      I4 => \y1__219_carry__3_n_6\,
      I5 => \y1__100_carry__9_n_5\,
      O => \y1__296_carry__2_i_5_n_0\
    );
\y1__296_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__8_n_6\,
      I1 => \y1__219_carry__2_n_4\,
      I2 => \y1__100_carry__9_n_7\,
      I3 => \y1__100_carry__8_n_5\,
      I4 => \y1__219_carry__3_n_7\,
      I5 => \y1__100_carry__9_n_6\,
      O => \y1__296_carry__2_i_6_n_0\
    );
\y1__296_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__8_n_7\,
      I1 => \y1__219_carry__2_n_5\,
      I2 => \y1__100_carry__8_n_4\,
      I3 => \y1__100_carry__8_n_6\,
      I4 => \y1__219_carry__2_n_4\,
      I5 => \y1__100_carry__9_n_7\,
      O => \y1__296_carry__2_i_7_n_0\
    );
\y1__296_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__7_n_4\,
      I1 => \y1__219_carry__2_n_6\,
      I2 => \y1__100_carry__8_n_5\,
      I3 => \y1__100_carry__8_n_7\,
      I4 => \y1__219_carry__2_n_5\,
      I5 => \y1__100_carry__8_n_4\,
      O => \y1__296_carry__2_i_8_n_0\
    );
\y1__296_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__296_carry__2_n_0\,
      CO(3) => \y1__296_carry__3_n_0\,
      CO(2) => \y1__296_carry__3_n_1\,
      CO(1) => \y1__296_carry__3_n_2\,
      CO(0) => \y1__296_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__3_i_1_n_0\,
      DI(2) => \y1__296_carry__3_i_2_n_0\,
      DI(1) => \y1__296_carry__3_i_3_n_0\,
      DI(0) => \y1__296_carry__3_i_4_n_0\,
      O(3) => \y1__296_carry__3_n_4\,
      O(2) => \y1__296_carry__3_n_5\,
      O(1) => \y1__296_carry__3_n_6\,
      O(0) => \y1__296_carry__3_n_7\,
      S(3) => \y1__296_carry__3_i_5_n_0\,
      S(2) => \y1__296_carry__3_i_6_n_0\,
      S(1) => \y1__296_carry__3_i_7_n_0\,
      S(0) => \y1__296_carry__3_i_8_n_0\
    );
\y1__296_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__10_n_6\,
      I1 => \y1__219_carry__4_n_7\,
      I2 => \y1__100_carry__9_n_5\,
      O => \y1__296_carry__3_i_1_n_0\
    );
\y1__296_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__10_n_7\,
      I1 => \y1__219_carry__3_n_4\,
      I2 => \y1__100_carry__9_n_6\,
      O => \y1__296_carry__3_i_2_n_0\
    );
\y1__296_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__9_n_4\,
      I1 => \y1__219_carry__3_n_5\,
      I2 => \y1__100_carry__9_n_7\,
      O => \y1__296_carry__3_i_3_n_0\
    );
\y1__296_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__9_n_5\,
      I1 => \y1__219_carry__3_n_6\,
      I2 => \y1__100_carry__8_n_4\,
      O => \y1__296_carry__3_i_4_n_0\
    );
\y1__296_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__9_n_5\,
      I1 => \y1__219_carry__4_n_7\,
      I2 => \y1__100_carry__10_n_6\,
      I3 => \y1__100_carry__9_n_4\,
      I4 => \y1__219_carry__4_n_6\,
      I5 => \y1__100_carry__10_n_5\,
      O => \y1__296_carry__3_i_5_n_0\
    );
\y1__296_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__9_n_6\,
      I1 => \y1__219_carry__3_n_4\,
      I2 => \y1__100_carry__10_n_7\,
      I3 => \y1__100_carry__9_n_5\,
      I4 => \y1__219_carry__4_n_7\,
      I5 => \y1__100_carry__10_n_6\,
      O => \y1__296_carry__3_i_6_n_0\
    );
\y1__296_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__9_n_7\,
      I1 => \y1__219_carry__3_n_5\,
      I2 => \y1__100_carry__9_n_4\,
      I3 => \y1__100_carry__9_n_6\,
      I4 => \y1__219_carry__3_n_4\,
      I5 => \y1__100_carry__10_n_7\,
      O => \y1__296_carry__3_i_7_n_0\
    );
\y1__296_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__8_n_4\,
      I1 => \y1__219_carry__3_n_6\,
      I2 => \y1__100_carry__9_n_5\,
      I3 => \y1__100_carry__9_n_7\,
      I4 => \y1__219_carry__3_n_5\,
      I5 => \y1__100_carry__9_n_4\,
      O => \y1__296_carry__3_i_8_n_0\
    );
\y1__296_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__296_carry__3_n_0\,
      CO(3) => \y1__296_carry__4_n_0\,
      CO(2) => \y1__296_carry__4_n_1\,
      CO(1) => \y1__296_carry__4_n_2\,
      CO(0) => \y1__296_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__4_i_1_n_0\,
      DI(2) => \y1__296_carry__4_i_2_n_0\,
      DI(1) => \y1__296_carry__4_i_3_n_0\,
      DI(0) => \y1__296_carry__4_i_4_n_0\,
      O(3) => \y1__296_carry__4_n_4\,
      O(2) => \y1__296_carry__4_n_5\,
      O(1) => \y1__296_carry__4_n_6\,
      O(0) => \y1__296_carry__4_n_7\,
      S(3) => \y1__296_carry__4_i_5_n_0\,
      S(2) => \y1__296_carry__4_i_6_n_0\,
      S(1) => \y1__296_carry__4_i_7_n_0\,
      S(0) => \y1__296_carry__4_i_8_n_0\
    );
\y1__296_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__11_n_6\,
      I1 => \y1__219_carry__5_n_7\,
      I2 => \y1__100_carry__10_n_5\,
      O => \y1__296_carry__4_i_1_n_0\
    );
\y1__296_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__11_n_7\,
      I1 => \y1__219_carry__4_n_4\,
      I2 => \y1__100_carry__10_n_6\,
      O => \y1__296_carry__4_i_2_n_0\
    );
\y1__296_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__10_n_4\,
      I1 => \y1__219_carry__4_n_5\,
      I2 => \y1__100_carry__10_n_7\,
      O => \y1__296_carry__4_i_3_n_0\
    );
\y1__296_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \y1__100_carry__10_n_5\,
      I1 => \y1__219_carry__4_n_6\,
      I2 => \y1__100_carry__9_n_4\,
      O => \y1__296_carry__4_i_4_n_0\
    );
\y1__296_carry__4_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \y1__100_carry__10_n_5\,
      I1 => \y1__219_carry__5_n_7\,
      I2 => \y1__100_carry__11_n_6\,
      I3 => \y1__219_carry__5_n_6\,
      I4 => \y1__100_carry__10_n_4\,
      O => \y1__296_carry__4_i_5_n_0\
    );
\y1__296_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__10_n_6\,
      I1 => \y1__219_carry__4_n_4\,
      I2 => \y1__100_carry__11_n_7\,
      I3 => \y1__100_carry__10_n_5\,
      I4 => \y1__219_carry__5_n_7\,
      I5 => \y1__100_carry__11_n_6\,
      O => \y1__296_carry__4_i_6_n_0\
    );
\y1__296_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__10_n_7\,
      I1 => \y1__219_carry__4_n_5\,
      I2 => \y1__100_carry__10_n_4\,
      I3 => \y1__100_carry__10_n_6\,
      I4 => \y1__219_carry__4_n_4\,
      I5 => \y1__100_carry__11_n_7\,
      O => \y1__296_carry__4_i_7_n_0\
    );
\y1__296_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \y1__100_carry__9_n_4\,
      I1 => \y1__219_carry__4_n_6\,
      I2 => \y1__100_carry__10_n_5\,
      I3 => \y1__100_carry__10_n_7\,
      I4 => \y1__219_carry__4_n_5\,
      I5 => \y1__100_carry__10_n_4\,
      O => \y1__296_carry__4_i_8_n_0\
    );
\y1__296_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__296_carry__4_n_0\,
      CO(3 downto 0) => \NLW_y1__296_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y1__296_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => \y1__296_carry__5_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \y1__296_carry__5_i_1_n_0\
    );
\y1__296_carry__5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \y1__219_carry__5_n_6\,
      I1 => \y1__100_carry__10_n_4\,
      I2 => \y1__219_carry__5_n_1\,
      I3 => \y1__100_carry__11_n_7\,
      O => \y1__296_carry__5_i_1_n_0\
    );
\y1__296_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      I1 => \y1__219_carry__0_n_6\,
      I2 => \y1__100_carry__5_n_4\,
      O => \y1__296_carry_i_1_n_0\
    );
\y1__296_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__219_carry_n_4\,
      I1 => \y1__100_carry__6_n_7\,
      O => \y1__296_carry_i_2_n_0\
    );
\y1__296_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \y1__219_carry_n_5\,
      I1 => \y1__100_carry__5_n_4\,
      O => \y1__296_carry_i_3_n_0\
    );
\y1__296_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__219_carry__0_n_6\,
      I2 => \y1__100_carry__6_n_5\,
      I3 => \y1__100_carry__6_n_6\,
      I4 => \y1__219_carry__0_n_7\,
      O => \y1__296_carry_i_4_n_0\
    );
\y1__296_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \y1__100_carry__6_n_7\,
      I1 => \y1__219_carry_n_4\,
      I2 => \y1__219_carry__0_n_7\,
      I3 => \y1__100_carry__6_n_6\,
      O => \y1__296_carry_i_5_n_0\
    );
\y1__296_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__219_carry_n_5\,
      I2 => \y1__219_carry_n_4\,
      I3 => \y1__100_carry__6_n_7\,
      O => \y1__296_carry_i_6_n_0\
    );
\y1__296_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__219_carry_n_5\,
      O => \y1__296_carry_i_7_n_0\
    );
\y1__369_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__369_carry_n_0\,
      CO(2) => \y1__369_carry_n_1\,
      CO(1) => \y1__369_carry_n_2\,
      CO(0) => \y1__369_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y1__369_carry_i_1_n_0\,
      DI(2) => \y1__369_carry_i_2_n_0\,
      DI(1) => \y1__369_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_y1__369_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry_i_4_n_0\,
      S(2) => \y1__369_carry_i_5_n_0\,
      S(1) => \y1__369_carry_i_6_n_0\,
      S(0) => \y1__369_carry_i_7_n_0\
    );
\y1__369_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry_n_0\,
      CO(3) => \y1__369_carry__0_n_0\,
      CO(2) => \y1__369_carry__0_n_1\,
      CO(1) => \y1__369_carry__0_n_2\,
      CO(0) => \y1__369_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"11",
      DI(1) => \y1__296_carry_n_6\,
      DI(0) => \y1__369_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_y1__369_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry__0_i_2_n_0\,
      S(2) => \y1__369_carry__0_i_3_n_0\,
      S(1) => \y1__369_carry__0_i_4_n_0\,
      S(0) => \y1__369_carry__0_i_5_n_0\
    );
\y1__369_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \y1__219_carry_n_6\,
      I1 => \y1_carry__0_i_1_n_0\,
      O => \y1__369_carry__0_i_1_n_0\
    );
\y1__369_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__296_carry_n_4\,
      O => \y1__369_carry__0_i_2_n_0\
    );
\y1__369_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \y1__296_carry_n_5\,
      O => \y1__369_carry__0_i_3_n_0\
    );
\y1__369_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \y1__296_carry_n_7\,
      I1 => \y1__100_carry__5_i_8_n_0\,
      I2 => \y1__296_carry_n_6\,
      O => \y1__369_carry__0_i_4_n_0\
    );
\y1__369_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \y1_carry__0_i_1_n_0\,
      I1 => \y1__219_carry_n_6\,
      I2 => \y1__100_carry__5_i_8_n_0\,
      I3 => \y1__296_carry_n_7\,
      O => \y1__369_carry__0_i_5_n_0\
    );
\y1__369_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry__0_n_0\,
      CO(3) => \y1__369_carry__1_n_0\,
      CO(2) => \y1__369_carry__1_n_1\,
      CO(1) => \y1__369_carry__1_n_2\,
      CO(0) => \y1__369_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__0_n_5\,
      DI(2) => \y1__296_carry__0_n_6\,
      DI(1) => \y1__296_carry__0_n_7\,
      DI(0) => \y1__296_carry_n_4\,
      O(3 downto 0) => \NLW_y1__369_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry__1_i_1_n_0\,
      S(2) => \y1__369_carry__1_i_2_n_0\,
      S(1) => \y1__369_carry__1_i_3_n_0\,
      S(0) => \y1__369_carry__1_i_4_n_0\
    );
\y1__369_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__0_n_5\,
      I1 => \y1__296_carry__0_n_4\,
      O => \y1__369_carry__1_i_1_n_0\
    );
\y1__369_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__0_n_6\,
      I1 => \y1__296_carry__0_n_5\,
      O => \y1__369_carry__1_i_2_n_0\
    );
\y1__369_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__0_n_7\,
      I1 => \y1__296_carry__0_n_6\,
      O => \y1__369_carry__1_i_3_n_0\
    );
\y1__369_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry_n_4\,
      I1 => \y1__296_carry__0_n_7\,
      O => \y1__369_carry__1_i_4_n_0\
    );
\y1__369_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry__1_n_0\,
      CO(3) => \y1__369_carry__2_n_0\,
      CO(2) => \y1__369_carry__2_n_1\,
      CO(1) => \y1__369_carry__2_n_2\,
      CO(0) => \y1__369_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__1_n_5\,
      DI(2) => \y1__296_carry__1_n_6\,
      DI(1) => \y1__296_carry__1_n_7\,
      DI(0) => \y1__296_carry__0_n_4\,
      O(3 downto 0) => \NLW_y1__369_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry__2_i_1_n_0\,
      S(2) => \y1__369_carry__2_i_2_n_0\,
      S(1) => \y1__369_carry__2_i_3_n_0\,
      S(0) => \y1__369_carry__2_i_4_n_0\
    );
\y1__369_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__1_n_5\,
      I1 => \y1__296_carry__1_n_4\,
      O => \y1__369_carry__2_i_1_n_0\
    );
\y1__369_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__1_n_6\,
      I1 => \y1__296_carry__1_n_5\,
      O => \y1__369_carry__2_i_2_n_0\
    );
\y1__369_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__1_n_7\,
      I1 => \y1__296_carry__1_n_6\,
      O => \y1__369_carry__2_i_3_n_0\
    );
\y1__369_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__0_n_4\,
      I1 => \y1__296_carry__1_n_7\,
      O => \y1__369_carry__2_i_4_n_0\
    );
\y1__369_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry__2_n_0\,
      CO(3) => \y1__369_carry__3_n_0\,
      CO(2) => \y1__369_carry__3_n_1\,
      CO(1) => \y1__369_carry__3_n_2\,
      CO(0) => \y1__369_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__2_n_5\,
      DI(2) => \y1__296_carry__2_n_6\,
      DI(1) => \y1__296_carry__2_n_7\,
      DI(0) => \y1__296_carry__1_n_4\,
      O(3 downto 0) => \NLW_y1__369_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry__3_i_1_n_0\,
      S(2) => \y1__369_carry__3_i_2_n_0\,
      S(1) => \y1__369_carry__3_i_3_n_0\,
      S(0) => \y1__369_carry__3_i_4_n_0\
    );
\y1__369_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__2_n_5\,
      I1 => \y1__296_carry__2_n_4\,
      O => \y1__369_carry__3_i_1_n_0\
    );
\y1__369_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__2_n_6\,
      I1 => \y1__296_carry__2_n_5\,
      O => \y1__369_carry__3_i_2_n_0\
    );
\y1__369_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__2_n_7\,
      I1 => \y1__296_carry__2_n_6\,
      O => \y1__369_carry__3_i_3_n_0\
    );
\y1__369_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__1_n_4\,
      I1 => \y1__296_carry__2_n_7\,
      O => \y1__369_carry__3_i_4_n_0\
    );
\y1__369_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry__3_n_0\,
      CO(3) => \y1__369_carry__4_n_0\,
      CO(2) => \y1__369_carry__4_n_1\,
      CO(1) => \y1__369_carry__4_n_2\,
      CO(0) => \y1__369_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__3_n_5\,
      DI(2) => \y1__296_carry__3_n_6\,
      DI(1) => \y1__296_carry__3_n_7\,
      DI(0) => \y1__296_carry__2_n_4\,
      O(3 downto 0) => \NLW_y1__369_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry__4_i_1_n_0\,
      S(2) => \y1__369_carry__4_i_2_n_0\,
      S(1) => \y1__369_carry__4_i_3_n_0\,
      S(0) => \y1__369_carry__4_i_4_n_0\
    );
\y1__369_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__3_n_5\,
      I1 => \y1__296_carry__3_n_4\,
      O => \y1__369_carry__4_i_1_n_0\
    );
\y1__369_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__3_n_6\,
      I1 => \y1__296_carry__3_n_5\,
      O => \y1__369_carry__4_i_2_n_0\
    );
\y1__369_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__3_n_7\,
      I1 => \y1__296_carry__3_n_6\,
      O => \y1__369_carry__4_i_3_n_0\
    );
\y1__369_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__2_n_4\,
      I1 => \y1__296_carry__3_n_7\,
      O => \y1__369_carry__4_i_4_n_0\
    );
\y1__369_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry__4_n_0\,
      CO(3) => \y1__369_carry__5_n_0\,
      CO(2) => \y1__369_carry__5_n_1\,
      CO(1) => \y1__369_carry__5_n_2\,
      CO(0) => \y1__369_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \y1__296_carry__4_n_5\,
      DI(2) => \y1__296_carry__4_n_6\,
      DI(1) => \y1__296_carry__4_n_7\,
      DI(0) => \y1__296_carry__3_n_4\,
      O(3 downto 0) => \NLW_y1__369_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \y1__369_carry__5_i_1_n_0\,
      S(2) => \y1__369_carry__5_i_2_n_0\,
      S(1) => \y1__369_carry__5_i_3_n_0\,
      S(0) => \y1__369_carry__5_i_4_n_0\
    );
\y1__369_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__4_n_5\,
      I1 => \y1__296_carry__4_n_4\,
      O => \y1__369_carry__5_i_1_n_0\
    );
\y1__369_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__4_n_6\,
      I1 => \y1__296_carry__4_n_5\,
      O => \y1__369_carry__5_i_2_n_0\
    );
\y1__369_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__4_n_7\,
      I1 => \y1__296_carry__4_n_6\,
      O => \y1__369_carry__5_i_3_n_0\
    );
\y1__369_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__3_n_4\,
      I1 => \y1__296_carry__4_n_7\,
      O => \y1__369_carry__5_i_4_n_0\
    );
\y1__369_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__369_carry__5_n_0\,
      CO(3 downto 1) => \NLW_y1__369_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y1__369_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y1__296_carry__4_n_4\,
      O(3 downto 0) => \NLW_y1__369_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \y1__369_carry__6_i_1_n_0\
    );
\y1__369_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y1__296_carry__4_n_4\,
      I1 => \y1__296_carry__5_n_7\,
      O => \y1__369_carry__6_i_1_n_0\
    );
\y1__369_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEBBBBBBBBB"
    )
        port map (
      I0 => \y1__219_carry_n_7\,
      I1 => y3(5),
      I2 => y3(4),
      I3 => y3(2),
      I4 => y3(3),
      I5 => y3(7),
      O => \y1__369_carry_i_1_n_0\
    );
\y1__369_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288888222222222"
    )
        port map (
      I0 => \y1__100_carry__6_n_7\,
      I1 => y3(4),
      I2 => y3(3),
      I3 => x(0),
      I4 => \^q\(0),
      I5 => y3(7),
      O => \y1__369_carry_i_2_n_0\
    );
\y1__369_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBEBEBBB"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => y3(3),
      I2 => y3(7),
      I3 => \^q\(0),
      I4 => x(0),
      O => \y1__369_carry_i_3_n_0\
    );
\y1__369_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \y1_carry__0_i_2_n_0\,
      I1 => \y1__219_carry_n_7\,
      I2 => \y1__219_carry_n_6\,
      I3 => \y1_carry__0_i_1_n_0\,
      O => \y1__369_carry_i_4_n_0\
    );
\y1__369_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \y1_carry__0_i_3_n_0\,
      I1 => \y1__100_carry__6_n_7\,
      I2 => \y1__219_carry_n_7\,
      I3 => \y1_carry__0_i_2_n_0\,
      O => \y1__369_carry_i_5_n_0\
    );
\y1__369_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C696933339696CCC"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__100_carry__6_n_7\,
      I2 => y3(7),
      I3 => y3(2),
      I4 => y3(3),
      I5 => y3(4),
      O => \y1__369_carry_i_6_n_0\
    );
\y1__369_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5995A66A"
    )
        port map (
      I0 => y3(3),
      I1 => y3(7),
      I2 => \^q\(0),
      I3 => x(0),
      I4 => \y1__100_carry__5_n_4\,
      O => \y1__369_carry_i_7_n_0\
    );
\y1__426_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__426_carry_n_0\,
      CO(2) => \y1__426_carry_n_1\,
      CO(1) => \y1__426_carry_n_2\,
      CO(0) => \y1__426_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \y1__426_carry_n_4\,
      O(2) => \y1__426_carry_n_5\,
      O(1) => \y1__426_carry_n_6\,
      O(0) => \y1__426_carry_n_7\,
      S(3) => \y1__426_carry_i_1_n_0\,
      S(2) => \y1__426_carry_i_2_n_0\,
      S(1) => \y1__426_carry_i_3_n_0\,
      S(0) => \y1__426_carry_i_4_n_0\
    );
\y1__426_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__426_carry_n_0\,
      CO(3) => \NLW_y1__426_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \y1__426_carry__0_n_1\,
      CO(1) => \y1__426_carry__0_n_2\,
      CO(0) => \y1__426_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y1__426_carry__0_n_4\,
      O(2) => \y1__426_carry__0_n_5\,
      O(1) => \y1__426_carry__0_n_6\,
      O(0) => \y1__426_carry__0_n_7\,
      S(3) => \y1__426_carry_i_1__0_n_0\,
      S(2) => \y1__426_carry_i_2__0_n_0\,
      S(1) => \y1__426_carry_i_3__0_n_0\,
      S(0) => \y1__426_carry_i_4__0_n_0\
    );
\y1__426_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      O => \y1__426_carry_i_1_n_0\
    );
\y1__426_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__7_n_5\,
      O => \y1__426_carry_i_1__0_n_0\
    );
\y1__426_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      O => \y1__426_carry_i_2_n_0\
    );
\y1__426_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__7_n_6\,
      O => \y1__426_carry_i_2__0_n_0\
    );
\y1__426_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__6_n_7\,
      O => \y1__426_carry_i_3_n_0\
    );
\y1__426_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__7_n_7\,
      O => \y1__426_carry_i_3__0_n_0\
    );
\y1__426_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      O => \y1__426_carry_i_4_n_0\
    );
\y1__426_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      O => \y1__426_carry_i_4__0_n_0\
    );
\y1__62_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y1__62_carry_n_0\,
      CO(2) => \y1__62_carry_n_1\,
      CO(1) => \y1__62_carry_n_2\,
      CO(0) => \y1__62_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y1__62_carry_i_1_n_0\,
      DI(2) => \y1__62_carry_i_2_n_0\,
      DI(1) => \y1_carry__0_i_2_n_0\,
      DI(0) => '1',
      O(3) => \y1__62_carry_n_4\,
      O(2) => \y1__62_carry_n_5\,
      O(1) => \y1__62_carry_n_6\,
      O(0) => \y1__62_carry_n_7\,
      S(3) => \y1__62_carry_i_3_n_0\,
      S(2) => \y1__62_carry_i_4_n_0\,
      S(1) => \y1__62_carry_i_5_n_0\,
      S(0) => \y1__62_carry_i_6_n_0\
    );
\y1__62_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__62_carry_n_0\,
      CO(3) => \y1__62_carry__0_n_0\,
      CO(2) => \y1__62_carry__0_n_1\,
      CO(1) => \y1__62_carry__0_n_2\,
      CO(0) => \y1__62_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y1__62_carry__0_i_1_n_0\,
      DI(2) => \y1__62_carry__0_i_2_n_0\,
      DI(1) => \y1__62_carry__0_i_3_n_0\,
      DI(0) => \y1__62_carry__0_i_4_n_0\,
      O(3) => \y1__62_carry__0_n_4\,
      O(2) => \y1__62_carry__0_n_5\,
      O(1) => \y1__62_carry__0_n_6\,
      O(0) => \y1__62_carry__0_n_7\,
      S(3) => \y1__62_carry__0_i_5_n_0\,
      S(2) => \y1__62_carry__0_i_6_n_0\,
      S(1) => \y1__62_carry__0_i_7_n_0\,
      S(0) => \y1__62_carry__0_i_8_n_0\
    );
\y1__62_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAAA"
    )
        port map (
      I0 => y3(5),
      I1 => y3(4),
      I2 => y3(2),
      I3 => y3(3),
      I4 => y3(7),
      O => \y1__62_carry__0_i_1_n_0\
    );
\y1__62_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC233333333"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(4),
      I3 => y3(2),
      I4 => y3(3),
      I5 => y3(7),
      O => \y1__62_carry__0_i_2_n_0\
    );
\y1__62_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A5A559A5A5A5A5"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(4),
      I3 => y3(3),
      I4 => y3(2),
      I5 => y3(7),
      O => \y1__62_carry__0_i_3_n_0\
    );
\y1__62_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2814"
    )
        port map (
      I0 => y3(4),
      I1 => x(0),
      I2 => \^q\(0),
      I3 => y3(7),
      O => \y1__62_carry__0_i_4_n_0\
    );
\y1__62_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999599999999"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(3),
      I3 => y3(2),
      I4 => y3(4),
      I5 => y3(7),
      O => \y1__62_carry__0_i_5_n_0\
    );
\y1__62_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A80057FFFFA80055"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => y3(2),
      I3 => y3(4),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1__62_carry__0_i_6_n_0\
    );
\y1__62_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D52AAD502AD552AF"
    )
        port map (
      I0 => y3(7),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(4),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1__62_carry__0_i_7_n_0\
    );
\y1__62_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666649949999B66B"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => x(0),
      I3 => \^q\(0),
      I4 => y3(4),
      I5 => y3(5),
      O => \y1__62_carry__0_i_8_n_0\
    );
\y1__62_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1__62_carry__0_n_0\,
      CO(3) => \NLW_y1__62_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \y1__62_carry__1_n_1\,
      CO(1) => \NLW_y1__62_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \y1__62_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \y1_carry__1_i_1_n_0\,
      DI(0) => \y1_carry__0_i_1_n_0\,
      O(3 downto 2) => \NLW_y1__62_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \y1__62_carry__1_n_6\,
      O(0) => \y1__62_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \y1__62_carry__1_i_1_n_0\,
      S(0) => \y1__62_carry__1_i_2_n_0\
    );
\y1__62_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => y3(7),
      I1 => y3(6),
      I2 => y3(5),
      I3 => y3(3),
      I4 => y3(2),
      I5 => y3(4),
      O => \y1__62_carry__1_i_1_n_0\
    );
\y1__62_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE00000000FFFF"
    )
        port map (
      I0 => y3(4),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(5),
      I4 => y3(6),
      I5 => y3(7),
      O => \y1__62_carry__1_i_2_n_0\
    );
\y1__62_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => y3(2),
      I1 => y3(7),
      I2 => y3(3),
      I3 => y3(6),
      I4 => y3(5),
      I5 => y3(4),
      O => \y1__62_carry_i_1_n_0\
    );
\y1__62_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050505070A0A0A08"
    )
        port map (
      I0 => y3(7),
      I1 => y3(4),
      I2 => y3(2),
      I3 => y3(3),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1__62_carry_i_2_n_0\
    );
\y1__62_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF000F0F00FFE0F"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(2),
      I3 => y3(7),
      I4 => y3(3),
      I5 => y3(4),
      O => \y1__62_carry_i_3_n_0\
    );
\y1__62_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FF0FE0F00F"
    )
        port map (
      I0 => y3(4),
      I1 => y3(5),
      I2 => y3(6),
      I3 => y3(3),
      I4 => y3(7),
      I5 => y3(2),
      O => \y1__62_carry_i_4_n_0\
    );
\y1__62_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699669566996699"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(4),
      I3 => y3(2),
      I4 => y3(3),
      I5 => y3(7),
      O => \y1__62_carry_i_5_n_0\
    );
\y1__62_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557557AAAA8AA8"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => x(0),
      I3 => \^q\(0),
      I4 => y3(4),
      I5 => y3(5),
      O => \y1__62_carry_i_6_n_0\
    );
y1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y1_carry_n_0,
      CO(2) => y1_carry_n_1,
      CO(1) => y1_carry_n_2,
      CO(0) => y1_carry_n_3,
      CYINIT => '1',
      DI(3) => y3(2),
      DI(2 downto 0) => B"000",
      O(3) => y1_carry_n_4,
      O(2 downto 0) => NLW_y1_carry_O_UNCONNECTED(2 downto 0),
      S(3) => y1_carry_i_2_n_0,
      S(2) => y1_carry_i_3_n_0,
      S(1) => y1_carry_i_4_n_0,
      S(0) => y1_carry_i_5_n_0
    );
\y1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y1_carry_n_0,
      CO(3) => \y1_carry__0_n_0\,
      CO(2) => \y1_carry__0_n_1\,
      CO(1) => \y1_carry__0_n_2\,
      CO(0) => \y1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y1_carry__0_i_1_n_0\,
      DI(2) => \y1_carry__0_i_2_n_0\,
      DI(1) => \y1_carry__0_i_3_n_0\,
      DI(0) => \y1_carry__0_i_4_n_0\,
      O(3) => \y1_carry__0_n_4\,
      O(2) => \y1_carry__0_n_5\,
      O(1) => \y1_carry__0_n_6\,
      O(0) => \y1_carry__0_n_7\,
      S(3) => \y1_carry__0_i_5_n_0\,
      S(2) => \y1_carry__0_i_6_n_0\,
      S(1) => \y1_carry__0_i_7_n_0\,
      S(0) => \y1_carry__0_i_8_n_0\
    );
\y1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557AAAAAAA8"
    )
        port map (
      I0 => y3(7),
      I1 => y3(4),
      I2 => y3(2),
      I3 => y3(3),
      I4 => y3(5),
      I5 => y3(6),
      O => \y1_carry__0_i_1_n_0\
    );
\y1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557557AAAA8AA8"
    )
        port map (
      I0 => y3(7),
      I1 => y3(3),
      I2 => x(0),
      I3 => \^q\(0),
      I4 => y3(4),
      I5 => y3(5),
      O => \y1_carry__0_i_2_n_0\
    );
\y1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55D7AA28"
    )
        port map (
      I0 => y3(7),
      I1 => \^q\(0),
      I2 => x(0),
      I3 => y3(3),
      I4 => y3(4),
      O => \y1_carry__0_i_3_n_0\
    );
\y1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => x(0),
      I1 => \^q\(0),
      I2 => y3(7),
      I3 => y3(3),
      O => \y1_carry__0_i_4_n_0\
    );
\y1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555555"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(3),
      I3 => y3(2),
      I4 => y3(4),
      I5 => y3(7),
      O => \y1_carry__0_i_5_n_0\
    );
\y1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9AA955555555"
    )
        port map (
      I0 => y3(5),
      I1 => y3(4),
      I2 => \^q\(0),
      I3 => x(0),
      I4 => y3(3),
      I5 => y3(7),
      O => \y1_carry__0_i_6_n_0\
    );
\y1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9A855555555"
    )
        port map (
      I0 => y3(4),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(5),
      I4 => y3(6),
      I5 => y3(7),
      O => \y1_carry__0_i_7_n_0\
    );
\y1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55AA559A5A5A5A5"
    )
        port map (
      I0 => y3(6),
      I1 => y3(5),
      I2 => y3(3),
      I3 => y3(2),
      I4 => y3(4),
      I5 => y3(7),
      O => \y1_carry__0_i_8_n_0\
    );
\y1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_y1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y1_carry__1_n_2\,
      CO(0) => \NLW_y1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y1_carry__1_i_1_n_0\,
      O(3 downto 1) => \NLW_y1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \y1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \y1_carry__1_i_2_n_0\
    );
\y1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => y3(4),
      I1 => y3(2),
      I2 => y3(3),
      I3 => y3(5),
      I4 => y3(6),
      I5 => y3(7),
      O => \y1_carry__1_i_1_n_0\
    );
\y1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => y3(7),
      I1 => y3(6),
      I2 => y3(5),
      I3 => y3(3),
      I4 => y3(2),
      I5 => y3(4),
      O => \y1_carry__1_i_2_n_0\
    );
y1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(0),
      I1 => \^q\(0),
      O => y3(2)
    );
y1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55A95595AA55AA5"
    )
        port map (
      I0 => y3(5),
      I1 => y3(4),
      I2 => \^q\(0),
      I3 => x(0),
      I4 => y3(3),
      I5 => y3(7),
      O => y1_carry_i_2_n_0
    );
y1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA95555"
    )
        port map (
      I0 => y3(4),
      I1 => y3(3),
      I2 => x(0),
      I3 => \^q\(0),
      I4 => y3(7),
      O => y1_carry_i_3_n_0
    );
y1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5995"
    )
        port map (
      I0 => y3(3),
      I1 => y3(7),
      I2 => \^q\(0),
      I3 => x(0),
      O => y1_carry_i_4_n_0
    );
y1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => x(0),
      O => y1_carry_i_5_n_0
    );
y3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y3_carry_n_0,
      CO(2) => y3_carry_n_1,
      CO(1) => y3_carry_n_2,
      CO(0) => y3_carry_n_3,
      CYINIT => '0',
      DI(3) => \y4__0_carry_n_7\,
      DI(2 downto 0) => x(2 downto 0),
      O(3 downto 1) => y3(5 downto 3),
      O(0) => NLW_y3_carry_O_UNCONNECTED(0),
      S(3) => y3_carry_i_1_n_0,
      S(2) => y3_carry_i_2_n_0,
      S(1) => y3_carry_i_3_n_0,
      S(0) => y3_carry_i_4_n_0
    );
\y3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y3_carry_n_0,
      CO(3 downto 1) => \NLW_y3_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y4__0_carry_n_6\,
      O(3 downto 2) => \NLW_y3_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => y3(7 downto 6),
      S(3 downto 2) => B"00",
      S(1) => \y3_carry__0_i_1_n_0\,
      S(0) => \y3_carry__0_i_2_n_0\
    );
\y3_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \y4__0_carry_n_5\,
      I1 => \^q\(5),
      I2 => \^q\(0),
      O => \y3_carry__0_i_1_n_0\
    );
\y3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y4__0_carry_n_6\,
      I1 => \^q\(4),
      O => \y3_carry__0_i_2_n_0\
    );
y3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y4__0_carry_n_7\,
      I1 => \^q\(3),
      O => y3_carry_i_1_n_0
    );
y3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(2),
      I1 => \^q\(2),
      O => y3_carry_i_2_n_0
    );
y3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(1),
      I1 => \^q\(1),
      O => y3_carry_i_3_n_0
    );
y3_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(0),
      I1 => \^q\(0),
      O => y3_carry_i_4_n_0
    );
\y4__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_y4__0_carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y4__0_carry_n_2\,
      CO(0) => \y4__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \y4__0_carry_i_1_n_0\,
      DI(0) => '0',
      O(3) => \NLW_y4__0_carry_O_UNCONNECTED\(3),
      O(2) => \y4__0_carry_n_5\,
      O(1) => \y4__0_carry_n_6\,
      O(0) => \y4__0_carry_n_7\,
      S(3) => '0',
      S(2) => \y4__0_carry_i_2_n_0\,
      S(1) => \y4__0_carry_i_3_n_0\,
      S(0) => \y4__0_carry_i_4_n_0\
    );
\y4__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => x(3),
      I1 => x(0),
      O => \y4__0_carry_i_1_n_0\
    );
\y4__0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => x(2),
      I1 => x(5),
      I2 => x(0),
      I3 => x(1),
      I4 => x(4),
      O => \y4__0_carry_i_2_n_0\
    );
\y4__0_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => x(0),
      I1 => x(3),
      I2 => x(1),
      I3 => x(4),
      O => \y4__0_carry_i_3_n_0\
    );
\y4__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(3),
      I1 => x(0),
      O => \y4__0_carry_i_4_n_0\
    );
\y[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \y1__100_carry__5_n_4\,
      I1 => \y1__369_carry__6_n_3\,
      I2 => \y1__296_carry__5_n_7\,
      I3 => \y1__426_carry_n_7\,
      O => y10_in(0)
    );
\y[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77775FA088885FA0"
    )
        port map (
      I0 => y3(7),
      I1 => \y1__100_carry__5_n_4\,
      I2 => \y1__426_carry_n_7\,
      I3 => \y1__426_carry_n_6\,
      I4 => \y[7]_i_4_n_0\,
      I5 => \y1__100_carry__6_n_7\,
      O => B(1)
    );
\y[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD2222222D2"
    )
        port map (
      I0 => y3(7),
      I1 => \y[2]_i_2_n_0\,
      I2 => \y1__426_carry_n_5\,
      I3 => \y1__296_carry__5_n_7\,
      I4 => \y1__369_carry__6_n_3\,
      I5 => \y1__100_carry__6_n_6\,
      O => B(2)
    );
\y[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000533333305"
    )
        port map (
      I0 => \y1__426_carry_n_7\,
      I1 => \y1__100_carry__5_n_4\,
      I2 => \y1__426_carry_n_6\,
      I3 => \y1__296_carry__5_n_7\,
      I4 => \y1__369_carry__6_n_3\,
      I5 => \y1__100_carry__6_n_7\,
      O => \y[2]_i_2_n_0\
    );
\y[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD2222222D2"
    )
        port map (
      I0 => y3(7),
      I1 => \y[3]_i_2_n_0\,
      I2 => \y1__426_carry_n_4\,
      I3 => \y1__296_carry__5_n_7\,
      I4 => \y1__369_carry__6_n_3\,
      I5 => \y1__100_carry__6_n_5\,
      O => B(3)
    );
\y[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => \y1__100_carry__6_n_7\,
      I1 => \y1__426_carry_n_6\,
      I2 => y10_in(0),
      I3 => \y1__426_carry_n_5\,
      I4 => \y[7]_i_4_n_0\,
      I5 => \y1__100_carry__6_n_6\,
      O => \y[3]_i_2_n_0\
    );
\y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD2222222D2"
    )
        port map (
      I0 => y3(7),
      I1 => \y[4]_i_2_n_0\,
      I2 => \y1__426_carry__0_n_7\,
      I3 => \y1__296_carry__5_n_7\,
      I4 => \y1__369_carry__6_n_3\,
      I5 => \y1__100_carry__6_n_4\,
      O => B(4)
    );
\y[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      I1 => \y1__426_carry_n_5\,
      I2 => \y[2]_i_2_n_0\,
      I3 => \y1__426_carry_n_4\,
      I4 => \y[7]_i_4_n_0\,
      I5 => \y1__100_carry__6_n_5\,
      O => \y[4]_i_2_n_0\
    );
\y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD2222222D2"
    )
        port map (
      I0 => y3(7),
      I1 => \y[5]_i_2_n_0\,
      I2 => \y1__426_carry__0_n_6\,
      I3 => \y1__296_carry__5_n_7\,
      I4 => \y1__369_carry__6_n_3\,
      I5 => \y1__100_carry__7_n_7\,
      O => B(5)
    );
\y[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => y10_in(3),
      I1 => \y[2]_i_2_n_0\,
      I2 => \y1__426_carry_n_5\,
      I3 => \y[7]_i_4_n_0\,
      I4 => \y1__100_carry__6_n_6\,
      I5 => y10_in(4),
      O => \y[5]_i_2_n_0\
    );
\y[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD2222222D2"
    )
        port map (
      I0 => y3(7),
      I1 => \y[7]_i_2_n_0\,
      I2 => \y1__426_carry__0_n_5\,
      I3 => \y1__296_carry__5_n_7\,
      I4 => \y1__369_carry__6_n_3\,
      I5 => \y1__100_carry__7_n_6\,
      O => B(6)
    );
\y[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5DA2A2A25DA2"
    )
        port map (
      I0 => y3(7),
      I1 => \y[7]_i_2_n_0\,
      I2 => y10_in(6),
      I3 => \y1__426_carry__0_n_4\,
      I4 => \y[7]_i_4_n_0\,
      I5 => \y1__100_carry__7_n_5\,
      O => B(7)
    );
\y[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => y10_in(4),
      I1 => y10_in(2),
      I2 => \y[2]_i_2_n_0\,
      I3 => y10_in(3),
      I4 => y10_in(5),
      O => \y[7]_i_2_n_0\
    );
\y[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \y1__100_carry__7_n_6\,
      I1 => \y1__369_carry__6_n_3\,
      I2 => \y1__296_carry__5_n_7\,
      I3 => \y1__426_carry__0_n_5\,
      O => y10_in(6)
    );
\y[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \y1__369_carry__6_n_3\,
      I1 => \y1__296_carry__5_n_7\,
      O => \y[7]_i_4_n_0\
    );
\y[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \y1__100_carry__6_n_4\,
      I1 => \y1__369_carry__6_n_3\,
      I2 => \y1__296_carry__5_n_7\,
      I3 => \y1__426_carry__0_n_7\,
      O => y10_in(4)
    );
\y[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \y1__100_carry__6_n_6\,
      I1 => \y1__369_carry__6_n_3\,
      I2 => \y1__296_carry__5_n_7\,
      I3 => \y1__426_carry_n_5\,
      O => y10_in(2)
    );
\y[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \y1__100_carry__6_n_5\,
      I1 => \y1__369_carry__6_n_3\,
      I2 => \y1__296_carry__5_n_7\,
      I3 => \y1__426_carry_n_4\,
      O => y10_in(3)
    );
\y[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \y1__100_carry__7_n_7\,
      I1 => \y1__369_carry__6_n_3\,
      I2 => \y1__296_carry__5_n_7\,
      I3 => \y1__426_carry__0_n_6\,
      O => y10_in(5)
    );
\y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => y10_in(0),
      Q => \^q\(0),
      R => '0'
    );
\y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(1),
      Q => \^q\(1),
      R => '0'
    );
\y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(2),
      Q => \^q\(2),
      R => '0'
    );
\y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(3),
      Q => \^q\(3),
      R => '0'
    );
\y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(4),
      Q => \^q\(4),
      R => '0'
    );
\y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(5),
      Q => \^q\(5),
      R => '0'
    );
\y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(6),
      Q => \^q\(6),
      R => '0'
    );
\y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => B(7),
      Q => \^q\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lp_filter_2_0_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_lp_filter_2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_lp_filter_2_0_0 : entity is "design_1_lp_filter_2_0_0,lp_filter_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_lp_filter_2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_lp_filter_2_0_0 : entity is "lp_filter_2,Vivado 2016.3";
end design_1_lp_filter_2_0_0;

architecture STRUCTURE of design_1_lp_filter_2_0_0 is
begin
inst: entity work.design_1_lp_filter_2_0_0_lp_filter_2
     port map (
      Q(7 downto 0) => y(7 downto 0),
      clk => clk,
      x(5 downto 0) => x(5 downto 0)
    );
end STRUCTURE;
