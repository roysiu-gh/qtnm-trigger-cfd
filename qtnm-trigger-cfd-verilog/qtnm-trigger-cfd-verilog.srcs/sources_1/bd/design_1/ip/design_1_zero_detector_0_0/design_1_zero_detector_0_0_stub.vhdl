-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Sat Aug 12 16:28:19 2023
-- Host        : XPS-13-9310 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/roysi/Files/URSS/Verilog/Practice/Practice.srcs/sources_1/bd/design_1/ip/design_1_zero_detector_0_0/design_1_zero_detector_0_0_stub.vhdl
-- Design      : design_1_zero_detector_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_zero_detector_0_0 is
  Port ( 
    clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC
  );

end design_1_zero_detector_0_0;

architecture stub of design_1_zero_detector_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk[0:0],x[7:0],y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zero_detector,Vivado 2016.3";
begin
end;
