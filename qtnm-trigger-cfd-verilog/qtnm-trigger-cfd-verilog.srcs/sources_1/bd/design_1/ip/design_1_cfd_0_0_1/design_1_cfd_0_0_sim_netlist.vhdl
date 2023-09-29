-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Sat Aug 12 16:27:05 2023
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
    y : out STD_LOGIC_VECTOR ( 7 downto 0 );
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cfd_0_0_cfd : entity is "cfd";
end design_1_cfd_0_0_cfd;

architecture STRUCTURE of design_1_cfd_0_0_cfd is
  signal \buffer_reg[31][2]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[31][3]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[31][4]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[32][0]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[32][1]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[63][2]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[63][3]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[63][4]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[64][0]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[64][1]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[95][2]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[95][3]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[95][4]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[96][0]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[96][1]_srl32_n_1\ : STD_LOGIC;
  signal \buffer_reg[98][0]_srl2_n_0\ : STD_LOGIC;
  signal \buffer_reg[98][1]_srl2_n_0\ : STD_LOGIC;
  signal \buffer_reg[98][2]_srl3_n_0\ : STD_LOGIC;
  signal \buffer_reg[98][3]_srl3_n_0\ : STD_LOGIC;
  signal \buffer_reg[98][4]_srl3_n_0\ : STD_LOGIC;
  signal \buffer_reg[99]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^y\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal y0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \y0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y0_carry__0_n_3\ : STD_LOGIC;
  signal y0_carry_i_1_n_0 : STD_LOGIC;
  signal y0_carry_i_2_n_0 : STD_LOGIC;
  signal y0_carry_i_3_n_0 : STD_LOGIC;
  signal y0_carry_i_4_n_0 : STD_LOGIC;
  signal y0_carry_n_0 : STD_LOGIC;
  signal y0_carry_n_1 : STD_LOGIC;
  signal y0_carry_n_2 : STD_LOGIC;
  signal y0_carry_n_3 : STD_LOGIC;
  signal \NLW_buffer_reg[31][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[31][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[31][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[32][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[32][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[63][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[63][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[63][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[64][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[64][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[95][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[95][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[95][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[96][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_reg[96][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_y0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \buffer_reg[31][2]_srl32\ : label is "\inst/buffer_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \buffer_reg[31][2]_srl32\ : label is "\inst/buffer_reg[31][2]_srl32 ";
  attribute srl_bus_name of \buffer_reg[31][3]_srl32\ : label is "\inst/buffer_reg[31] ";
  attribute srl_name of \buffer_reg[31][3]_srl32\ : label is "\inst/buffer_reg[31][3]_srl32 ";
  attribute srl_bus_name of \buffer_reg[31][4]_srl32\ : label is "\inst/buffer_reg[31] ";
  attribute srl_name of \buffer_reg[31][4]_srl32\ : label is "\inst/buffer_reg[31][4]_srl32 ";
  attribute srl_bus_name of \buffer_reg[32][0]_srl32\ : label is "\inst/buffer_reg[32] ";
  attribute srl_name of \buffer_reg[32][0]_srl32\ : label is "\inst/buffer_reg[32][0]_srl32 ";
  attribute srl_bus_name of \buffer_reg[32][1]_srl32\ : label is "\inst/buffer_reg[32] ";
  attribute srl_name of \buffer_reg[32][1]_srl32\ : label is "\inst/buffer_reg[32][1]_srl32 ";
  attribute srl_bus_name of \buffer_reg[63][2]_srl32\ : label is "\inst/buffer_reg[63] ";
  attribute srl_name of \buffer_reg[63][2]_srl32\ : label is "\inst/buffer_reg[63][2]_srl32 ";
  attribute srl_bus_name of \buffer_reg[63][3]_srl32\ : label is "\inst/buffer_reg[63] ";
  attribute srl_name of \buffer_reg[63][3]_srl32\ : label is "\inst/buffer_reg[63][3]_srl32 ";
  attribute srl_bus_name of \buffer_reg[63][4]_srl32\ : label is "\inst/buffer_reg[63] ";
  attribute srl_name of \buffer_reg[63][4]_srl32\ : label is "\inst/buffer_reg[63][4]_srl32 ";
  attribute srl_bus_name of \buffer_reg[64][0]_srl32\ : label is "\inst/buffer_reg[64] ";
  attribute srl_name of \buffer_reg[64][0]_srl32\ : label is "\inst/buffer_reg[64][0]_srl32 ";
  attribute srl_bus_name of \buffer_reg[64][1]_srl32\ : label is "\inst/buffer_reg[64] ";
  attribute srl_name of \buffer_reg[64][1]_srl32\ : label is "\inst/buffer_reg[64][1]_srl32 ";
  attribute srl_bus_name of \buffer_reg[95][2]_srl32\ : label is "\inst/buffer_reg[95] ";
  attribute srl_name of \buffer_reg[95][2]_srl32\ : label is "\inst/buffer_reg[95][2]_srl32 ";
  attribute srl_bus_name of \buffer_reg[95][3]_srl32\ : label is "\inst/buffer_reg[95] ";
  attribute srl_name of \buffer_reg[95][3]_srl32\ : label is "\inst/buffer_reg[95][3]_srl32 ";
  attribute srl_bus_name of \buffer_reg[95][4]_srl32\ : label is "\inst/buffer_reg[95] ";
  attribute srl_name of \buffer_reg[95][4]_srl32\ : label is "\inst/buffer_reg[95][4]_srl32 ";
  attribute srl_bus_name of \buffer_reg[96][0]_srl32\ : label is "\inst/buffer_reg[96] ";
  attribute srl_name of \buffer_reg[96][0]_srl32\ : label is "\inst/buffer_reg[96][0]_srl32 ";
  attribute srl_bus_name of \buffer_reg[96][1]_srl32\ : label is "\inst/buffer_reg[96] ";
  attribute srl_name of \buffer_reg[96][1]_srl32\ : label is "\inst/buffer_reg[96][1]_srl32 ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \buffer_reg[98][0]_srl2\ : label is "SRLC32E";
  attribute srl_bus_name of \buffer_reg[98][0]_srl2\ : label is "\inst/buffer_reg[98] ";
  attribute srl_name of \buffer_reg[98][0]_srl2\ : label is "\inst/buffer_reg[98][0]_srl2 ";
  attribute XILINX_LEGACY_PRIM of \buffer_reg[98][1]_srl2\ : label is "SRLC32E";
  attribute srl_bus_name of \buffer_reg[98][1]_srl2\ : label is "\inst/buffer_reg[98] ";
  attribute srl_name of \buffer_reg[98][1]_srl2\ : label is "\inst/buffer_reg[98][1]_srl2 ";
  attribute XILINX_LEGACY_PRIM of \buffer_reg[98][2]_srl3\ : label is "SRLC32E";
  attribute srl_bus_name of \buffer_reg[98][2]_srl3\ : label is "\inst/buffer_reg[98] ";
  attribute srl_name of \buffer_reg[98][2]_srl3\ : label is "\inst/buffer_reg[98][2]_srl3 ";
  attribute XILINX_LEGACY_PRIM of \buffer_reg[98][3]_srl3\ : label is "SRLC32E";
  attribute srl_bus_name of \buffer_reg[98][3]_srl3\ : label is "\inst/buffer_reg[98] ";
  attribute srl_name of \buffer_reg[98][3]_srl3\ : label is "\inst/buffer_reg[98][3]_srl3 ";
  attribute XILINX_LEGACY_PRIM of \buffer_reg[98][4]_srl3\ : label is "SRLC32E";
  attribute srl_bus_name of \buffer_reg[98][4]_srl3\ : label is "\inst/buffer_reg[98] ";
  attribute srl_name of \buffer_reg[98][4]_srl3\ : label is "\inst/buffer_reg[98][4]_srl3 ";
begin
  y(7 downto 0) <= \^y\(7 downto 0);
\buffer_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => x(2),
      Q => \NLW_buffer_reg[31][2]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[31][2]_srl32_n_1\
    );
\buffer_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => x(3),
      Q => \NLW_buffer_reg[31][3]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[31][3]_srl32_n_1\
    );
\buffer_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => x(4),
      Q => \NLW_buffer_reg[31][4]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[31][4]_srl32_n_1\
    );
\buffer_reg[32][0]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \^y\(0),
      Q => \NLW_buffer_reg[32][0]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[32][0]_srl32_n_1\
    );
\buffer_reg[32][1]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \^y\(1),
      Q => \NLW_buffer_reg[32][1]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[32][1]_srl32_n_1\
    );
\buffer_reg[63][2]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[31][2]_srl32_n_1\,
      Q => \NLW_buffer_reg[63][2]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[63][2]_srl32_n_1\
    );
\buffer_reg[63][3]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[31][3]_srl32_n_1\,
      Q => \NLW_buffer_reg[63][3]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[63][3]_srl32_n_1\
    );
\buffer_reg[63][4]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[31][4]_srl32_n_1\,
      Q => \NLW_buffer_reg[63][4]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[63][4]_srl32_n_1\
    );
\buffer_reg[64][0]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[32][0]_srl32_n_1\,
      Q => \NLW_buffer_reg[64][0]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[64][0]_srl32_n_1\
    );
\buffer_reg[64][1]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[32][1]_srl32_n_1\,
      Q => \NLW_buffer_reg[64][1]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[64][1]_srl32_n_1\
    );
\buffer_reg[95][2]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[63][2]_srl32_n_1\,
      Q => \NLW_buffer_reg[95][2]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[95][2]_srl32_n_1\
    );
\buffer_reg[95][3]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[63][3]_srl32_n_1\,
      Q => \NLW_buffer_reg[95][3]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[95][3]_srl32_n_1\
    );
\buffer_reg[95][4]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[63][4]_srl32_n_1\,
      Q => \NLW_buffer_reg[95][4]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[95][4]_srl32_n_1\
    );
\buffer_reg[96][0]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[64][0]_srl32_n_1\,
      Q => \NLW_buffer_reg[96][0]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[96][0]_srl32_n_1\
    );
\buffer_reg[96][1]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => clk,
      D => \buffer_reg[64][1]_srl32_n_1\,
      Q => \NLW_buffer_reg[96][1]_srl32_Q_UNCONNECTED\,
      Q31 => \buffer_reg[96][1]_srl32_n_1\
    );
