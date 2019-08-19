-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Mon Aug 19 16:56:18 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_board_draw_0_0/design_1_board_draw_0_0_sim_netlist.vhdl
-- Design      : design_1_board_draw_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_board_draw_0_0_delay is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_rom_addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_pclk : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_board_draw_0_0_delay : entity is "delay";
end design_1_board_draw_0_0_delay;

architecture STRUCTURE of design_1_board_draw_0_0_delay is
  signal \^d\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  D(11 downto 0) <= \^d\(11 downto 0);
\del_mem_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(0),
      Q => \^d\(0),
      R => i_rst
    );
\del_mem_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(0),
      Q => \^d\(6),
      R => i_rst
    );
\del_mem_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(1),
      Q => \^d\(7),
      R => i_rst
    );
\del_mem_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(2),
      Q => \^d\(8),
      R => i_rst
    );
\del_mem_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(3),
      Q => \^d\(9),
      R => i_rst
    );
\del_mem_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(4),
      Q => \^d\(10),
      R => i_rst
    );
\del_mem_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(5),
      Q => \^d\(11),
      R => i_rst
    );
\del_mem_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(1),
      Q => \^d\(1),
      R => i_rst
    );
\del_mem_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(2),
      Q => \^d\(2),
      R => i_rst
    );
\del_mem_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(3),
      Q => \^d\(3),
      R => i_rst
    );
\del_mem_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(4),
      Q => \^d\(4),
      R => i_rst
    );
\del_mem_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(5),
      Q => \^d\(5),
      R => i_rst
    );
\o_rom_addr[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"807F"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(2),
      I2 => \^d\(4),
      I3 => \^d\(5),
      O => o_rom_addr(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_board_draw_0_0_delay__parameterized0\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \o_rgb_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rst : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_pclk : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \del_mem_reg[0][17]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_board_draw_0_0_delay__parameterized0\ : entity is "delay";
end \design_1_board_draw_0_0_delay__parameterized0\;

architecture STRUCTURE of \design_1_board_draw_0_0_delay__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \del_mem_reg[0]\ : STD_LOGIC_VECTOR ( 27 downto 6 );
  signal \o_rgb[11]_i_3_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_4_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_5_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_i_6_n_0\ : STD_LOGIC;
begin
  Q(27 downto 0) <= \^q\(27 downto 0);
\del_mem_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(4),
      Q => \del_mem_reg[0]\(10),
      R => i_rst
    );
\del_mem_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(5),
      Q => \del_mem_reg[0]\(11),
      R => i_rst
    );
\del_mem_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(0),
      Q => \del_mem_reg[0]\(18),
      R => i_rst
    );
\del_mem_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(1),
      Q => \del_mem_reg[0]\(19),
      R => i_rst
    );
\del_mem_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(2),
      Q => \del_mem_reg[0]\(20),
      R => i_rst
    );
\del_mem_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(3),
      Q => \del_mem_reg[0]\(21),
      R => i_rst
    );
\del_mem_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(4),
      Q => \del_mem_reg[0]\(22),
      R => i_rst
    );
\del_mem_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(5),
      Q => \del_mem_reg[0]\(23),
      R => i_rst
    );
\del_mem_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(0),
      Q => \del_mem_reg[0]\(24),
      R => i_rst
    );
\del_mem_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(1),
      Q => \del_mem_reg[0]\(25),
      R => i_rst
    );
\del_mem_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(2),
      Q => \del_mem_reg[0]\(26),
      R => i_rst
    );
\del_mem_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(3),
      Q => \del_mem_reg[0]\(27),
      R => i_rst
    );
\del_mem_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(0),
      Q => \del_mem_reg[0]\(6),
      R => i_rst
    );
\del_mem_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(1),
      Q => \del_mem_reg[0]\(7),
      R => i_rst
    );
\del_mem_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(2),
      Q => \del_mem_reg[0]\(8),
      R => i_rst
    );
\del_mem_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(3),
      Q => \del_mem_reg[0]\(9),
      R => i_rst
    );
\delay_stage[1].del_mem_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(0),
      Q => \^q\(0)
    );
\delay_stage[1].del_mem_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(10),
      Q => \^q\(10)
    );
\delay_stage[1].del_mem_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(11),
      Q => \^q\(11)
    );
\delay_stage[1].del_mem_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(6),
      Q => \^q\(12)
    );
\delay_stage[1].del_mem_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(7),
      Q => \^q\(13)
    );
\delay_stage[1].del_mem_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(8),
      Q => \^q\(14)
    );
