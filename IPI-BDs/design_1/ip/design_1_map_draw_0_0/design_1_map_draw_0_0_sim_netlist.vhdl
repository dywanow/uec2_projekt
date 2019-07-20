-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Jul 19 21:45:59 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_map_draw_0_0/design_1_map_draw_0_0_sim_netlist.vhdl
-- Design      : design_1_map_draw_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_map_draw_0_0_delay is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_data_2_sp_1 : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_hblnk : in STD_LOGIC_VECTOR ( 27 downto 0 );
    i_pclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_map_draw_0_0_delay : entity is "delay";
end design_1_map_draw_0_0_delay;

architecture STRUCTURE of design_1_map_draw_0_0_delay is
  signal \^q\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal i_data_2_sn_1 : STD_LOGIC;
  signal \o_rgb[10]_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[10]_i_3_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_10_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_3_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_4_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_5_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_6_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_7_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_8_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_9_n_0\ : STD_LOGIC;
  signal \o_rgb[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_rgb[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[4]_i_4_n_0\ : STD_LOGIC;
  signal \o_rgb[4]_i_5_n_0\ : STD_LOGIC;
  signal \o_rgb[4]_i_6_n_0\ : STD_LOGIC;
  signal \o_rgb[5]_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_i_5_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_i_6_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_i_7_n_0\ : STD_LOGIC;
  signal \o_rgb[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_rgb[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_rgb[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_rgb[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_rgb[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_rgb[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_rgb[11]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_rgb[11]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_rgb[11]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_rgb[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_rgb[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_rgb[4]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_rgb[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_rgb[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_rgb[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_rgb[7]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_rgb[8]_i_2\ : label is "soft_lutpair2";
begin
  Q(27 downto 0) <= \^q\(27 downto 0);
  i_data_2_sn_1 <= i_data_2_sp_1;
\del_mem_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(0),
      Q => \^q\(0),
      R => i_rst
    );
\del_mem_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(10),
      Q => \^q\(10),
      R => i_rst
    );
\del_mem_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(11),
      Q => \^q\(11),
      R => i_rst
    );
\del_mem_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(12),
      Q => \^q\(12),
      R => i_rst
    );
\del_mem_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(13),
      Q => \^q\(13),
      R => i_rst
    );
\del_mem_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(14),
      Q => \^q\(14),
      R => i_rst
    );
\del_mem_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(15),
      Q => \^q\(15),
      R => i_rst
    );
\del_mem_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(16),
      Q => \^q\(16),
      R => i_rst
    );
\del_mem_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(17),
      Q => \^q\(17),
      R => i_rst
    );
\del_mem_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(18),
      Q => \^q\(18),
      R => i_rst
    );
\del_mem_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(19),
      Q => \^q\(19),
      R => i_rst
    );
\del_mem_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(1),
      Q => \^q\(1),
      R => i_rst
    );
\del_mem_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(20),
      Q => \^q\(20),
      R => i_rst
    );
\del_mem_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(21),
      Q => \^q\(21),
      R => i_rst
    );
\del_mem_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(22),
      Q => \^q\(22),
      R => i_rst
    );
\del_mem_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(23),
      Q => \^q\(23),
      R => i_rst
    );
\del_mem_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(24),
      Q => \^q\(24),
      R => i_rst
    );
\del_mem_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(25),
      Q => \^q\(25),
      R => i_rst
    );
\del_mem_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(26),
      Q => \^q\(26),
      R => i_rst
    );
\del_mem_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(27),
      Q => \^q\(27),
      R => i_rst
    );
\del_mem_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(2),
      Q => \^q\(2),
      R => i_rst
    );
\del_mem_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(3),
      Q => \^q\(3),
      R => i_rst
    );
\del_mem_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(4),
      Q => \^q\(4),
      R => i_rst
    );
\del_mem_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(5),
      Q => \^q\(5),
      R => i_rst
    );
\del_mem_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(6),
      Q => \^q\(6),
      R => i_rst
    );
\del_mem_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(7),
      Q => \^q\(7),
      R => i_rst
    );
\del_mem_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(8),
      Q => \^q\(8),
      R => i_rst
    );
\del_mem_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hblnk(9),
      Q => \^q\(9),
      R => i_rst
    );
\o_rgb[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => i_data(2),
      I1 => i_data(3),
      I2 => i_data(1),
      I3 => \o_rgb[11]_i_4_n_0\,
      O => D(0)
    );
