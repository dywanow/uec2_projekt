-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Jul 19 21:45:58 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_vga_timing_0_0/design_1_vga_timing_0_0_sim_netlist.vhdl
-- Design      : design_1_vga_timing_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vga_timing_0_0_vga_timing is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    hblnk : out STD_LOGIC;
    hsync : out STD_LOGIC;
    vblnk : out STD_LOGIC;
    vsync : out STD_LOGIC;
    rst : in STD_LOGIC;
    pclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vga_timing_0_0_vga_timing : entity is "vga_timing";
end design_1_vga_timing_0_0_vga_timing;

architecture STRUCTURE of design_1_vga_timing_0_0_vga_timing is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal hblnk_INST_0_i_1_n_0 : STD_LOGIC;
  signal hc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \hc_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \hc_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \hc_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \hc_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \hc_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \hc_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \hc_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \hc_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \hc_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \hc_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal hsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal hsync_INST_0_i_2_n_0 : STD_LOGIC;
  signal vblnk_INST_0_i_1_n_0 : STD_LOGIC;
  signal vblnk_INST_0_i_2_n_0 : STD_LOGIC;
  signal vblnk_INST_0_i_3_n_0 : STD_LOGIC;
  signal vc : STD_LOGIC;
  signal \vc0_carry__0_n_0\ : STD_LOGIC;
  signal \vc0_carry__0_n_1\ : STD_LOGIC;
  signal \vc0_carry__0_n_2\ : STD_LOGIC;
  signal \vc0_carry__0_n_3\ : STD_LOGIC;
  signal \vc0_carry__0_n_4\ : STD_LOGIC;
  signal \vc0_carry__0_n_5\ : STD_LOGIC;
  signal \vc0_carry__0_n_6\ : STD_LOGIC;
  signal \vc0_carry__0_n_7\ : STD_LOGIC;
  signal \vc0_carry__1_n_2\ : STD_LOGIC;
  signal \vc0_carry__1_n_3\ : STD_LOGIC;
  signal \vc0_carry__1_n_5\ : STD_LOGIC;
  signal \vc0_carry__1_n_6\ : STD_LOGIC;
  signal \vc0_carry__1_n_7\ : STD_LOGIC;
  signal vc0_carry_n_0 : STD_LOGIC;
  signal vc0_carry_n_1 : STD_LOGIC;
  signal vc0_carry_n_2 : STD_LOGIC;
  signal vc0_carry_n_3 : STD_LOGIC;
  signal vc0_carry_n_4 : STD_LOGIC;
  signal vc0_carry_n_5 : STD_LOGIC;
  signal vc0_carry_n_6 : STD_LOGIC;
  signal vc0_carry_n_7 : STD_LOGIC;
  signal \vc[0]_i_1_n_0\ : STD_LOGIC;
  signal \vc[10]_i_1_n_0\ : STD_LOGIC;
  signal \vc[11]_i_2_n_0\ : STD_LOGIC;
  signal \vc[11]_i_3_n_0\ : STD_LOGIC;
  signal \vc[11]_i_4_n_0\ : STD_LOGIC;
  signal \vc[11]_i_5_n_0\ : STD_LOGIC;
  signal \vc[1]_i_1_n_0\ : STD_LOGIC;
  signal \vc[2]_i_1_n_0\ : STD_LOGIC;
  signal \vc[3]_i_1_n_0\ : STD_LOGIC;
  signal \vc[4]_i_1_n_0\ : STD_LOGIC;
  signal \vc[5]_i_1_n_0\ : STD_LOGIC;
  signal \vc[6]_i_1_n_0\ : STD_LOGIC;
  signal \vc[7]_i_1_n_0\ : STD_LOGIC;
  signal \vc[8]_i_1_n_0\ : STD_LOGIC;
  signal \vc[9]_i_1_n_0\ : STD_LOGIC;
  signal \^vcount\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal vsync_INST_0_i_2_n_0 : STD_LOGIC;
  signal \NLW_hc_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hc_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_vc0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_vc0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hc[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hc[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hc[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hc[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hc[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hc[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hc[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hc[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hc[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hc[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of hsync_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of vblnk_INST_0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vc[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vc[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vc[11]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vc[11]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vc[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vc[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vc[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vc[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vc[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vc[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vc[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vc[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vc[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of vsync_INST_0 : label is "soft_lutpair0";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  vcount(11 downto 0) <= \^vcount\(11 downto 0);
hblnk_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300020080000200C"
    )
        port map (
      I0 => hblnk_INST_0_i_1_n_0,
      I1 => \^q\(11),
      I2 => \^q\(10),
      I3 => \^q\(9),
      I4 => \^q\(8),
      I5 => \^q\(7),
      O => hblnk
    );
hblnk_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(9),
      O => hblnk_INST_0_i_1_n_0
    );
\hc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => hc(0)
    );
\hc[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => vc,
      O => hc(10)
    );
\hc[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => vc,
      O => hc(11)
    );
\hc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => vc,
      O => hc(1)
    );
\hc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => vc,
      O => hc(2)
    );
\hc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => vc,
      O => hc(3)
    );
\hc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => vc,
      O => hc(4)
    );
\hc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => vc,
      O => hc(5)
    );
\hc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => vc,
      O => hc(6)
    );
\hc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => vc,
      O => hc(7)
    );
\hc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => vc,
      O => hc(8)
    );
\hc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => vc,
      O => hc(9)
    );
\hc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(0),
      Q => \^q\(0),
      R => rst
    );
\hc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(10),
      Q => \^q\(10),
      R => rst
    );
\hc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(11),
      Q => \^q\(11),
      R => rst
    );
\hc_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hc_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_hc_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hc_reg[11]_i_2_n_2\,
      CO(0) => \hc_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_hc_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => \^q\(11 downto 9)
    );
\hc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(1),
      Q => \^q\(1),
      R => rst
    );
\hc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(2),
      Q => \^q\(2),
      R => rst
    );
\hc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(3),
      Q => \^q\(3),
      R => rst
    );
\hc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(4),
      Q => \^q\(4),
      R => rst
    );
\hc_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hc_reg[4]_i_2_n_0\,
      CO(2) => \hc_reg[4]_i_2_n_1\,
      CO(1) => \hc_reg[4]_i_2_n_2\,
      CO(0) => \hc_reg[4]_i_2_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\hc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(5),
      Q => \^q\(5),
      R => rst
    );
