-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Wed Aug 09 14:27:31 2023
-- Host        : XPS-13-9310 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/roysi/Files/URSS/Verilog/Practice/Practice.srcs/sources_1/bd/design_1/ip/design_1_zero_detector_0_0/design_1_zero_detector_0_0_sim_netlist.vhdl
-- Design      : design_1_zero_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_zero_detector_0_0_zero_detector is
  port (
    sign : out STD_LOGIC_VECTOR ( 0 to 0 );
    last_sign : out STD_LOGIC_VECTOR ( 0 to 0 );
    y : out STD_LOGIC_VECTOR ( 0 to 0 );
    x : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_zero_detector_0_0_zero_detector : entity is "zero_detector";
end design_1_zero_detector_0_0_zero_detector;

architecture STRUCTURE of design_1_zero_detector_0_0_zero_detector is
  signal \^last_sign\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sign\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  last_sign(0) <= \^last_sign\(0);
  sign(0) <= \^sign\(0);
\last_sign_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sign\(0),
      Q => \^last_sign\(0),
      R => '0'
    );
\sign_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => x(0),
      Q => \^sign\(0),
      R => '0'
    );
\y[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sign\(0),
      I1 => \^last_sign\(0),
      O => y(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_zero_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 0 to 0 );
    sign : out STD_LOGIC_VECTOR ( 0 to 0 );
    last_sign : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_zero_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_zero_detector_0_0 : entity is "design_1_zero_detector_0_0,zero_detector,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_zero_detector_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_zero_detector_0_0 : entity is "zero_detector,Vivado 2016.3";
end design_1_zero_detector_0_0;

architecture STRUCTURE of design_1_zero_detector_0_0 is
begin
inst: entity work.design_1_zero_detector_0_0_zero_detector
     port map (
      clk => clk,
      last_sign(0) => last_sign(0),
      sign(0) => sign(0),
      x(0) => x(7),
      y(0) => y(0)
    );
end STRUCTURE;