\o_rgb[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF04FF"
    )
        port map (
      I0 => \o_rgb[10]_i_2_n_0\,
      I1 => i_data(0),
      I2 => i_data(2),
      I3 => \o_rgb[11]_i_3_n_0\,
      I4 => \o_rgb[11]_i_5_n_0\,
      I5 => \o_rgb[10]_i_3_n_0\,
      O => D(10)
    );
\o_rgb[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data(3),
      I1 => \o_rgb[4]_i_2_n_0\,
      O => \o_rgb[10]_i_2_n_0\
    );
\o_rgb[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \o_rgb[11]_i_4_n_0\,
      I1 => \o_rgb[4]_i_2_n_0\,
      O => \o_rgb[10]_i_3_n_0\
    );
\o_rgb[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i_rst,
      I1 => \^q\(25),
      I2 => \^q\(27),
      O => SR(1)
    );
\o_rgb[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFEFFFEFFFE"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(3),
      I3 => \^q\(10),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \o_rgb[11]_i_10_n_0\
    );
\o_rgb[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      O => D(11)
    );
\o_rgb[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \o_rgb[4]_i_2_n_0\,
      I1 => i_data(3),
      I2 => i_data(1),
      I3 => i_data(0),
      O => \o_rgb[11]_i_3_n_0\
    );
\o_rgb[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFEFFFEFEFF"
    )
        port map (
      I0 => \o_rgb[11]_i_6_n_0\,
      I1 => \^q\(23),
      I2 => \^q\(11),
      I3 => \o_rgb[11]_i_7_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_8_n_0\,
      O => \o_rgb[11]_i_4_n_0\
    );
\o_rgb[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000022"
    )
        port map (
      I0 => \o_rgb[11]_i_9_n_0\,
      I1 => \o_rgb[11]_i_10_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \o_rgb[11]_i_5_n_0\
    );
\o_rgb[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C9999999"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      I2 => \^q\(19),
      I3 => \^q\(20),
      I4 => \^q\(18),
      O => \o_rgb[11]_i_6_n_0\
    );
\o_rgb[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      O => \o_rgb[11]_i_7_n_0\
    );
\o_rgb[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(8),
      I4 => \^q\(9),
      O => \o_rgb[11]_i_8_n_0\
    );
\o_rgb[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(11),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \^q\(10),
      O => \o_rgb[11]_i_9_n_0\
    );
\o_rgb[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => \o_rgb[4]_i_2_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => i_data(2),
      I3 => i_data(3),
      I4 => i_data(1),
      O => D(1)
    );
\o_rgb[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAABABAA"
    )
        port map (
      I0 => \o_rgb[11]_i_4_n_0\,
      I1 => i_data(2),
      I2 => i_data(3),
      I3 => i_data(1),
      I4 => i_data(0),
      I5 => \o_rgb[4]_i_2_n_0\,
      O => D(2)
    );
\o_rgb[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \o_rgb[11]_i_5_n_0\,
      I1 => i_rst,
      I2 => \^q\(25),
      I3 => \^q\(27),
      I4 => \o_rgb[3]_i_3_n_0\,
      O => SR(0)
    );
\o_rgb[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF0110"
    )
        port map (
      I0 => i_data(2),
      I1 => i_data(3),
      I2 => i_data(1),
      I3 => i_data(0),
      I4 => \o_rgb[4]_i_2_n_0\,
      I5 => \o_rgb[11]_i_4_n_0\,
      O => D(3)
    );
\o_rgb[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \o_rgb[4]_i_2_n_0\,
      I1 => \o_rgb[7]_i_5_n_0\,
      I2 => \^q\(22),
      I3 => \^q\(21),
      I4 => \^q\(19),
      O => \o_rgb[3]_i_3_n_0\
    );
\o_rgb[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AA20AA20AA22"
    )
        port map (
      I0 => \o_rgb[7]_i_2_n_0\,
      I1 => \o_rgb[4]_i_2_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[7]_i_3_n_0\,
      I4 => i_data(3),
      I5 => i_data_2_sn_1,
      O => D(4)
    );
\o_rgb[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008002"
    )
        port map (
      I0 => \o_rgb[4]_i_4_n_0\,
      I1 => \^q\(14),
      I2 => \^q\(13),
      I3 => \^q\(12),
      I4 => \o_rgb[4]_i_5_n_0\,
      I5 => \o_rgb[4]_i_6_n_0\,
      O => \o_rgb[4]_i_2_n_0\
    );
\o_rgb[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(23),
      I2 => \^q\(20),
      I3 => \^q\(21),
      O => \o_rgb[4]_i_4_n_0\
    );