\hc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(6),
      Q => \^q\(6),
      R => rst
    );
\hc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(7),
      Q => \^q\(7),
      R => rst
    );
\hc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(8),
      Q => \^q\(8),
      R => rst
    );
\hc_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hc_reg[4]_i_2_n_0\,
      CO(3) => \hc_reg[8]_i_2_n_0\,
      CO(2) => \hc_reg[8]_i_2_n_1\,
      CO(1) => \hc_reg[8]_i_2_n_2\,
      CO(0) => \hc_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\hc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => hc(9),
      Q => \^q\(9),
      R => rst
    );
hsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080800001"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => hsync_INST_0_i_1_n_0,
      O => hsync
    );
hsync_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF07770772"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(2),
      I5 => hsync_INST_0_i_2_n_0,
      O => hsync_INST_0_i_1_n_0
    );
hsync_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      I2 => \^q\(9),
      O => hsync_INST_0_i_2_n_0
    );
vblnk_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03301131"
    )
        port map (
      I0 => \^vcount\(4),
      I1 => vblnk_INST_0_i_1_n_0,
      I2 => \^vcount\(6),
      I3 => \^vcount\(5),
      I4 => \^vcount\(3),
      O => vblnk
    );
vblnk_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFABABABABABAB"
    )
        port map (
      I0 => vsync_INST_0_i_2_n_0,
      I1 => \^vcount\(4),
      I2 => \^vcount\(6),
      I3 => vblnk_INST_0_i_2_n_0,
      I4 => vblnk_INST_0_i_3_n_0,
      I5 => \^vcount\(5),
      O => vblnk_INST_0_i_1_n_0
    );
vblnk_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^vcount\(3),
      I1 => \^vcount\(2),
      O => vblnk_INST_0_i_2_n_0
    );
vblnk_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^vcount\(1),
      I1 => \^vcount\(0),
      O => vblnk_INST_0_i_3_n_0
    );
vc0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vc0_carry_n_0,
      CO(2) => vc0_carry_n_1,
      CO(1) => vc0_carry_n_2,
      CO(0) => vc0_carry_n_3,
      CYINIT => \^vcount\(0),
      DI(3 downto 0) => B"0000",
      O(3) => vc0_carry_n_4,
      O(2) => vc0_carry_n_5,
      O(1) => vc0_carry_n_6,
      O(0) => vc0_carry_n_7,
      S(3 downto 0) => \^vcount\(4 downto 1)
    );
\vc0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => vc0_carry_n_0,
      CO(3) => \vc0_carry__0_n_0\,
      CO(2) => \vc0_carry__0_n_1\,
      CO(1) => \vc0_carry__0_n_2\,
      CO(0) => \vc0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vc0_carry__0_n_4\,
      O(2) => \vc0_carry__0_n_5\,
      O(1) => \vc0_carry__0_n_6\,
      O(0) => \vc0_carry__0_n_7\,
      S(3 downto 0) => \^vcount\(8 downto 5)
    );
\vc0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vc0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_vc0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \vc0_carry__1_n_2\,
      CO(0) => \vc0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_vc0_carry__1_O_UNCONNECTED\(3),
      O(2) => \vc0_carry__1_n_5\,
      O(1) => \vc0_carry__1_n_6\,
      O(0) => \vc0_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^vcount\(11 downto 9)
    );
