-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Sat Aug 12 16:27:31 2023
-- Host        : XPS-13-9310 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lp_filter_2_0_0_sim_netlist.vhdl
-- Design      : design_1_lp_filter_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lp_filter_2 is
  port (
    y : out STD_LOGIC_VECTOR ( 0 to 0 );
    x : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lp_filter_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lp_filter_2 is
  signal p_0_in0 : STD_LOGIC;
  signal \^y\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \y[7]_i_10_n_0\ : STD_LOGIC;
  signal \y[7]_i_11_n_0\ : STD_LOGIC;
  signal \y[7]_i_12_n_0\ : STD_LOGIC;
  signal \y[7]_i_13_n_0\ : STD_LOGIC;
  signal \y[7]_i_14_n_0\ : STD_LOGIC;
  signal \y[7]_i_15_n_0\ : STD_LOGIC;
  signal \y[7]_i_16_n_0\ : STD_LOGIC;
  signal \y[7]_i_19_n_0\ : STD_LOGIC;
  signal \y[7]_i_20_n_0\ : STD_LOGIC;
  signal \y[7]_i_21_n_0\ : STD_LOGIC;
  signal \y[7]_i_22_n_0\ : STD_LOGIC;
  signal \y[7]_i_23_n_0\ : STD_LOGIC;
  signal \y[7]_i_4_n_0\ : STD_LOGIC;
  signal \y[7]_i_5_n_0\ : STD_LOGIC;
  signal \y[7]_i_7_n_0\ : STD_LOGIC;
  signal \y[7]_i_8_n_0\ : STD_LOGIC;
  signal \y[7]_i_9_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_17_n_7\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_1\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_2\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_3\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_4\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_5\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_6\ : STD_LOGIC;
  signal \y_reg[7]_i_18_n_7\ : STD_LOGIC;
  signal \y_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \y_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \y_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \y_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \y_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \y_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \y_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \y_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \y_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_1\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_2\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_3\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_4\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_5\ : STD_LOGIC;
  signal \y_reg[7]_i_6_n_6\ : STD_LOGIC;
  signal \NLW_y_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_reg[7]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_reg[7]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_reg[7]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  y(0) <= \^y\(0);
\y[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_reg[7]_i_6_n_6\,
      I1 => \^y\(0),
      O => \y[7]_i_10_n_0\
    );
\y[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \y_reg[7]_i_17_n_7\,
      I1 => x(1),
      I2 => x(5),
      I3 => \y_reg[7]_i_18_n_4\,
      I4 => x(0),
      O => \y[7]_i_11_n_0\
    );
\y[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(0),
      I1 => \y_reg[7]_i_18_n_4\,
      I2 => x(4),
      O => \y[7]_i_12_n_0\
    );
\y[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(3),
      I1 => \y_reg[7]_i_18_n_5\,
      O => \y[7]_i_13_n_0\
    );
\y[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(2),
      I1 => \y_reg[7]_i_18_n_6\,
      O => \y[7]_i_14_n_0\
    );
\y[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(1),
      I1 => \y_reg[7]_i_18_n_7\,
      O => \y[7]_i_15_n_0\
    );
\y[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(0),
      O => \y[7]_i_16_n_0\
    );
\y[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => x(1),
      I1 => x(4),
      O => \y[7]_i_19_n_0\
    );
\y[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => x(0),
      I1 => x(3),
      O => \y[7]_i_20_n_0\
    );
\y[7]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x(2),
      O => \y[7]_i_21_n_0\
    );
\y[7]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x(1),
      O => \y[7]_i_22_n_0\
    );
\y[7]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(0),
      O => \y[7]_i_23_n_0\
    );
\y[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_reg[7]_i_3_n_5\,
      O => \y[7]_i_4_n_0\
    );
\y[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_reg[7]_i_3_n_6\,
      I1 => \^y\(0),
      O => \y[7]_i_5_n_0\
    );
\y[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_reg[7]_i_3_n_7\,
      I1 => \^y\(0),
      O => \y[7]_i_7_n_0\
    );
\y[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_reg[7]_i_6_n_4\,
      I1 => \^y\(0),
      O => \y[7]_i_8_n_0\
    );
\y[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_reg[7]_i_6_n_5\,
      I1 => \^y\(0),
      O => \y[7]_i_9_n_0\
    );