\o_rgb[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      I2 => \^q\(20),
      I3 => \^q\(18),
      O => \o_rgb[4]_i_5_n_0\
    );
\o_rgb[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(17),
      I2 => \^q\(16),
      I3 => \^q\(15),
      I4 => \^q\(14),
      O => \o_rgb[4]_i_6_n_0\
    );
\o_rgb[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00088888"
    )
        port map (
      I0 => \o_rgb[7]_i_2_n_0\,
      I1 => \o_rgb[5]_i_2_n_0\,
      I2 => i_data(2),
      I3 => i_data(0),
      I4 => i_data(1),
      I5 => \o_rgb[7]_i_3_n_0\,
      O => D(5)
    );
\o_rgb[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \o_rgb[11]_i_4_n_0\,
      I1 => \o_rgb[4]_i_2_n_0\,
      I2 => i_data(3),
      O => \o_rgb[5]_i_2_n_0\
    );
\o_rgb[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
        port map (
      I0 => \o_rgb[7]_i_2_n_0\,
      I1 => \o_rgb[8]_i_2_n_0\,
      I2 => \o_rgb[6]_i_2_n_0\,
      I3 => i_data(1),
      I4 => i_data(0),
      I5 => \o_rgb[7]_i_3_n_0\,
      O => D(6)
    );
\o_rgb[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \o_rgb[11]_i_4_n_0\,
      I1 => i_data(2),
      O => \o_rgb[6]_i_2_n_0\
    );
\o_rgb[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000F010"
    )
        port map (
      I0 => i_data(2),
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[7]_i_2_n_0\,
      I3 => \o_rgb[7]_i_3_n_0\,
      I4 => \o_rgb[11]_i_3_n_0\,
      O => D(7)
    );
\o_rgb[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \o_rgb[7]_i_4_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \o_rgb[11]_i_5_n_0\,
      O => \o_rgb[7]_i_2_n_0\
    );
\o_rgb[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFAAAAAAAA"
    )
        port map (
      I0 => \o_rgb[11]_i_5_n_0\,
      I1 => \^q\(19),
      I2 => \^q\(21),
      I3 => \^q\(22),
      I4 => \o_rgb[7]_i_5_n_0\,
      I5 => \o_rgb[4]_i_2_n_0\,
      O => \o_rgb[7]_i_3_n_0\
    );
\o_rgb[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(3),
      I3 => \^q\(10),
      I4 => \^q\(4),
      I5 => \o_rgb[7]_i_6_n_0\,
      O => \o_rgb[7]_i_4_n_0\
    );
\o_rgb[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      I2 => \^q\(13),
      I3 => \^q\(12),
      I4 => \o_rgb[7]_i_7_n_0\,
      O => \o_rgb[7]_i_5_n_0\
    );
\o_rgb[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      O => \o_rgb[7]_i_6_n_0\
    );
\o_rgb[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(14),
      O => \o_rgb[7]_i_7_n_0\
    );
\o_rgb[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEF0F0F0F0"
    )
        port map (
      I0 => i_data(2),
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => i_data(0),
      I4 => i_data(1),
      I5 => \o_rgb[8]_i_2_n_0\,
      O => D(8)
    );
\o_rgb[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => \o_rgb[4]_i_2_n_0\,
      I1 => i_data(3),
      I2 => i_data(1),
      I3 => \o_rgb[11]_i_4_n_0\,
      O => \o_rgb[8]_i_2_n_0\
    );
\o_rgb[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABFBB"
    )
        port map (
      I0 => \o_rgb[11]_i_5_n_0\,
      I1 => i_data(1),
      I2 => i_data(2),
      I3 => i_data(0),
      I4 => \o_rgb[11]_i_4_n_0\,
      I5 => \o_rgb[10]_i_2_n_0\,
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_map_draw_0_0_map_draw is
  port (
    o_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC;
    o_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : in STD_LOGIC_VECTOR ( 27 downto 0 );
    i_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_rst : in STD_LOGIC;
    i_pclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_map_draw_0_0_map_draw : entity is "map_draw";
end design_1_map_draw_0_0_map_draw;

architecture STRUCTURE of design_1_map_draw_0_0_map_draw is
  signal \addry0/i__n_0\ : STD_LOGIC;
  signal delay_map_n_28 : STD_LOGIC;
  signal delay_map_n_29 : STD_LOGIC;
  signal delay_map_n_30 : STD_LOGIC;
  signal delay_map_n_31 : STD_LOGIC;
  signal delay_map_n_32 : STD_LOGIC;
  signal delay_map_n_33 : STD_LOGIC;
  signal delay_map_n_34 : STD_LOGIC;
  signal delay_map_n_35 : STD_LOGIC;
  signal delay_map_n_36 : STD_LOGIC;
  signal delay_map_n_37 : STD_LOGIC;
  signal delay_map_n_38 : STD_LOGIC;
  signal delay_map_n_39 : STD_LOGIC;
  signal delay_map_n_40 : STD_LOGIC;
  signal delay_map_n_41 : STD_LOGIC;
  signal hblnk_delayed : STD_LOGIC;
  signal hcount_delayed : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hsync_delayed : STD_LOGIC;
  signal \o_rgb[4]_i_3_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vblnk_delayed : STD_LOGIC;
  signal vsync_delayed : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_addr[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_addr[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_addr[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_addr[7]_INST_0\ : label is "soft_lutpair8";
begin
\addry0/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => D(6),
      I1 => D(3),
      I2 => D(2),
      I3 => D(4),
      I4 => D(5),
      I5 => D(7),
      O => \addry0/i__n_0\
    );
delay_map: entity work.design_1_map_draw_0_0_delay
     port map (
      D(11 downto 0) => p_1_in(11 downto 0),
      Q(27) => hblnk_delayed,
      Q(26) => hsync_delayed,
      Q(25) => vblnk_delayed,
      Q(24) => vsync_delayed,
      Q(23 downto 12) => hcount_delayed(11 downto 0),
      Q(11) => delay_map_n_28,
      Q(10) => delay_map_n_29,
      Q(9) => delay_map_n_30,
      Q(8) => delay_map_n_31,
      Q(7) => delay_map_n_32,
      Q(6) => delay_map_n_33,
      Q(5) => delay_map_n_34,
      Q(4) => delay_map_n_35,
      Q(3) => delay_map_n_36,
      Q(2) => delay_map_n_37,
      Q(1) => delay_map_n_38,
      Q(0) => delay_map_n_39,
      SR(1) => delay_map_n_40,
      SR(0) => delay_map_n_41,
      i_data(3 downto 0) => i_data(3 downto 0),
      i_data_2_sp_1 => \o_rgb[4]_i_3_n_0\,
      i_hblnk(27 downto 0) => D(27 downto 0),
      i_pclk => i_pclk,
      i_rst => i_rst
    );
\o_addr[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D(18),
      O => o_addr(0)
    );
\o_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D(18),
      I1 => D(19),
      O => o_addr(1)
    );
\o_addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => D(18),
      I1 => D(19),
      I2 => D(20),
      O => o_addr(2)
    );
\o_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \addry0/i__n_0\,
      I1 => D(8),
      O => o_addr(3)
    );
\o_addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => D(8),
      I1 => \addry0/i__n_0\,
      I2 => D(9),
      O => o_addr(4)
    );
o_hblnk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hblnk_delayed,
      Q => o_hblnk,
      R => i_rst
    );