\buffer_reg[98][0]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buffer_reg[96][0]_srl32_n_1\,
      Q => \buffer_reg[98][0]_srl2_n_0\
    );
\buffer_reg[98][1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buffer_reg[96][1]_srl32_n_1\,
      Q => \buffer_reg[98][1]_srl2_n_0\
    );
\buffer_reg[98][2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buffer_reg[95][2]_srl32_n_1\,
      Q => \buffer_reg[98][2]_srl3_n_0\
    );
\buffer_reg[98][3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buffer_reg[95][3]_srl32_n_1\,
      Q => \buffer_reg[98][3]_srl3_n_0\
    );
\buffer_reg[98][4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buffer_reg[95][4]_srl32_n_1\,
      Q => \buffer_reg[98][4]_srl3_n_0\
    );
\buffer_reg[99][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buffer_reg[98][0]_srl2_n_0\,
      Q => \buffer_reg[99]\(0),
      R => '0'
    );
\buffer_reg[99][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buffer_reg[98][1]_srl2_n_0\,
      Q => \buffer_reg[99]\(1),
      R => '0'
    );
\buffer_reg[99][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buffer_reg[98][2]_srl3_n_0\,
      Q => \buffer_reg[99]\(2),
      R => '0'
    );
\buffer_reg[99][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buffer_reg[98][3]_srl3_n_0\,
      Q => \buffer_reg[99]\(3),
      R => '0'
    );