\y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk(0),
      CE => '1',
      D => p_0_in0,
      Q => \^y\(0),
      R => '0'
    );
\y_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg[7]_i_2_n_0\,
      CO(3 downto 1) => \NLW_y_reg[7]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y_reg[7]_i_3_n_6\,
      O(3 downto 2) => \NLW_y_reg[7]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => p_0_in0,
      O(0) => \NLW_y_reg[7]_i_1_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \y[7]_i_4_n_0\,
      S(0) => \y[7]_i_5_n_0\
    );
\y_reg[7]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg[7]_i_18_n_0\,
      CO(3 downto 0) => \NLW_y_reg[7]_i_17_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_reg[7]_i_17_O_UNCONNECTED\(3 downto 1),
      O(0) => \y_reg[7]_i_17_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \y[7]_i_19_n_0\
    );
\y_reg[7]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_reg[7]_i_18_n_0\,
      CO(2) => \y_reg[7]_i_18_n_1\,
      CO(1) => \y_reg[7]_i_18_n_2\,
      CO(0) => \y_reg[7]_i_18_n_3\,
      CYINIT => '0',
      DI(3) => x(0),
      DI(2 downto 0) => B"001",
      O(3) => \y_reg[7]_i_18_n_4\,
      O(2) => \y_reg[7]_i_18_n_5\,
      O(1) => \y_reg[7]_i_18_n_6\,
      O(0) => \y_reg[7]_i_18_n_7\,
      S(3) => \y[7]_i_20_n_0\,
      S(2) => \y[7]_i_21_n_0\,
      S(1) => \y[7]_i_22_n_0\,
      S(0) => \y[7]_i_23_n_0\
    );
\y_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_reg[7]_i_2_n_0\,
      CO(2) => \y_reg[7]_i_2_n_1\,
      CO(1) => \y_reg[7]_i_2_n_2\,
      CO(0) => \y_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \y_reg[7]_i_3_n_7\,
      DI(2) => \y_reg[7]_i_6_n_4\,
      DI(1) => \y_reg[7]_i_6_n_5\,
      DI(0) => \y_reg[7]_i_6_n_6\,
      O(3 downto 0) => \NLW_y_reg[7]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \y[7]_i_7_n_0\,
      S(2) => \y[7]_i_8_n_0\,
      S(1) => \y[7]_i_9_n_0\,
      S(0) => \y[7]_i_10_n_0\
    );
\y_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg[7]_i_6_n_0\,
      CO(3 downto 2) => \NLW_y_reg[7]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_reg[7]_i_3_n_2\,
      CO(0) => \y_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => x(4 downto 3),
      O(3) => \NLW_y_reg[7]_i_3_O_UNCONNECTED\(3),
      O(2) => \y_reg[7]_i_3_n_5\,
      O(1) => \y_reg[7]_i_3_n_6\,
      O(0) => \y_reg[7]_i_3_n_7\,
      S(3) => '0',
      S(2) => \y[7]_i_11_n_0\,
      S(1) => \y[7]_i_12_n_0\,
      S(0) => \y[7]_i_13_n_0\
    );
\y_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_reg[7]_i_6_n_0\,
      CO(2) => \y_reg[7]_i_6_n_1\,
      CO(1) => \y_reg[7]_i_6_n_2\,
      CO(0) => \y_reg[7]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => x(2 downto 0),
      DI(0) => '0',
      O(3) => \y_reg[7]_i_6_n_4\,
      O(2) => \y_reg[7]_i_6_n_5\,
      O(1) => \y_reg[7]_i_6_n_6\,
      O(0) => \NLW_y_reg[7]_i_6_O_UNCONNECTED\(0),
      S(3) => \y[7]_i_14_n_0\,
      S(2) => \y[7]_i_15_n_0\,
      S(1) => \y[7]_i_16_n_0\,
      S(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_lp_filter_2_0_0,lp_filter_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "lp_filter_2,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^y\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  y(7) <= \^y\(7);
  y(6) <= \^y\(7);
  y(5) <= \^y\(7);
  y(4) <= \^y\(7);
  y(3) <= \^y\(7);
  y(2) <= \^y\(7);
  y(1) <= \^y\(7);
  y(0) <= \^y\(7);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lp_filter_2
     port map (
      clk(0) => clk(0),
      x(5 downto 0) => x(5 downto 0),
      y(0) => \^y\(7)
    );
end STRUCTURE;