\o_hcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(0),
      Q => o_hcount(0),
      R => i_rst
    );
\o_hcount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(10),
      Q => o_hcount(10),
      R => i_rst
    );
\o_hcount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(11),
      Q => o_hcount(11),
      R => i_rst
    );
\o_hcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(1),
      Q => o_hcount(1),
      R => i_rst
    );
\o_hcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(2),
      Q => o_hcount(2),
      R => i_rst
    );
\o_hcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(3),
      Q => o_hcount(3),
      R => i_rst
    );
\o_hcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(4),
      Q => o_hcount(4),
      R => i_rst
    );
\o_hcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(5),
      Q => o_hcount(5),
      R => i_rst
    );
\o_hcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(6),
      Q => o_hcount(6),
      R => i_rst
    );
\o_hcount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(7),
      Q => o_hcount(7),
      R => i_rst
    );
\o_hcount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(8),
      Q => o_hcount(8),
      R => i_rst
    );
\o_hcount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_delayed(9),
      Q => o_hcount(9),
      R => i_rst
    );
o_hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hsync_delayed,
      Q => o_hsync,
      R => i_rst
    );
\o_rgb[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CB"
    )
        port map (
      I0 => i_data(0),
      I1 => i_data(1),
      I2 => i_data(2),
      O => \o_rgb[4]_i_3_n_0\
    );
\o_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(0),
      Q => o_rgb(0),
      R => delay_map_n_41
    );
\o_rgb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(10),
      Q => o_rgb(10),
      R => delay_map_n_40
    );