\vc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \vc[11]_i_5_n_0\,
      I1 => \^vcount\(0),
      O => \vc[0]_i_1_n_0\
    );
\vc[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__1_n_6\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[10]_i_1_n_0\
    );
\vc[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(7),
      I3 => \^q\(2),
      I4 => \vc[11]_i_3_n_0\,
      I5 => \vc[11]_i_4_n_0\,
      O => vc
    );
\vc[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__1_n_5\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[11]_i_2_n_0\
    );
\vc[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \^q\(5),
      I3 => \^q\(6),
      O => \vc[11]_i_3_n_0\
    );
\vc[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(8),
      I2 => \^q\(11),
      I3 => \^q\(3),
      O => \vc[11]_i_4_n_0\
    );
\vc[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^vcount\(5),
      I1 => \^vcount\(6),
      I2 => \^vcount\(4),
      I3 => vblnk_INST_0_i_2_n_0,
      I4 => vsync_INST_0_i_2_n_0,
      I5 => vblnk_INST_0_i_3_n_0,
      O => \vc[11]_i_5_n_0\
    );
\vc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vc0_carry_n_7,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[1]_i_1_n_0\
    );
\vc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vc0_carry_n_6,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[2]_i_1_n_0\
    );
\vc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vc0_carry_n_5,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[3]_i_1_n_0\
    );
\vc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vc0_carry_n_4,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[4]_i_1_n_0\
    );
\vc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__0_n_7\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[5]_i_1_n_0\
    );
\vc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__0_n_6\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[6]_i_1_n_0\
    );
\vc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__0_n_5\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[7]_i_1_n_0\
    );
\vc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__0_n_4\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[8]_i_1_n_0\
    );
\vc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vc0_carry__1_n_7\,
      I1 => \vc[11]_i_5_n_0\,
      O => \vc[9]_i_1_n_0\
    );
\vc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[0]_i_1_n_0\,
      Q => \^vcount\(0),
      R => rst
    );
\vc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[10]_i_1_n_0\,
      Q => \^vcount\(10),
      R => rst
    );
\vc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[11]_i_2_n_0\,
      Q => \^vcount\(11),
      R => rst
    );
\vc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[1]_i_1_n_0\,
      Q => \^vcount\(1),
      R => rst
    );
\vc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[2]_i_1_n_0\,
      Q => \^vcount\(2),
      R => rst
    );
\vc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[3]_i_1_n_0\,
      Q => \^vcount\(3),
      R => rst
    );
\vc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[4]_i_1_n_0\,
      Q => \^vcount\(4),
      R => rst
    );
\vc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[5]_i_1_n_0\,
      Q => \^vcount\(5),
      R => rst
    );
\vc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[6]_i_1_n_0\,
      Q => \^vcount\(6),
      R => rst
    );
\vc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[7]_i_1_n_0\,
      Q => \^vcount\(7),
      R => rst
    );
\vc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[8]_i_1_n_0\,
      Q => \^vcount\(8),
      R => rst
    );
\vc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => vc,
      D => \vc[9]_i_1_n_0\,
      Q => \^vcount\(9),
      R => rst
    );
vsync_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20002002"
    )
        port map (
      I0 => vsync_INST_0_i_1_n_0,
      I1 => vsync_INST_0_i_2_n_0,
      I2 => \^vcount\(2),
      I3 => \^vcount\(3),
      I4 => \^vcount\(0),
      O => vsync
    );
vsync_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44000002"
    )
        port map (
      I0 => \^vcount\(6),
      I1 => \^vcount\(5),
      I2 => \^vcount\(1),
      I3 => \^vcount\(4),
      I4 => \^vcount\(3),
      O => vsync_INST_0_i_1_n_0
    );
vsync_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \^vcount\(9),
      I1 => \^vcount\(7),
      I2 => \^vcount\(10),
      I3 => \^vcount\(11),
      I4 => \^vcount\(8),
      O => vsync_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vga_timing_0_0 is
  port (
    vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vsync : out STD_LOGIC;
    vblnk : out STD_LOGIC;
    hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    hsync : out STD_LOGIC;
    hblnk : out STD_LOGIC;
    pclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_vga_timing_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vga_timing_0_0 : entity is "design_1_vga_timing_0_0,vga_timing,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_vga_timing_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_vga_timing_0_0 : entity is "vga_timing,Vivado 2017.3";
end design_1_vga_timing_0_0;

architecture STRUCTURE of design_1_vga_timing_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
inst: entity work.design_1_vga_timing_0_0_vga_timing
     port map (
      Q(11 downto 0) => hcount(11 downto 0),
      hblnk => hblnk,
      hsync => hsync,
      pclk => pclk,
      rst => rst,
      vblnk => vblnk,
      vcount(11 downto 0) => vcount(11 downto 0),
      vsync => vsync
    );
end STRUCTURE;