\buffer_reg[99][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buffer_reg[98][4]_srl3_n_0\,
      Q => \buffer_reg[99]\(4),
      R => '0'
    );
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
      O(3 downto 0) => y0(5 downto 2),
      S(3) => y0_carry_i_1_n_0,
      S(2) => y0_carry_i_2_n_0,
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
      O(1 downto 0) => y0(7 downto 6),
      S(3 downto 2) => B"00",
      S(1) => \y0_carry__0_i_1_n_0\,
      S(0) => \y0_carry__0_i_2_n_0\
    );
\y0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => x(7),
      I1 => \buffer_reg[99]\(4),
      I2 => \buffer_reg[99]\(2),
      I3 => \buffer_reg[99]\(0),
      I4 => \buffer_reg[99]\(1),
      I5 => \buffer_reg[99]\(3),
      O => \y0_carry__0_i_1_n_0\
    );
\y0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => x(6),
      I1 => \buffer_reg[99]\(3),
      I2 => \buffer_reg[99]\(1),
      I3 => \buffer_reg[99]\(0),
      I4 => \buffer_reg[99]\(2),
      O => \y0_carry__0_i_2_n_0\
    );
y0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => x(5),
      I1 => \buffer_reg[99]\(2),
      I2 => \buffer_reg[99]\(0),
      I3 => \buffer_reg[99]\(1),
      O => y0_carry_i_1_n_0
    );
y0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(4),
      I1 => \buffer_reg[99]\(1),
      I2 => \buffer_reg[99]\(0),
      O => y0_carry_i_2_n_0
    );
y0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(3),
      I1 => \buffer_reg[99]\(0),
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
\y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => x(0),
      Q => \^y\(0),
      R => '0'
    );
\y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => x(1),
      Q => \^y\(1),
      R => '0'
    );
\y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y0(2),
      Q => \^y\(2),
      R => '0'
    );
\y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y0(3),
      Q => \^y\(3),
      R => '0'
    );
\y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y0(4),
      Q => \^y\(4),
      R => '0'
    );
\y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y0(5),
      Q => \^y\(5),
      R => '0'
    );
\y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y0(6),
      Q => \^y\(6),
      R => '0'
    );
\y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y0(7),
      Q => \^y\(7),
      R => '0'
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
begin
inst: entity work.design_1_cfd_0_0_cfd
     port map (
      clk => clk,
      x(7 downto 0) => x(7 downto 0),
      y(7 downto 0) => y(7 downto 0)
    );
end STRUCTURE;
