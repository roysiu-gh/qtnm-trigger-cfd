-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Wed Aug 09 14:27:04 2023
-- Host        : XPS-13-9310 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/roysi/Files/URSS/Verilog/Practice/Practice.srcs/sources_1/bd/design_1/ip/design_1_cfd_0_0_1/design_1_cfd_0_0_sim_netlist.vhdl
-- Design      : design_1_cfd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cfd_0_0_cfd is
  port (
    y : out STD_LOGIC_VECTOR ( 5 downto 0 );
    x : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cfd_0_0_cfd : entity is "cfd";
end design_1_cfd_0_0_cfd;

architecture STRUCTURE of design_1_cfd_0_0_cfd is
  signal \y0_carry__0_n_3\ : STD_LOGIC;
  signal \y0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal y0_carry_i_1_n_0 : STD_LOGIC;
  signal \y0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal y0_carry_i_2_n_0 : STD_LOGIC;
  signal y0_carry_i_3_n_0 : STD_LOGIC;
  signal y0_carry_i_4_n_0 : STD_LOGIC;
  signal y0_carry_n_0 : STD_LOGIC;
  signal y0_carry_n_1 : STD_LOGIC;
  signal y0_carry_n_2 : STD_LOGIC;
  signal y0_carry_n_3 : STD_LOGIC;
  signal \NLW_y0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
y0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y0_carry_n_0,
      CO(2) => y0_carry_n_1,
      CO(1) => y0_carry_n_2,
      CO(0) => y0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => x(5 downto 3),
      DI(0) => '0',
      O(3 downto 0) => y(3 downto 0),
      S(3) => \y0_carry_i_1__0_n_0\,
      S(2) => \y0_carry_i_2__0_n_0\,
      S(1) => y0_carry_i_3_n_0,
      S(0) => y0_carry_i_4_n_0
    );
\y0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y0_carry_n_0,
      CO(3 downto 1) => \NLW_y0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => x(6),
      O(3 downto 2) => \NLW_y0_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => y(5 downto 4),
      S(3 downto 2) => B"00",
      S(1) => y0_carry_i_1_n_0,
      S(0) => y0_carry_i_2_n_0
    );
y0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => x(7),
      I1 => x(4),
      I2 => x(2),
      I3 => x(0),
      I4 => x(1),
      I5 => x(3),
      O => y0_carry_i_1_n_0
    );
\y0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => x(5),
      I1 => x(2),
      I2 => x(0),
      I3 => x(1),
      O => \y0_carry_i_1__0_n_0\
    );
y0_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => x(6),
      I1 => x(3),
      I2 => x(1),
      I3 => x(0),
      I4 => x(2),
      O => y0_carry_i_2_n_0
    );
\y0_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(4),
      I1 => x(1),
      I2 => x(0),
      O => \y0_carry_i_2__0_n_0\
    );
y0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(3),
      I1 => x(0),
      O => y0_carry_i_3_n_0
    );
y0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(2),
      O => y0_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cfd_0_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cfd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cfd_0_0 : entity is "design_1_cfd_0_0,cfd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_cfd_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_cfd_0_0 : entity is "cfd,Vivado 2016.3";
end design_1_cfd_0_0;

architecture STRUCTURE of design_1_cfd_0_0 is
  signal \^x\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^y\ : STD_LOGIC_VECTOR ( 7 downto 2 );
begin
  \^x\(7 downto 0) <= x(7 downto 0);
  y(7 downto 2) <= \^y\(7 downto 2);
  y(1 downto 0) <= \^x\(1 downto 0);
inst: entity work.design_1_cfd_0_0_cfd
     port map (
      x(7 downto 0) => \^x\(7 downto 0),
      y(5 downto 0) => \^y\(7 downto 2)
    );
end STRUCTURE;