\o_rgb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(11),
      Q => o_rgb(11),
      R => delay_map_n_40
    );
\o_rgb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(1),
      Q => o_rgb(1),
      R => delay_map_n_41
    );
\o_rgb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(2),
      Q => o_rgb(2),
      R => delay_map_n_41
    );
\o_rgb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(3),
      Q => o_rgb(3),
      R => delay_map_n_41
    );
\o_rgb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(4),
      Q => o_rgb(4),
      R => delay_map_n_40
    );
\o_rgb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(5),
      Q => o_rgb(5),
      R => delay_map_n_40
    );
\o_rgb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(6),
      Q => o_rgb(6),
      R => delay_map_n_40
    );
\o_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(7),
      Q => o_rgb(7),
      R => delay_map_n_40
    );
\o_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(8),
      Q => o_rgb(8),
      R => delay_map_n_40
    );
\o_rgb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(9),
      Q => o_rgb(9),
      R => delay_map_n_40
    );
o_vblnk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vblnk_delayed,
      Q => o_vblnk,
      R => i_rst
    );
\o_vcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_39,
      Q => o_vcount(0),
      R => i_rst
    );
\o_vcount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_29,
      Q => o_vcount(10),
      R => i_rst
    );
\o_vcount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_28,
      Q => o_vcount(11),
      R => i_rst
    );
\o_vcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_38,
      Q => o_vcount(1),
      R => i_rst
    );
\o_vcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_37,
      Q => o_vcount(2),
      R => i_rst
    );
\o_vcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_36,
      Q => o_vcount(3),
      R => i_rst
    );
\o_vcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_35,
      Q => o_vcount(4),
      R => i_rst
    );
\o_vcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_34,
      Q => o_vcount(5),
      R => i_rst
    );
\o_vcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_33,
      Q => o_vcount(6),
      R => i_rst
    );
\o_vcount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_32,
      Q => o_vcount(7),
      R => i_rst
    );
\o_vcount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_31,
      Q => o_vcount(8),
      R => i_rst
    );
\o_vcount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_map_n_30,
      Q => o_vcount(9),
      R => i_rst
    );
o_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vsync_delayed,
      Q => o_vsync,
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_map_draw_0_0 is
  port (
    i_pclk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_vsync : in STD_LOGIC;
    i_vblnk : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_hsync : in STD_LOGIC;
    i_hblnk : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC;
    o_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_addr : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_map_draw_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_map_draw_0_0 : entity is "design_1_map_draw_0_0,map_draw,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_map_draw_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_map_draw_0_0 : entity is "map_draw,Vivado 2017.3";
end design_1_map_draw_0_0;

architecture STRUCTURE of design_1_map_draw_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH";
begin
inst: entity work.design_1_map_draw_0_0_map_draw
     port map (
      D(27) => i_hblnk,
      D(26) => i_hsync,
      D(25) => i_vblnk,
      D(24) => i_vsync,
      D(23 downto 12) => i_hcount(11 downto 0),
      D(11 downto 0) => i_vcount(11 downto 0),
      i_data(3 downto 0) => i_data(3 downto 0),
      i_pclk => i_pclk,
      i_rst => i_rst,
      o_addr(4 downto 3) => o_addr(7 downto 6),
      o_addr(2 downto 0) => o_addr(2 downto 0),
      o_hblnk => o_hblnk,
      o_hcount(11 downto 0) => o_hcount(11 downto 0),
      o_hsync => o_hsync,
      o_rgb(11 downto 0) => o_rgb(11 downto 0),
      o_vblnk => o_vblnk,
      o_vcount(11 downto 0) => o_vcount(11 downto 0),
      o_vsync => o_vsync
    );
\o_addr[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"807F"
    )
        port map (
      I0 => i_hcount(7),
      I1 => i_hcount(6),
      I2 => i_hcount(8),
      I3 => i_hcount(9),
      O => o_addr(3)
    );
\o_addr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA1555"
    )
        port map (
      I0 => i_vcount(5),
      I1 => i_vcount(4),
      I2 => i_vcount(2),
      I3 => i_vcount(3),
      I4 => i_vcount(6),
      O => o_addr(4)
    );
\o_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAA00001555"
    )
        port map (
      I0 => i_vcount(6),
      I1 => i_vcount(3),
      I2 => i_vcount(2),
      I3 => i_vcount(4),
      I4 => i_vcount(5),
      I5 => i_vcount(7),
      O => o_addr(5)
    );
end STRUCTURE;