\delay_stage[1].del_mem_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(9),
      Q => \^q\(15)
    );
\delay_stage[1].del_mem_reg[1][16]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(10),
      Q => \^q\(16)
    );
\delay_stage[1].del_mem_reg[1][17]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(11),
      Q => \^q\(17)
    );
\delay_stage[1].del_mem_reg[1][18]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(18),
      Q => \^q\(18)
    );
\delay_stage[1].del_mem_reg[1][19]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(19),
      Q => \^q\(19)
    );
\delay_stage[1].del_mem_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(1),
      Q => \^q\(1)
    );
\delay_stage[1].del_mem_reg[1][20]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(20),
      Q => \^q\(20)
    );
\delay_stage[1].del_mem_reg[1][21]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(21),
      Q => \^q\(21)
    );
\delay_stage[1].del_mem_reg[1][22]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(22),
      Q => \^q\(22)
    );
\delay_stage[1].del_mem_reg[1][23]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(23),
      Q => \^q\(23)
    );
\delay_stage[1].del_mem_reg[1][24]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(24),
      Q => \^q\(24)
    );
\delay_stage[1].del_mem_reg[1][25]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(25),
      Q => \^q\(25)
    );
\delay_stage[1].del_mem_reg[1][26]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(26),
      Q => \^q\(26)
    );
\delay_stage[1].del_mem_reg[1][27]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(27),
      Q => \^q\(27)
    );
\delay_stage[1].del_mem_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(2),
      Q => \^q\(2)
    );
\delay_stage[1].del_mem_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(3),
      Q => \^q\(3)
    );
\delay_stage[1].del_mem_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(4),
      Q => \^q\(4)
    );
\delay_stage[1].del_mem_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]\(5),
      Q => \^q\(5)
    );
\delay_stage[1].del_mem_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(6),
      Q => \^q\(6)
    );
\delay_stage[1].del_mem_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(7),
      Q => \^q\(7)
    );
\delay_stage[1].del_mem_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(8),
      Q => \^q\(8)
    );
\delay_stage[1].del_mem_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(9),
      Q => \^q\(9)
    );
\o_rgb[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => i_rom_rgb(0),
      I1 => \o_rgb[11]_i_3_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[11]_i_5_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_6_n_0\,
      O => \o_rgb_reg[11]\(0)
    );
\o_rgb[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => i_rom_rgb(10),
      I1 => \o_rgb[11]_i_3_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[11]_i_5_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_6_n_0\,
      O => \o_rgb_reg[11]\(10)
    );
\o_rgb[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(27),
      I2 => i_rst,
      O => SR(0)
    );
\o_rgb[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010100000000"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => \^q\(10),
      I4 => \o_rgb[11]_i_6_n_0\,
      I5 => i_rom_rgb(11),
      O => \o_rgb_reg[11]\(11)
    );
\o_rgb[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9999999"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(21),
      I2 => \^q\(19),
      I3 => \^q\(18),
      I4 => \^q\(20),
      O => \o_rgb[11]_i_3_n_0\
    );
\o_rgb[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(23),
      I2 => \^q\(4),
      I3 => \^q\(10),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \o_rgb[11]_i_4_n_0\
    );
\o_rgb[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(9),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \o_rgb[11]_i_5_n_0\
    );
\o_rgb[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(7),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \o_rgb[11]_i_6_n_0\
    );
\o_rgb[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010100000000"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => \^q\(10),
      I4 => \o_rgb[11]_i_6_n_0\,
      I5 => i_rom_rgb(1),
      O => \o_rgb_reg[11]\(1)
    );
\o_rgb[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => i_rom_rgb(2),
      I1 => \o_rgb[11]_i_3_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[11]_i_5_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_6_n_0\,
      O => \o_rgb_reg[11]\(2)
    );
\o_rgb[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010100000000"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => \^q\(10),
      I4 => \o_rgb[11]_i_6_n_0\,
      I5 => i_rom_rgb(3),
      O => \o_rgb_reg[11]\(3)
    );
\o_rgb[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => i_rom_rgb(4),
      I1 => \o_rgb[11]_i_3_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[11]_i_5_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_6_n_0\,
      O => \o_rgb_reg[11]\(4)
    );
\o_rgb[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010100000000"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => \^q\(10),
      I4 => \o_rgb[11]_i_6_n_0\,
      I5 => i_rom_rgb(5),
      O => \o_rgb_reg[11]\(5)
    );
\o_rgb[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => i_rom_rgb(6),
      I1 => \o_rgb[11]_i_3_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[11]_i_5_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_6_n_0\,
      O => \o_rgb_reg[11]\(6)
    );
\o_rgb[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010100000000"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => \^q\(10),
      I4 => \o_rgb[11]_i_6_n_0\,
      I5 => i_rom_rgb(7),
      O => \o_rgb_reg[11]\(7)
    );
\o_rgb[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => i_rom_rgb(8),
      I1 => \o_rgb[11]_i_3_n_0\,
      I2 => \o_rgb[11]_i_4_n_0\,
      I3 => \o_rgb[11]_i_5_n_0\,
      I4 => \^q\(10),
      I5 => \o_rgb[11]_i_6_n_0\,
      O => \o_rgb_reg[11]\(8)
    );
\o_rgb[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010100000000"
    )
        port map (
      I0 => \o_rgb[11]_i_3_n_0\,
      I1 => \o_rgb[11]_i_4_n_0\,
      I2 => \o_rgb[11]_i_5_n_0\,
      I3 => \^q\(10),
      I4 => \o_rgb[11]_i_6_n_0\,
      I5 => i_rom_rgb(9),
      O => \o_rgb_reg[11]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_board_draw_0_0_board_draw is
  port (
    o_rom_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_axi_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC;
    o_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_vcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_pclk : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_board_draw_0_0_board_draw : entity is "board_draw";
end design_1_board_draw_0_0_board_draw;

architecture STRUCTURE of design_1_board_draw_0_0_board_draw is
  signal \axi_addry0/i__n_0\ : STD_LOGIC;
  signal delay_1_clk_n_6 : STD_LOGIC;
  signal delay_1_clk_n_7 : STD_LOGIC;
  signal delay_1_clk_n_8 : STD_LOGIC;
  signal delay_1_clk_n_9 : STD_LOGIC;
  signal delay_2_clk_n_17 : STD_LOGIC;
  signal delay_2_clk_n_18 : STD_LOGIC;
  signal delay_2_clk_n_19 : STD_LOGIC;
  signal delay_2_clk_n_20 : STD_LOGIC;
  signal delay_2_clk_n_21 : STD_LOGIC;
  signal delay_2_clk_n_22 : STD_LOGIC;
  signal delay_2_clk_n_23 : STD_LOGIC;
  signal delay_2_clk_n_24 : STD_LOGIC;
  signal delay_2_clk_n_25 : STD_LOGIC;
  signal delay_2_clk_n_26 : STD_LOGIC;
  signal delay_2_clk_n_27 : STD_LOGIC;
  signal delay_2_clk_n_28 : STD_LOGIC;
  signal hblnk_del_2_clk : STD_LOGIC;
  signal hcount_del_2_clk : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hsync_del_2_clk : STD_LOGIC;
  signal \^o_rom_addr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vblnk_del_2_clk : STD_LOGIC;
  signal vsync_del_2_clk : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_axi_addr[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_axi_addr[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_axi_addr[6]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_axi_addr[7]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_rom_addr[10]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_rom_addr[9]_INST_0\ : label is "soft_lutpair1";
begin
  o_rom_addr(11 downto 0) <= \^o_rom_addr\(11 downto 0);
\axi_addry0/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => i_vcount(6),
      I1 => i_vcount(3),
      I2 => i_vcount(2),
      I3 => i_vcount(4),
      I4 => i_vcount(5),
      I5 => i_vcount(7),
      O => \axi_addry0/i__n_0\
    );
delay_1_clk: entity work.design_1_board_draw_0_0_delay
     port map (
      D(11 downto 6) => \^o_rom_addr\(5 downto 0),
      D(5) => delay_1_clk_n_6,
      D(4) => delay_1_clk_n_7,
      D(3) => delay_1_clk_n_8,
      D(2) => delay_1_clk_n_9,
      D(1 downto 0) => \^o_rom_addr\(7 downto 6),
      i_hcount(5 downto 0) => i_hcount(5 downto 0),
      i_pclk => i_pclk,
      i_rst => i_rst,
      i_vcount(5 downto 0) => i_vcount(5 downto 0),
      o_rom_addr(0) => \^o_rom_addr\(11)
    );
delay_2_clk: entity work.\design_1_board_draw_0_0_delay__parameterized0\
     port map (
      D(3 downto 0) => D(3 downto 0),
      Q(27) => hblnk_del_2_clk,
      Q(26) => hsync_del_2_clk,
      Q(25) => vblnk_del_2_clk,
      Q(24) => vsync_del_2_clk,
      Q(23 downto 12) => hcount_del_2_clk(11 downto 0),
      Q(11) => delay_2_clk_n_17,
      Q(10) => delay_2_clk_n_18,
      Q(9) => delay_2_clk_n_19,
      Q(8) => delay_2_clk_n_20,
      Q(7) => delay_2_clk_n_21,
      Q(6) => delay_2_clk_n_22,
      Q(5) => delay_2_clk_n_23,
      Q(4) => delay_2_clk_n_24,
      Q(3) => delay_2_clk_n_25,
      Q(2) => delay_2_clk_n_26,
      Q(1) => delay_2_clk_n_27,
      Q(0) => delay_2_clk_n_28,
      SR(0) => p_0_in,
      \del_mem_reg[0][17]\(11 downto 6) => \^o_rom_addr\(5 downto 0),
      \del_mem_reg[0][17]\(5) => delay_1_clk_n_6,
      \del_mem_reg[0][17]\(4) => delay_1_clk_n_7,
      \del_mem_reg[0][17]\(3) => delay_1_clk_n_8,
      \del_mem_reg[0][17]\(2) => delay_1_clk_n_9,
      \del_mem_reg[0][17]\(1 downto 0) => \^o_rom_addr\(7 downto 6),
      i_hcount(5 downto 0) => i_hcount(11 downto 6),
      i_pclk => i_pclk,
      i_rom_rgb(11 downto 0) => i_rom_rgb(11 downto 0),
      i_rst => i_rst,
      i_vcount(5 downto 0) => i_vcount(11 downto 6),
      \o_rgb_reg[11]\(11 downto 0) => p_1_in(11 downto 0)
    );
\o_axi_addr[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_hcount(6),
      O => o_axi_addr(0)
    );
\o_axi_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_hcount(6),
      I1 => i_hcount(7),
      O => o_axi_addr(1)
    );
\o_axi_addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i_hcount(6),
      I1 => i_hcount(7),
      I2 => i_hcount(8),
      O => o_axi_addr(2)
    );
\o_axi_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_addry0/i__n_0\,
      I1 => i_vcount(8),
      O => o_axi_addr(3)
    );
\o_axi_addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i_vcount(8),
      I1 => \axi_addry0/i__n_0\,
      I2 => i_vcount(9),
      O => o_axi_addr(4)
    );
o_hblnk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hblnk_del_2_clk,
      Q => o_hblnk,
      R => i_rst
    );
\o_hcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(0),
      Q => o_hcount(0),
      R => i_rst
    );
\o_hcount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(10),
      Q => o_hcount(10),
      R => i_rst
    );
\o_hcount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(11),
      Q => o_hcount(11),
      R => i_rst
    );
\o_hcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(1),
      Q => o_hcount(1),
      R => i_rst
    );
\o_hcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(2),
      Q => o_hcount(2),
      R => i_rst
    );
\o_hcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(3),
      Q => o_hcount(3),
      R => i_rst
    );
\o_hcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(4),
      Q => o_hcount(4),
      R => i_rst
    );
\o_hcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(5),
      Q => o_hcount(5),
      R => i_rst
    );
\o_hcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(6),
      Q => o_hcount(6),
      R => i_rst
    );
\o_hcount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(7),
      Q => o_hcount(7),
      R => i_rst
    );
\o_hcount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(8),
      Q => o_hcount(8),
      R => i_rst
    );
\o_hcount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hcount_del_2_clk(9),
      Q => o_hcount(9),
      R => i_rst
    );
o_hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => hsync_del_2_clk,
      Q => o_hsync,
      R => i_rst
    );
\o_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(0),
      Q => o_rgb(0),
      R => p_0_in
    );
\o_rgb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(10),
      Q => o_rgb(10),
      R => p_0_in
    );
\o_rgb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(11),
      Q => o_rgb(11),
      R => p_0_in
    );
\o_rgb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(1),
      Q => o_rgb(1),
      R => p_0_in
    );
\o_rgb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(2),
      Q => o_rgb(2),
      R => p_0_in
    );
\o_rgb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(3),
      Q => o_rgb(3),
      R => p_0_in
    );
\o_rgb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(4),
      Q => o_rgb(4),
      R => p_0_in
    );
\o_rgb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(5),
      Q => o_rgb(5),
      R => p_0_in
    );
\o_rgb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(6),
      Q => o_rgb(6),
      R => p_0_in
    );
\o_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(7),
      Q => o_rgb(7),
      R => p_0_in
    );
\o_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(8),
      Q => o_rgb(8),
      R => p_0_in
    );
\o_rgb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(9),
      Q => o_rgb(9),
      R => p_0_in
    );
\o_rom_addr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => delay_1_clk_n_9,
      I1 => delay_1_clk_n_8,
      I2 => delay_1_clk_n_7,
      O => \^o_rom_addr\(10)
    );
\o_rom_addr[8]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_1_clk_n_9,
      O => \^o_rom_addr\(8)
    );
\o_rom_addr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => delay_1_clk_n_9,
      I1 => delay_1_clk_n_8,
      O => \^o_rom_addr\(9)
    );
o_vblnk_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vblnk_del_2_clk,
      Q => o_vblnk,
      R => i_rst
    );
\o_vcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_28,
      Q => o_vcount(0),
      R => i_rst
    );
\o_vcount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_18,
      Q => o_vcount(10),
      R => i_rst
    );
\o_vcount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_17,
      Q => o_vcount(11),
      R => i_rst
    );
\o_vcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_27,
      Q => o_vcount(1),
      R => i_rst
    );
\o_vcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_26,
      Q => o_vcount(2),
      R => i_rst
    );
\o_vcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_25,
      Q => o_vcount(3),
      R => i_rst
    );
\o_vcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_24,
      Q => o_vcount(4),
      R => i_rst
    );
\o_vcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_23,
      Q => o_vcount(5),
      R => i_rst
    );
\o_vcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_22,
      Q => o_vcount(6),
      R => i_rst
    );
\o_vcount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_21,
      Q => o_vcount(7),
      R => i_rst
    );
\o_vcount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_20,
      Q => o_vcount(8),
      R => i_rst
    );
\o_vcount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => delay_2_clk_n_19,
      Q => o_vcount(9),
      R => i_rst
    );
o_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vsync_del_2_clk,
      Q => o_vsync,
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_board_draw_0_0 is
  port (
    i_pclk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_vsync : in STD_LOGIC;
    i_vblnk : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_hsync : in STD_LOGIC;
    i_hblnk : in STD_LOGIC;
    i_axi_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC;
    o_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rom_addr : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_board_draw_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_board_draw_0_0 : entity is "design_1_board_draw_0_0,board_draw,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_board_draw_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_board_draw_0_0 : entity is "board_draw,Vivado 2017.3";
end design_1_board_draw_0_0;

architecture STRUCTURE of design_1_board_draw_0_0 is
  signal \^i_axi_data\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH";
begin
  \^i_axi_data\(3 downto 0) <= i_axi_data(3 downto 0);
  o_sel(3 downto 0) <= \^i_axi_data\(3 downto 0);
inst: entity work.design_1_board_draw_0_0_board_draw
     port map (
      D(3) => i_hblnk,
      D(2) => i_hsync,
      D(1) => i_vblnk,
      D(0) => i_vsync,
      i_hcount(11 downto 0) => i_hcount(11 downto 0),
      i_pclk => i_pclk,
      i_rom_rgb(11 downto 0) => i_rom_rgb(11 downto 0),
      i_rst => i_rst,
      i_vcount(11 downto 0) => i_vcount(11 downto 0),
      o_axi_addr(4 downto 3) => o_axi_addr(7 downto 6),
      o_axi_addr(2 downto 0) => o_axi_addr(2 downto 0),
      o_hblnk => o_hblnk,
      o_hcount(11 downto 0) => o_hcount(11 downto 0),
      o_hsync => o_hsync,
      o_rgb(11 downto 0) => o_rgb(11 downto 0),
      o_rom_addr(11 downto 0) => o_rom_addr(11 downto 0),
      o_vblnk => o_vblnk,
      o_vcount(11 downto 0) => o_vcount(11 downto 0),
      o_vsync => o_vsync
    );
\o_axi_addr[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"807F"
    )
        port map (
      I0 => i_hcount(7),
      I1 => i_hcount(6),
      I2 => i_hcount(8),
      I3 => i_hcount(9),
      O => o_axi_addr(3)
    );
\o_axi_addr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA1555"
    )
        port map (
      I0 => i_vcount(5),
      I1 => i_vcount(4),
      I2 => i_vcount(2),
      I3 => i_vcount(3),
      I4 => i_vcount(6),
      O => o_axi_addr(4)
    );
\o_axi_addr[5]_INST_0\: unisim.vcomponents.LUT6
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
      O => o_axi_addr(5)
    );
end STRUCTURE;
