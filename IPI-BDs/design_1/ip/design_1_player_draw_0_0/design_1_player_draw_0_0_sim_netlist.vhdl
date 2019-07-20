-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Jul 19 21:45:58 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_player_draw_0_0/design_1_player_draw_0_0_sim_netlist.vhdl
-- Design      : design_1_player_draw_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_player_draw_0_0_delay is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 39 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rgb_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rgb_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rgb_reg[0]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rgb_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_rgb_reg[0]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rgb_reg[0]_4\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rgb_reg[0]_5\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rgb_reg[0]_6\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rgb_reg[0]_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rgb_reg[0]_8\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rgb_reg[0]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_rst : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_pclk : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \delay_stage[1].del_mem_reg[1][47]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \del_mem_reg[0][27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \del_mem_reg[0][17]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_player_draw_0_0_delay : entity is "delay";
end design_1_player_draw_0_0_delay;

architecture STRUCTURE of design_1_player_draw_0_0_delay is
  signal \^q\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \del_mem_reg[0]\ : STD_LOGIC_VECTOR ( 51 downto 12 );
begin
  Q(39 downto 0) <= \^q\(39 downto 0);
\del_mem_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(0),
      Q => \del_mem_reg[0]\(12),
      R => i_rst
    );
\del_mem_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(1),
      Q => \del_mem_reg[0]\(13),
      R => i_rst
    );
\del_mem_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(2),
      Q => \del_mem_reg[0]\(14),
      R => i_rst
    );
\del_mem_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(3),
      Q => \del_mem_reg[0]\(15),
      R => i_rst
    );
\del_mem_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(4),
      Q => \del_mem_reg[0]\(16),
      R => i_rst
    );
\del_mem_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(5),
      Q => \del_mem_reg[0]\(17),
      R => i_rst
    );
\del_mem_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(6),
      Q => \del_mem_reg[0]\(18),
      R => i_rst
    );
\del_mem_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(7),
      Q => \del_mem_reg[0]\(19),
      R => i_rst
    );
\del_mem_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(8),
      Q => \del_mem_reg[0]\(20),
      R => i_rst
    );
\del_mem_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(9),
      Q => \del_mem_reg[0]\(21),
      R => i_rst
    );
\del_mem_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(10),
      Q => \del_mem_reg[0]\(22),
      R => i_rst
    );
\del_mem_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(11),
      Q => \del_mem_reg[0]\(23),
      R => i_rst
    );
\del_mem_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(0),
      Q => \del_mem_reg[0]\(30),
      R => i_rst
    );
\del_mem_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(1),
      Q => \del_mem_reg[0]\(31),
      R => i_rst
    );
\del_mem_reg[0][32]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(2),
      Q => \del_mem_reg[0]\(32),
      R => i_rst
    );
\del_mem_reg[0][33]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(3),
      Q => \del_mem_reg[0]\(33),
      R => i_rst
    );
\del_mem_reg[0][34]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(4),
      Q => \del_mem_reg[0]\(34),
      R => i_rst
    );
\del_mem_reg[0][35]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(5),
      Q => \del_mem_reg[0]\(35),
      R => i_rst
    );
\del_mem_reg[0][42]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(0),
      Q => \del_mem_reg[0]\(42),
      R => i_rst
    );
\del_mem_reg[0][43]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(1),
      Q => \del_mem_reg[0]\(43),
      R => i_rst
    );
\del_mem_reg[0][44]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(2),
      Q => \del_mem_reg[0]\(44),
      R => i_rst
    );
\del_mem_reg[0][45]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(3),
      Q => \del_mem_reg[0]\(45),
      R => i_rst
    );
\del_mem_reg[0][46]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(4),
      Q => \del_mem_reg[0]\(46),
      R => i_rst
    );
\del_mem_reg[0][47]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(5),
      Q => \del_mem_reg[0]\(47),
      R => i_rst
    );
\del_mem_reg[0][48]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(12),
      Q => \del_mem_reg[0]\(48),
      R => i_rst
    );
\del_mem_reg[0][49]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(13),
      Q => \del_mem_reg[0]\(49),
      R => i_rst
    );
\del_mem_reg[0][50]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(14),
      Q => \del_mem_reg[0]\(50),
      R => i_rst
    );
\del_mem_reg[0][51]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => D(15),
      Q => \del_mem_reg[0]\(51),
      R => i_rst
    );
\delay_stage[1].del_mem_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(12),
      Q => \^q\(0)
    );
\delay_stage[1].del_mem_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(13),
      Q => \^q\(1)
    );
\delay_stage[1].del_mem_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(14),
      Q => \^q\(2)
    );
\delay_stage[1].del_mem_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(15),
      Q => \^q\(3)
    );
\delay_stage[1].del_mem_reg[1][16]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(16),
      Q => \^q\(4)
    );
\delay_stage[1].del_mem_reg[1][17]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(17),
      Q => \^q\(5)
    );
\delay_stage[1].del_mem_reg[1][18]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(18),
      Q => \^q\(6)
    );
\delay_stage[1].del_mem_reg[1][19]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(19),
      Q => \^q\(7)
    );
\delay_stage[1].del_mem_reg[1][20]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(20),
      Q => \^q\(8)
    );
\delay_stage[1].del_mem_reg[1][21]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(21),
      Q => \^q\(9)
    );
\delay_stage[1].del_mem_reg[1][22]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(22),
      Q => \^q\(10)
    );
\delay_stage[1].del_mem_reg[1][23]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(23),
      Q => \^q\(11)
    );
\delay_stage[1].del_mem_reg[1][24]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(0),
      Q => \^q\(12)
    );
\delay_stage[1].del_mem_reg[1][25]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(1),
      Q => \^q\(13)
    );
\delay_stage[1].del_mem_reg[1][26]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(2),
      Q => \^q\(14)
    );
\delay_stage[1].del_mem_reg[1][27]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(3),
      Q => \^q\(15)
    );
\delay_stage[1].del_mem_reg[1][28]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(4),
      Q => \^q\(16)
    );
\delay_stage[1].del_mem_reg[1][29]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(5),
      Q => \^q\(17)
    );
\delay_stage[1].del_mem_reg[1][30]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(30),
      Q => \^q\(18)
    );
\delay_stage[1].del_mem_reg[1][31]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(31),
      Q => \^q\(19)
    );
\delay_stage[1].del_mem_reg[1][32]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(32),
      Q => \^q\(20)
    );
\delay_stage[1].del_mem_reg[1][33]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(33),
      Q => \^q\(21)
    );
\delay_stage[1].del_mem_reg[1][34]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(34),
      Q => \^q\(22)
    );
\delay_stage[1].del_mem_reg[1][35]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(35),
      Q => \^q\(23)
    );
\delay_stage[1].del_mem_reg[1][36]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(6),
      Q => \^q\(24)
    );
\delay_stage[1].del_mem_reg[1][37]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(7),
      Q => \^q\(25)
    );
\delay_stage[1].del_mem_reg[1][38]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(8),
      Q => \^q\(26)
    );
\delay_stage[1].del_mem_reg[1][39]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(9),
      Q => \^q\(27)
    );
\delay_stage[1].del_mem_reg[1][40]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(10),
      Q => \^q\(28)
    );
\delay_stage[1].del_mem_reg[1][41]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0][17]_0\(11),
      Q => \^q\(29)
    );
\delay_stage[1].del_mem_reg[1][42]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(42),
      Q => \^q\(30)
    );
\delay_stage[1].del_mem_reg[1][43]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(43),
      Q => \^q\(31)
    );
\delay_stage[1].del_mem_reg[1][44]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(44),
      Q => \^q\(32)
    );
\delay_stage[1].del_mem_reg[1][45]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(45),
      Q => \^q\(33)
    );
\delay_stage[1].del_mem_reg[1][46]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(46),
      Q => \^q\(34)
    );
\delay_stage[1].del_mem_reg[1][47]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(47),
      Q => \^q\(35)
    );
\delay_stage[1].del_mem_reg[1][48]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(48),
      Q => \^q\(36)
    );
\delay_stage[1].del_mem_reg[1][49]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(49),
      Q => \^q\(37)
    );
\delay_stage[1].del_mem_reg[1][50]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(50),
      Q => \^q\(38)
    );
\delay_stage[1].del_mem_reg[1][51]\: unisim.vcomponents.FDCE
     port map (
      C => i_pclk,
      CE => '1',
      CLR => i_rst,
      D => \del_mem_reg[0]\(51),
      Q => \^q\(39)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(20),
      O => \o_rgb_reg[0]\(3)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(35),
      O => \o_rgb_reg[0]_1\(2)
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \o_rgb_reg[0]_8\(1)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      O => \o_rgb_reg[0]\(2)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(34),
      O => \o_rgb_reg[0]_1\(1)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \o_rgb_reg[0]_8\(0)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(18),
      O => \o_rgb_reg[0]\(1)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(33),
      O => \o_rgb_reg[0]_1\(0)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      O => \o_rgb_reg[0]\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(23),
      O => S(2)
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \o_rgb_reg[0]_9\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(22),
      O => S(1)
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \o_rgb_reg[0]_9\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      O => S(0)
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \o_rgb_reg[0]_9\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \o_rgb_reg[0]_9\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => DI(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => DI(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => DI(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => DI(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      O => \o_rgb_reg[0]_0\(0)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(30),
      O => \o_rgb_reg[0]_2\(0)
    );
\o_rgb[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i_rst,
      I1 => \^q\(39),
      I2 => \^q\(37),
      O => SR(0)
    );
\o_rgb_nxt3_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_6\(1)
    );
\o_rgb_nxt3_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_6\(0)
    );
\o_rgb_nxt3_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_7\(3)
    );
\o_rgb_nxt3_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_7\(2)
    );
\o_rgb_nxt3_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_7\(1)
    );
\o_rgb_nxt3_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_7\(0)
    );
\o_rgb_nxt3_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_3\(3)
    );
\o_rgb_nxt3_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_3\(2)
    );
\o_rgb_nxt3_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_3\(1)
    );
\o_rgb_nxt3_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][47]_0\(0),
      O => \o_rgb_reg[0]_3\(0)
    );
o_rgb_nxt3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(26),
      I1 => \del_mem_reg[0][27]\(2),
      I2 => \del_mem_reg[0][27]\(3),
      I3 => \^q\(27),
      O => \o_rgb_reg[0]_5\(1)
    );
o_rgb_nxt3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(24),
      I1 => \del_mem_reg[0][27]\(0),
      I2 => \del_mem_reg[0][27]\(1),
      I3 => \^q\(25),
      O => \o_rgb_reg[0]_5\(0)
    );
o_rgb_nxt3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(26),
      I1 => \del_mem_reg[0][27]\(2),
      I2 => \^q\(27),
      I3 => \del_mem_reg[0][27]\(3),
      O => \o_rgb_reg[0]_4\(1)
    );
o_rgb_nxt3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(24),
      I1 => \del_mem_reg[0][27]\(0),
      I2 => \^q\(25),
      I3 => \del_mem_reg[0][27]\(1),
      O => \o_rgb_reg[0]_4\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_player_draw_0_0_delay__parameterized0\ is
  port (
    \delay_stage[1].del_mem_reg[1][41]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \o_rgb_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rgb_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rom_addr[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rom_addr[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rom_addr[10]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rom_addr[10]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rom_addr[10]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_rgb_reg[0]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rgb_reg[0]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rgb_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_rgb_reg[0]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_rgb_reg[0]_5\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rgb_reg[0]_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rgb_reg[0]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_rgb_reg[0]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_pclk : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 5 downto 0 );
    o_rgb_nxt5 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    o_rgb_nxt4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    i_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \delay_stage[1].del_mem_reg[1][40]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_player_draw_0_0_delay__parameterized0\ : entity is "delay";
end \design_1_player_draw_0_0_delay__parameterized0\;

architecture STRUCTURE of \design_1_player_draw_0_0_delay__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_delayed : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \^delay_stage[1].del_mem_reg[1][41]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  \delay_stage[1].del_mem_reg[1][41]\(11 downto 0) <= \^delay_stage[1].del_mem_reg[1][41]\(11 downto 0);
\addrx_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(11),
      I1 => i_data(5),
      O => \o_rom_addr[4]_0\(1)
    );
\addrx_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(10),
      I1 => i_data(4),
      O => \o_rom_addr[4]_0\(0)
    );
addrx_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(9),
      I1 => i_data(3),
      O => \o_rom_addr[4]\(3)
    );
addrx_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(8),
      I1 => i_data(2),
      O => \o_rom_addr[4]\(2)
    );
addrx_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(7),
      I1 => i_data(1),
      O => \o_rom_addr[4]\(1)
    );
addrx_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(6),
      I1 => i_data(0),
      O => \o_rom_addr[4]\(0)
    );
\addry_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(3),
      I1 => i_data(13),
      O => \o_rom_addr[10]_1\(0)
    );
\addry_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => i_data(15),
      I1 => \^delay_stage[1].del_mem_reg[1][41]\(5),
      I2 => i_data(14),
      I3 => \^delay_stage[1].del_mem_reg[1][41]\(4),
      O => \o_rom_addr[10]\(1)
    );
\addry_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => i_data(13),
      I1 => \^delay_stage[1].del_mem_reg[1][41]\(3),
      I2 => i_data(14),
      I3 => \^delay_stage[1].del_mem_reg[1][41]\(4),
      O => \o_rom_addr[10]\(0)
    );
addry_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_data(12),
      I1 => i_data(13),
      I2 => \^delay_stage[1].del_mem_reg[1][41]\(3),
      O => \o_rom_addr[10]_0\(3)
    );
addry_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_data(12),
      I1 => \^delay_stage[1].del_mem_reg[1][41]\(2),
      O => \o_rom_addr[10]_0\(2)
    );
addry_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(1),
      I1 => i_data(11),
      O => \o_rom_addr[10]_0\(1)
    );
addry_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^delay_stage[1].del_mem_reg[1][41]\(0),
      I1 => i_data(10),
      O => \o_rom_addr[10]_0\(0)
    );
\del_mem_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(0),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(0),
      R => i_rst
    );
\del_mem_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(0),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(6),
      R => i_rst
    );
\del_mem_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(1),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(7),
      R => i_rst
    );
\del_mem_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(2),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(8),
      R => i_rst
    );
\del_mem_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(3),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(9),
      R => i_rst
    );
\del_mem_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(4),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(10),
      R => i_rst
    );
\del_mem_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_hcount(5),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(11),
      R => i_rst
    );
\del_mem_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(1),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(1),
      R => i_rst
    );
\del_mem_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(0),
      Q => \^q\(0),
      R => i_rst
    );
\del_mem_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(1),
      Q => \^q\(1),
      R => i_rst
    );
\del_mem_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(2),
      Q => \^q\(2),
      R => i_rst
    );
\del_mem_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(3),
      Q => \^q\(3),
      R => i_rst
    );
\del_mem_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(4),
      Q => data_delayed(4),
      R => i_rst
    );
\del_mem_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(5),
      Q => data_delayed(5),
      R => i_rst
    );
\del_mem_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(2),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(2),
      R => i_rst
    );
\del_mem_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(6),
      Q => \^q\(4),
      R => i_rst
    );
\del_mem_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(7),
      Q => \^q\(5),
      R => i_rst
    );
\del_mem_reg[0][32]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(8),
      Q => \^q\(6),
      R => i_rst
    );
\del_mem_reg[0][33]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(9),
      Q => \^q\(7),
      R => i_rst
    );
\del_mem_reg[0][34]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(10),
      Q => p_0_in(0),
      R => i_rst
    );
\del_mem_reg[0][35]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(11),
      Q => p_0_in(1),
      R => i_rst
    );
\del_mem_reg[0][36]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(12),
      Q => \^q\(8),
      R => i_rst
    );
\del_mem_reg[0][37]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(13),
      Q => \^q\(9),
      R => i_rst
    );
\del_mem_reg[0][38]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(14),
      Q => \^q\(10),
      R => i_rst
    );
\del_mem_reg[0][39]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(15),
      Q => \^q\(11),
      R => i_rst
    );
\del_mem_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(3),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(3),
      R => i_rst
    );
\del_mem_reg[0][40]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(16),
      Q => \^q\(12),
      R => i_rst
    );
\del_mem_reg[0][41]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(17),
      Q => \^q\(13),
      R => i_rst
    );
\del_mem_reg[0][42]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(18),
      Q => \^q\(14),
      R => i_rst
    );
\del_mem_reg[0][43]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_data(19),
      Q => \^q\(15),
      R => i_rst
    );
\del_mem_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(4),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(4),
      R => i_rst
    );
\del_mem_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => i_vcount(5),
      Q => \^delay_stage[1].del_mem_reg[1][41]\(5),
      R => i_rst
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][40]\(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => o_rgb_nxt5(0),
      O => \o_rgb_reg[0]_8\(0)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][40]\(0),
      I1 => p_0_in(0),
      I2 => o_rgb_nxt5(0),
      I3 => p_0_in(1),
      O => \o_rgb_reg[0]_7\(0)
    );
\o_rgb_nxt2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => o_rgb_nxt4(3),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => o_rgb_nxt4(4),
      O => \o_rgb_reg[0]_0\(1)
    );
\o_rgb_nxt2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777733331111000"
    )
        port map (
      I0 => o_rgb_nxt4(1),
      I1 => o_rgb_nxt4(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \o_rgb_reg[0]_0\(0)
    );
\o_rgb_nxt2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080007FFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => o_rgb_nxt4(3),
      I5 => o_rgb_nxt4(4),
      O => \o_rgb_reg[0]\(1)
    );
\o_rgb_nxt2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A95400040002A95"
    )
        port map (
      I0 => o_rgb_nxt4(1),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => o_rgb_nxt4(2),
      O => \o_rgb_reg[0]\(0)
    );
o_rgb_nxt2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_delayed(4),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(5),
      I2 => o_rgb_nxt4(0),
      I3 => data_delayed(5),
      O => \o_rgb_reg[0]_6\(2)
    );
o_rgb_nxt2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(3),
      I2 => \delay_stage[1].del_mem_reg[1][40]\(4),
      I3 => \^q\(3),
      O => \o_rgb_reg[0]_6\(1)
    );
o_rgb_nxt2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(1),
      I2 => \delay_stage[1].del_mem_reg[1][40]\(2),
      I3 => \^q\(1),
      O => \o_rgb_reg[0]_6\(0)
    );
o_rgb_nxt2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_delayed(4),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(5),
      I2 => data_delayed(5),
      I3 => o_rgb_nxt4(0),
      O => \o_rgb_reg[0]_5\(2)
    );
o_rgb_nxt2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(3),
      I2 => \^q\(3),
      I3 => \delay_stage[1].del_mem_reg[1][40]\(4),
      O => \o_rgb_reg[0]_5\(1)
    );
o_rgb_nxt2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(1),
      I2 => \^q\(1),
      I3 => \delay_stage[1].del_mem_reg[1][40]\(2),
      O => \o_rgb_reg[0]_5\(0)
    );
o_rgb_nxt3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][40]\(5),
      I1 => data_delayed(4),
      I2 => data_delayed(5),
      I3 => o_rgb_nxt4(0),
      O => \o_rgb_reg[0]_4\(0)
    );
o_rgb_nxt3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \delay_stage[1].del_mem_reg[1][40]\(5),
      I1 => data_delayed(4),
      I2 => o_rgb_nxt4(0),
      I3 => data_delayed(5),
      O => \o_rgb_reg[0]_3\(0)
    );
\o_rgb_nxt4_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => o_rgb_nxt5(7),
      I1 => \^q\(15),
      I2 => \^q\(13),
      I3 => \^q\(12),
      I4 => \^q\(14),
      I5 => o_rgb_nxt5(8),
      O => DI(1)
    );
\o_rgb_nxt4_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777733331111000"
    )
        port map (
      I0 => o_rgb_nxt5(5),
      I1 => o_rgb_nxt5(6),
      I2 => \^q\(13),
      I3 => \^q\(12),
      I4 => \^q\(14),
      I5 => \^q\(15),
      O => DI(0)
    );
\o_rgb_nxt4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080007FFF"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(13),
      I2 => \^q\(12),
      I3 => \^q\(14),
      I4 => o_rgb_nxt5(7),
      I5 => o_rgb_nxt5(8),
      O => S(1)
    );
\o_rgb_nxt4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A95400040002A95"
    )
        port map (
      I0 => o_rgb_nxt5(5),
      I1 => \^q\(13),
      I2 => \^q\(12),
      I3 => \^q\(14),
      I4 => \^q\(15),
      I5 => o_rgb_nxt5(6),
      O => S(0)
    );
o_rgb_nxt4_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(10),
      I1 => o_rgb_nxt5(3),
      I2 => o_rgb_nxt5(4),
      I3 => \^q\(11),
      O => \o_rgb_reg[0]_2\(2)
    );
o_rgb_nxt4_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(8),
      I1 => o_rgb_nxt5(1),
      I2 => o_rgb_nxt5(2),
      I3 => \^q\(9),
      O => \o_rgb_reg[0]_2\(1)
    );
o_rgb_nxt4_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(0),
      I2 => o_rgb_nxt5(0),
      I3 => p_0_in(1),
      O => \o_rgb_reg[0]_2\(0)
    );
o_rgb_nxt4_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(10),
      I1 => o_rgb_nxt5(3),
      I2 => \^q\(11),
      I3 => o_rgb_nxt5(4),
      O => \o_rgb_reg[0]_1\(2)
    );
o_rgb_nxt4_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(8),
      I1 => o_rgb_nxt5(1),
      I2 => \^q\(9),
      I3 => o_rgb_nxt5(2),
      O => \o_rgb_reg[0]_1\(1)
    );
o_rgb_nxt4_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \delay_stage[1].del_mem_reg[1][40]\(0),
      I2 => p_0_in(1),
      I3 => o_rgb_nxt5(0),
      O => \o_rgb_reg[0]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_player_draw_0_0_player_draw is
  port (
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC;
    o_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_rom_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_pclk : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_vcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_player_draw_0_0_player_draw : entity is "player_draw";
end design_1_player_draw_0_0_player_draw;

architecture STRUCTURE of design_1_player_draw_0_0_player_draw is
  signal \addrx_carry__0_n_3\ : STD_LOGIC;
  signal addrx_carry_n_0 : STD_LOGIC;
  signal addrx_carry_n_1 : STD_LOGIC;
  signal addrx_carry_n_2 : STD_LOGIC;
  signal addrx_carry_n_3 : STD_LOGIC;
  signal \addry_carry__0_n_3\ : STD_LOGIC;
  signal addry_carry_i_1_n_0 : STD_LOGIC;
  signal addry_carry_n_0 : STD_LOGIC;
  signal addry_carry_n_1 : STD_LOGIC;
  signal addry_carry_n_2 : STD_LOGIC;
  signal addry_carry_n_3 : STD_LOGIC;
  signal data_delayed : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal delay_player2_n_10 : STD_LOGIC;
  signal delay_player2_n_11 : STD_LOGIC;
  signal delay_player2_n_12 : STD_LOGIC;
  signal delay_player2_n_13 : STD_LOGIC;
  signal delay_player2_n_30 : STD_LOGIC;
  signal delay_player2_n_31 : STD_LOGIC;
  signal delay_player2_n_32 : STD_LOGIC;
  signal delay_player2_n_33 : STD_LOGIC;
  signal delay_player2_n_34 : STD_LOGIC;
  signal delay_player2_n_35 : STD_LOGIC;
  signal delay_player2_n_36 : STD_LOGIC;
  signal delay_player2_n_37 : STD_LOGIC;
  signal delay_player2_n_38 : STD_LOGIC;
  signal delay_player2_n_39 : STD_LOGIC;
  signal delay_player2_n_40 : STD_LOGIC;
  signal delay_player2_n_41 : STD_LOGIC;
  signal delay_player2_n_42 : STD_LOGIC;
  signal delay_player2_n_43 : STD_LOGIC;
  signal delay_player2_n_44 : STD_LOGIC;
  signal delay_player2_n_45 : STD_LOGIC;
  signal delay_player2_n_46 : STD_LOGIC;
  signal delay_player2_n_47 : STD_LOGIC;
  signal delay_player2_n_48 : STD_LOGIC;
  signal delay_player2_n_49 : STD_LOGIC;
  signal delay_player2_n_50 : STD_LOGIC;
  signal delay_player2_n_51 : STD_LOGIC;
  signal delay_player2_n_52 : STD_LOGIC;
  signal delay_player2_n_53 : STD_LOGIC;
  signal delay_player2_n_54 : STD_LOGIC;
  signal delay_player2_n_55 : STD_LOGIC;
  signal delay_player2_n_56 : STD_LOGIC;
  signal delay_player2_n_57 : STD_LOGIC;
  signal delay_player2_n_58 : STD_LOGIC;
  signal delay_player2_n_59 : STD_LOGIC;
  signal delay_player2_n_6 : STD_LOGIC;
  signal delay_player2_n_60 : STD_LOGIC;
  signal delay_player2_n_61 : STD_LOGIC;
  signal delay_player2_n_62 : STD_LOGIC;
  signal delay_player2_n_63 : STD_LOGIC;
  signal delay_player2_n_64 : STD_LOGIC;
  signal delay_player2_n_7 : STD_LOGIC;
  signal delay_player2_n_8 : STD_LOGIC;
  signal delay_player2_n_9 : STD_LOGIC;
  signal delay_player_n_0 : STD_LOGIC;
  signal delay_player_n_29 : STD_LOGIC;
  signal delay_player_n_30 : STD_LOGIC;
  signal delay_player_n_31 : STD_LOGIC;
  signal delay_player_n_32 : STD_LOGIC;
  signal delay_player_n_33 : STD_LOGIC;
  signal delay_player_n_34 : STD_LOGIC;
  signal delay_player_n_35 : STD_LOGIC;
  signal delay_player_n_36 : STD_LOGIC;
  signal delay_player_n_37 : STD_LOGIC;
  signal delay_player_n_38 : STD_LOGIC;
  signal delay_player_n_39 : STD_LOGIC;
  signal delay_player_n_40 : STD_LOGIC;
  signal delay_player_n_41 : STD_LOGIC;
  signal delay_player_n_42 : STD_LOGIC;
  signal delay_player_n_43 : STD_LOGIC;
  signal delay_player_n_44 : STD_LOGIC;
  signal delay_player_n_45 : STD_LOGIC;
  signal delay_player_n_46 : STD_LOGIC;
  signal delay_player_n_47 : STD_LOGIC;
  signal delay_player_n_48 : STD_LOGIC;
  signal delay_player_n_50 : STD_LOGIC;
  signal delay_player_n_51 : STD_LOGIC;
  signal delay_player_n_52 : STD_LOGIC;
  signal delay_player_n_53 : STD_LOGIC;
  signal delay_player_n_54 : STD_LOGIC;
  signal delay_player_n_55 : STD_LOGIC;
  signal delay_player_n_56 : STD_LOGIC;
  signal delay_player_n_58 : STD_LOGIC;
  signal delay_player_n_59 : STD_LOGIC;
  signal delay_player_n_60 : STD_LOGIC;
  signal delay_player_n_61 : STD_LOGIC;
  signal delay_player_n_62 : STD_LOGIC;
  signal delay_player_n_63 : STD_LOGIC;
  signal delay_player_n_64 : STD_LOGIC;
  signal delay_player_n_65 : STD_LOGIC;
  signal delay_player_n_66 : STD_LOGIC;
  signal delay_player_n_67 : STD_LOGIC;
  signal delay_player_n_68 : STD_LOGIC;
  signal delay_player_n_69 : STD_LOGIC;
  signal delay_player_n_70 : STD_LOGIC;
  signal delay_player_n_71 : STD_LOGIC;
  signal delay_player_n_72 : STD_LOGIC;
  signal delay_player_n_73 : STD_LOGIC;
  signal delay_player_n_74 : STD_LOGIC;
  signal delay_player_n_75 : STD_LOGIC;
  signal delay_player_n_76 : STD_LOGIC;
  signal hblnk_delayed : STD_LOGIC;
  signal hcount_delayed : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hcount_delayed2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hsync_delayed : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__0_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__0_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__0_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__0_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__1_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__1_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__1_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__1_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__2_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__2_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__2_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt2_carry__2_n_3\ : STD_LOGIC;
  signal o_rgb_nxt2_carry_i_1_n_0 : STD_LOGIC;
  signal o_rgb_nxt2_carry_i_5_n_0 : STD_LOGIC;
  signal o_rgb_nxt2_carry_n_0 : STD_LOGIC;
  signal o_rgb_nxt2_carry_n_1 : STD_LOGIC;
  signal o_rgb_nxt2_carry_n_2 : STD_LOGIC;
  signal o_rgb_nxt2_carry_n_3 : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__0_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__1_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__1_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__1_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__1_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__2_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__2_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__2_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt3_carry__2_n_3\ : STD_LOGIC;
  signal o_rgb_nxt3_carry_i_1_n_0 : STD_LOGIC;
  signal o_rgb_nxt3_carry_i_5_n_0 : STD_LOGIC;
  signal o_rgb_nxt3_carry_n_0 : STD_LOGIC;
  signal o_rgb_nxt3_carry_n_1 : STD_LOGIC;
  signal o_rgb_nxt3_carry_n_2 : STD_LOGIC;
  signal o_rgb_nxt3_carry_n_3 : STD_LOGIC;
  signal o_rgb_nxt4 : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal \o_rgb_nxt4_carry__0_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__0_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__0_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__0_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__1_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__1_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__1_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__1_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__2_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__2_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__2_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_carry__2_n_3\ : STD_LOGIC;
  signal o_rgb_nxt4_carry_i_1_n_0 : STD_LOGIC;
  signal o_rgb_nxt4_carry_i_5_n_0 : STD_LOGIC;
  signal o_rgb_nxt4_carry_n_0 : STD_LOGIC;
  signal o_rgb_nxt4_carry_n_1 : STD_LOGIC;
  signal o_rgb_nxt4_carry_n_2 : STD_LOGIC;
  signal o_rgb_nxt4_carry_n_3 : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt4_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal o_rgb_nxt5 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \o_rgb_nxt5_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \o_rgb_nxt5_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vblnk_delayed : STD_LOGIC;
  signal vcount_delayed : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vsync_delayed : STD_LOGIC;
  signal \NLW_addrx_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addrx_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_addry_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addry_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_o_rgb_nxt2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_o_rgb_nxt3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_o_rgb_nxt4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_o_rgb_nxt4_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_rgb_nxt4_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt4_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_rgb_nxt5_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_o_rgb_nxt5_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
addrx_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addrx_carry_n_0,
      CO(2) => addrx_carry_n_1,
      CO(1) => addrx_carry_n_2,
      CO(0) => addrx_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => hcount_delayed2(3 downto 0),
      O(3 downto 0) => o_rom_addr(3 downto 0),
      S(3) => delay_player2_n_36,
      S(2) => delay_player2_n_37,
      S(1) => delay_player2_n_38,
      S(0) => delay_player2_n_39
    );
\addrx_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addrx_carry_n_0,
      CO(3 downto 1) => \NLW_addrx_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addrx_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => hcount_delayed2(4),
      O(3 downto 2) => \NLW_addrx_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => o_rom_addr(5 downto 4),
      S(3 downto 2) => B"00",
      S(1) => delay_player2_n_40,
      S(0) => delay_player2_n_41
    );
addry_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addry_carry_n_0,
      CO(2) => addry_carry_n_1,
      CO(1) => addry_carry_n_2,
      CO(0) => addry_carry_n_3,
      CYINIT => '1',
      DI(3) => addry_carry_i_1_n_0,
      DI(2) => i_data(12),
      DI(1) => delay_player2_n_10,
      DI(0) => delay_player2_n_11,
      O(3 downto 0) => o_rom_addr(9 downto 6),
      S(3) => delay_player2_n_44,
      S(2) => delay_player2_n_45,
      S(1) => delay_player2_n_46,
      S(0) => delay_player2_n_47
    );
\addry_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addry_carry_n_0,
      CO(3 downto 1) => \NLW_addry_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addry_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => delay_player2_n_48,
      O(3 downto 2) => \NLW_addry_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => o_rom_addr(11 downto 10),
      S(3 downto 2) => B"00",
      S(1) => delay_player2_n_42,
      S(0) => delay_player2_n_43
    );
addry_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_data(12),
      O => addry_carry_i_1_n_0
    );
delay_player: entity work.design_1_player_draw_0_0_delay
     port map (
      CO(0) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      D(15 downto 0) => D(15 downto 0),
      DI(3) => o_rgb_nxt5(31),
      DI(2) => delay_player_n_50,
      DI(1) => delay_player_n_51,
      DI(0) => delay_player_n_52,
      Q(39) => hblnk_delayed,
      Q(38) => hsync_delayed,
      Q(37) => vblnk_delayed,
      Q(36) => vsync_delayed,
      Q(35 downto 24) => hcount_delayed(11 downto 0),
      Q(23 downto 12) => vcount_delayed(11 downto 0),
      Q(11) => delay_player_n_29,
      Q(10) => delay_player_n_30,
      Q(9) => delay_player_n_31,
      Q(8) => delay_player_n_32,
      Q(7) => delay_player_n_33,
      Q(6) => delay_player_n_34,
      Q(5) => delay_player_n_35,
      Q(4) => delay_player_n_36,
      Q(3) => delay_player_n_37,
      Q(2) => delay_player_n_38,
      Q(1) => delay_player_n_39,
      Q(0) => delay_player_n_40,
      S(2) => delay_player_n_41,
      S(1) => delay_player_n_42,
      S(0) => delay_player_n_43,
      SR(0) => delay_player_n_0,
      \del_mem_reg[0][17]_0\(11 downto 6) => hcount_delayed2(5 downto 0),
      \del_mem_reg[0][17]_0\(5) => delay_player2_n_6,
      \del_mem_reg[0][17]_0\(4) => delay_player2_n_7,
      \del_mem_reg[0][17]_0\(3) => delay_player2_n_8,
      \del_mem_reg[0][17]_0\(2) => delay_player2_n_9,
      \del_mem_reg[0][17]_0\(1) => delay_player2_n_10,
      \del_mem_reg[0][17]_0\(0) => delay_player2_n_11,
      \del_mem_reg[0][27]\(3 downto 0) => data_delayed(3 downto 0),
      \delay_stage[1].del_mem_reg[1][47]_0\(0) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      i_hcount(5 downto 0) => i_hcount(11 downto 6),
      i_pclk => i_pclk,
      i_rst => i_rst,
      i_vcount(5 downto 0) => i_vcount(11 downto 6),
      \o_rgb_reg[0]\(3) => delay_player_n_44,
      \o_rgb_reg[0]\(2) => delay_player_n_45,
      \o_rgb_reg[0]\(1) => delay_player_n_46,
      \o_rgb_reg[0]\(0) => delay_player_n_47,
      \o_rgb_reg[0]_0\(0) => delay_player_n_48,
      \o_rgb_reg[0]_1\(2) => delay_player_n_53,
      \o_rgb_reg[0]_1\(1) => delay_player_n_54,
      \o_rgb_reg[0]_1\(0) => delay_player_n_55,
      \o_rgb_reg[0]_2\(0) => delay_player_n_56,
      \o_rgb_reg[0]_3\(3) => o_rgb_nxt4(31),
      \o_rgb_reg[0]_3\(2) => delay_player_n_58,
      \o_rgb_reg[0]_3\(1) => delay_player_n_59,
      \o_rgb_reg[0]_3\(0) => delay_player_n_60,
      \o_rgb_reg[0]_4\(1) => delay_player_n_61,
      \o_rgb_reg[0]_4\(0) => delay_player_n_62,
      \o_rgb_reg[0]_5\(1) => delay_player_n_63,
      \o_rgb_reg[0]_5\(0) => delay_player_n_64,
      \o_rgb_reg[0]_6\(1) => delay_player_n_65,
      \o_rgb_reg[0]_6\(0) => delay_player_n_66,
      \o_rgb_reg[0]_7\(3) => delay_player_n_67,
      \o_rgb_reg[0]_7\(2) => delay_player_n_68,
      \o_rgb_reg[0]_7\(1) => delay_player_n_69,
      \o_rgb_reg[0]_7\(0) => delay_player_n_70,
      \o_rgb_reg[0]_8\(1) => delay_player_n_71,
      \o_rgb_reg[0]_8\(0) => delay_player_n_72,
      \o_rgb_reg[0]_9\(3) => delay_player_n_73,
      \o_rgb_reg[0]_9\(2) => delay_player_n_74,
      \o_rgb_reg[0]_9\(1) => delay_player_n_75,
      \o_rgb_reg[0]_9\(0) => delay_player_n_76
    );
delay_player2: entity work.\design_1_player_draw_0_0_delay__parameterized0\
     port map (
      DI(1) => delay_player2_n_32,
      DI(0) => delay_player2_n_33,
      Q(15 downto 8) => p_0_in(9 downto 2),
      Q(7 downto 4) => data_delayed(9 downto 6),
      Q(3 downto 0) => data_delayed(3 downto 0),
      S(1) => delay_player2_n_12,
      S(0) => delay_player2_n_13,
      \delay_stage[1].del_mem_reg[1][40]\(5 downto 1) => hcount_delayed(4 downto 0),
      \delay_stage[1].del_mem_reg[1][40]\(0) => vcount_delayed(0),
      \delay_stage[1].del_mem_reg[1][41]\(11 downto 6) => hcount_delayed2(5 downto 0),
      \delay_stage[1].del_mem_reg[1][41]\(5) => delay_player2_n_6,
      \delay_stage[1].del_mem_reg[1][41]\(4) => delay_player2_n_7,
      \delay_stage[1].del_mem_reg[1][41]\(3) => delay_player2_n_8,
      \delay_stage[1].del_mem_reg[1][41]\(2) => delay_player2_n_9,
      \delay_stage[1].del_mem_reg[1][41]\(1) => delay_player2_n_10,
      \delay_stage[1].del_mem_reg[1][41]\(0) => delay_player2_n_11,
      i_data(19 downto 0) => i_data(19 downto 0),
      i_hcount(5 downto 0) => i_hcount(5 downto 0),
      i_pclk => i_pclk,
      i_rst => i_rst,
      i_vcount(5 downto 0) => i_vcount(5 downto 0),
      o_rgb_nxt4(4 downto 1) => o_rgb_nxt4(11 downto 8),
      o_rgb_nxt4(0) => o_rgb_nxt4(5),
      o_rgb_nxt5(8 downto 5) => o_rgb_nxt5(11 downto 8),
      o_rgb_nxt5(4 downto 0) => o_rgb_nxt5(5 downto 1),
      \o_rgb_reg[0]\(1) => delay_player2_n_30,
      \o_rgb_reg[0]\(0) => delay_player2_n_31,
      \o_rgb_reg[0]_0\(1) => delay_player2_n_34,
      \o_rgb_reg[0]_0\(0) => delay_player2_n_35,
      \o_rgb_reg[0]_1\(2) => delay_player2_n_49,
      \o_rgb_reg[0]_1\(1) => delay_player2_n_50,
      \o_rgb_reg[0]_1\(0) => delay_player2_n_51,
      \o_rgb_reg[0]_2\(2) => delay_player2_n_52,
      \o_rgb_reg[0]_2\(1) => delay_player2_n_53,
      \o_rgb_reg[0]_2\(0) => delay_player2_n_54,
      \o_rgb_reg[0]_3\(0) => delay_player2_n_55,
      \o_rgb_reg[0]_4\(0) => delay_player2_n_56,
      \o_rgb_reg[0]_5\(2) => delay_player2_n_57,
      \o_rgb_reg[0]_5\(1) => delay_player2_n_58,
      \o_rgb_reg[0]_5\(0) => delay_player2_n_59,
      \o_rgb_reg[0]_6\(2) => delay_player2_n_60,
      \o_rgb_reg[0]_6\(1) => delay_player2_n_61,
      \o_rgb_reg[0]_6\(0) => delay_player2_n_62,
      \o_rgb_reg[0]_7\(0) => delay_player2_n_63,
      \o_rgb_reg[0]_8\(0) => delay_player2_n_64,
      \o_rom_addr[10]\(1) => delay_player2_n_42,
      \o_rom_addr[10]\(0) => delay_player2_n_43,
      \o_rom_addr[10]_0\(3) => delay_player2_n_44,
      \o_rom_addr[10]_0\(2) => delay_player2_n_45,
      \o_rom_addr[10]_0\(1) => delay_player2_n_46,
      \o_rom_addr[10]_0\(0) => delay_player2_n_47,
      \o_rom_addr[10]_1\(0) => delay_player2_n_48,
      \o_rom_addr[4]\(3) => delay_player2_n_36,
      \o_rom_addr[4]\(2) => delay_player2_n_37,
      \o_rom_addr[4]\(1) => delay_player2_n_38,
      \o_rom_addr[4]\(0) => delay_player2_n_39,
      \o_rom_addr[4]_0\(1) => delay_player2_n_40,
      \o_rom_addr[4]_0\(0) => delay_player2_n_41
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => o_rgb_nxt5(10),
      I1 => o_rgb_nxt5(11),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => o_rgb_nxt5(8),
      I1 => p_0_in(8),
      I2 => p_0_in(9),
      I3 => o_rgb_nxt5(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => o_rgb_nxt5(10),
      I1 => o_rgb_nxt5(11),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => o_rgb_nxt5(8),
      I1 => p_0_in(8),
      I2 => o_rgb_nxt5(9),
      I3 => p_0_in(9),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => o_rgb_nxt5(6),
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      I3 => o_rgb_nxt5(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => o_rgb_nxt5(4),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => o_rgb_nxt5(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => o_rgb_nxt5(2),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => o_rgb_nxt5(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => o_rgb_nxt5(6),
      I1 => p_0_in(6),
      I2 => o_rgb_nxt5(7),
      I3 => p_0_in(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => o_rgb_nxt5(4),
      I1 => p_0_in(4),
      I2 => o_rgb_nxt5(5),
      I3 => p_0_in(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => o_rgb_nxt5(2),
      I1 => p_0_in(2),
      I2 => o_rgb_nxt5(3),
      I3 => p_0_in(3),
      O => \i__carry_i_7_n_0\
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
\o_rgb[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(0),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_40,
      O => p_1_in(0)
    );
\o_rgb[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(10),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_30,
      O => p_1_in(10)
    );
\o_rgb[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(11),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_29,
      O => p_1_in(11)
    );
\o_rgb[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(1),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_39,
      O => p_1_in(1)
    );
\o_rgb[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(2),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_38,
      O => p_1_in(2)
    );
\o_rgb[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(3),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_37,
      O => p_1_in(3)
    );
\o_rgb[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(4),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_36,
      O => p_1_in(4)
    );
\o_rgb[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(5),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_35,
      O => p_1_in(5)
    );
\o_rgb[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(6),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_34,
      O => p_1_in(6)
    );
\o_rgb[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(7),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_33,
      O => p_1_in(7)
    );
\o_rgb[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(8),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_32,
      O => p_1_in(8)
    );
\o_rgb[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_rom_rgb(9),
      I1 => \o_rgb_nxt4_carry__2_n_0\,
      I2 => \o_rgb_nxt3_carry__2_n_0\,
      I3 => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      I4 => \o_rgb_nxt2_carry__2_n_0\,
      I5 => delay_player_n_31,
      O => p_1_in(9)
    );
o_rgb_nxt2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_rgb_nxt2_carry_n_0,
      CO(2) => o_rgb_nxt2_carry_n_1,
      CO(1) => o_rgb_nxt2_carry_n_2,
      CO(0) => o_rgb_nxt2_carry_n_3,
      CYINIT => '0',
      DI(3) => o_rgb_nxt2_carry_i_1_n_0,
      DI(2) => delay_player2_n_60,
      DI(1) => delay_player2_n_61,
      DI(0) => delay_player2_n_62,
      O(3 downto 0) => NLW_o_rgb_nxt2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_rgb_nxt2_carry_i_5_n_0,
      S(2) => delay_player2_n_57,
      S(1) => delay_player2_n_58,
      S(0) => delay_player2_n_59
    );
\o_rgb_nxt2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_rgb_nxt2_carry_n_0,
      CO(3) => \o_rgb_nxt2_carry__0_n_0\,
      CO(2) => \o_rgb_nxt2_carry__0_n_1\,
      CO(1) => \o_rgb_nxt2_carry__0_n_2\,
      CO(0) => \o_rgb_nxt2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => delay_player2_n_34,
      DI(0) => delay_player2_n_35,
      O(3 downto 0) => \NLW_o_rgb_nxt2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(2) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(1) => delay_player2_n_30,
      S(0) => delay_player2_n_31
    );
\o_rgb_nxt2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt2_carry__0_n_0\,
      CO(3) => \o_rgb_nxt2_carry__1_n_0\,
      CO(2) => \o_rgb_nxt2_carry__1_n_1\,
      CO(1) => \o_rgb_nxt2_carry__1_n_2\,
      CO(0) => \o_rgb_nxt2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_rgb_nxt2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(2) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(1) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(0) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\
    );
\o_rgb_nxt2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt2_carry__1_n_0\,
      CO(3) => \o_rgb_nxt2_carry__2_n_0\,
      CO(2) => \o_rgb_nxt2_carry__2_n_1\,
      CO(1) => \o_rgb_nxt2_carry__2_n_2\,
      CO(0) => \o_rgb_nxt2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_rgb_nxt2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(2) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(1) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(0) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\
    );
o_rgb_nxt2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0731"
    )
        port map (
      I0 => o_rgb_nxt4(6),
      I1 => o_rgb_nxt4(7),
      I2 => data_delayed(6),
      I3 => data_delayed(7),
      O => o_rgb_nxt2_carry_i_1_n_0
    );
o_rgb_nxt2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => o_rgb_nxt4(6),
      I1 => data_delayed(6),
      I2 => data_delayed(7),
      I3 => o_rgb_nxt4(7),
      O => o_rgb_nxt2_carry_i_5_n_0
    );
o_rgb_nxt3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_rgb_nxt3_carry_n_0,
      CO(2) => o_rgb_nxt3_carry_n_1,
      CO(1) => o_rgb_nxt3_carry_n_2,
      CO(0) => o_rgb_nxt3_carry_n_3,
      CYINIT => '1',
      DI(3) => o_rgb_nxt3_carry_i_1_n_0,
      DI(2) => delay_player2_n_56,
      DI(1) => delay_player_n_63,
      DI(0) => delay_player_n_64,
      O(3 downto 0) => NLW_o_rgb_nxt3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_rgb_nxt3_carry_i_5_n_0,
      S(2) => delay_player2_n_55,
      S(1) => delay_player_n_61,
      S(0) => delay_player_n_62
    );
\o_rgb_nxt3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_rgb_nxt3_carry_n_0,
      CO(3) => \o_rgb_nxt3_carry__0_n_0\,
      CO(2) => \o_rgb_nxt3_carry__0_n_1\,
      CO(1) => \o_rgb_nxt3_carry__0_n_2\,
      CO(0) => \o_rgb_nxt3_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => delay_player_n_65,
      DI(2) => delay_player_n_66,
      DI(1) => \o_rgb_nxt3_carry__0_i_3_n_0\,
      DI(0) => \o_rgb_nxt3_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_o_rgb_nxt3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(2) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(1) => \o_rgb_nxt3_carry__0_i_5_n_0\,
      S(0) => \o_rgb_nxt3_carry__0_i_6_n_0\
    );
\o_rgb_nxt3_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => o_rgb_nxt4(10),
      I1 => o_rgb_nxt4(11),
      O => \o_rgb_nxt3_carry__0_i_3_n_0\
    );
\o_rgb_nxt3_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => o_rgb_nxt4(8),
      I1 => data_delayed(8),
      I2 => data_delayed(9),
      I3 => o_rgb_nxt4(9),
      O => \o_rgb_nxt3_carry__0_i_4_n_0\
    );
\o_rgb_nxt3_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => o_rgb_nxt4(10),
      I1 => o_rgb_nxt4(11),
      O => \o_rgb_nxt3_carry__0_i_5_n_0\
    );
\o_rgb_nxt3_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => o_rgb_nxt4(8),
      I1 => data_delayed(8),
      I2 => o_rgb_nxt4(9),
      I3 => data_delayed(9),
      O => \o_rgb_nxt3_carry__0_i_6_n_0\
    );
\o_rgb_nxt3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt3_carry__0_n_0\,
      CO(3) => \o_rgb_nxt3_carry__1_n_0\,
      CO(2) => \o_rgb_nxt3_carry__1_n_1\,
      CO(1) => \o_rgb_nxt3_carry__1_n_2\,
      CO(0) => \o_rgb_nxt3_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => delay_player_n_67,
      DI(2) => delay_player_n_68,
      DI(1) => delay_player_n_69,
      DI(0) => delay_player_n_70,
      O(3 downto 0) => \NLW_o_rgb_nxt3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(2) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(1) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(0) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\
    );
\o_rgb_nxt3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt3_carry__1_n_0\,
      CO(3) => \o_rgb_nxt3_carry__2_n_0\,
      CO(2) => \o_rgb_nxt3_carry__2_n_1\,
      CO(1) => \o_rgb_nxt3_carry__2_n_2\,
      CO(0) => \o_rgb_nxt3_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => o_rgb_nxt4(31),
      DI(2) => delay_player_n_58,
      DI(1) => delay_player_n_59,
      DI(0) => delay_player_n_60,
      O(3 downto 0) => \NLW_o_rgb_nxt3_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(2) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(1) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      S(0) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\
    );
o_rgb_nxt3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => o_rgb_nxt4(6),
      I1 => data_delayed(6),
      I2 => data_delayed(7),
      I3 => o_rgb_nxt4(7),
      O => o_rgb_nxt3_carry_i_1_n_0
    );
o_rgb_nxt3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => o_rgb_nxt4(6),
      I1 => data_delayed(6),
      I2 => o_rgb_nxt4(7),
      I3 => data_delayed(7),
      O => o_rgb_nxt3_carry_i_5_n_0
    );
o_rgb_nxt4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_rgb_nxt4_carry_n_0,
      CO(2) => o_rgb_nxt4_carry_n_1,
      CO(1) => o_rgb_nxt4_carry_n_2,
      CO(0) => o_rgb_nxt4_carry_n_3,
      CYINIT => '0',
      DI(3) => o_rgb_nxt4_carry_i_1_n_0,
      DI(2) => delay_player2_n_52,
      DI(1) => delay_player2_n_53,
      DI(0) => delay_player2_n_54,
      O(3 downto 0) => NLW_o_rgb_nxt4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_rgb_nxt4_carry_i_5_n_0,
      S(2) => delay_player2_n_49,
      S(1) => delay_player2_n_50,
      S(0) => delay_player2_n_51
    );
\o_rgb_nxt4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_rgb_nxt4_carry_n_0,
      CO(3) => \o_rgb_nxt4_carry__0_n_0\,
      CO(2) => \o_rgb_nxt4_carry__0_n_1\,
      CO(1) => \o_rgb_nxt4_carry__0_n_2\,
      CO(0) => \o_rgb_nxt4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => delay_player2_n_32,
      DI(0) => delay_player2_n_33,
      O(3 downto 0) => \NLW_o_rgb_nxt4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(2) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(1) => delay_player2_n_12,
      S(0) => delay_player2_n_13
    );
\o_rgb_nxt4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt4_carry__0_n_0\,
      CO(3) => \o_rgb_nxt4_carry__1_n_0\,
      CO(2) => \o_rgb_nxt4_carry__1_n_1\,
      CO(1) => \o_rgb_nxt4_carry__1_n_2\,
      CO(0) => \o_rgb_nxt4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_rgb_nxt4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(2) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(1) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(0) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\
    );
\o_rgb_nxt4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt4_carry__1_n_0\,
      CO(3) => \o_rgb_nxt4_carry__2_n_0\,
      CO(2) => \o_rgb_nxt4_carry__2_n_1\,
      CO(1) => \o_rgb_nxt4_carry__2_n_2\,
      CO(0) => \o_rgb_nxt4_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_rgb_nxt4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(2) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(1) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(0) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\
    );
o_rgb_nxt4_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0731"
    )
        port map (
      I0 => o_rgb_nxt5(6),
      I1 => o_rgb_nxt5(7),
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      O => o_rgb_nxt4_carry_i_1_n_0
    );
o_rgb_nxt4_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => o_rgb_nxt5(6),
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      I3 => o_rgb_nxt5(7),
      O => o_rgb_nxt4_carry_i_5_n_0
    );
\o_rgb_nxt4_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_rgb_nxt4_inferred__0/i__carry_n_0\,
      CO(2) => \o_rgb_nxt4_inferred__0/i__carry_n_1\,
      CO(1) => \o_rgb_nxt4_inferred__0/i__carry_n_2\,
      CO(0) => \o_rgb_nxt4_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => hcount_delayed(6),
      DI(0) => '0',
      O(3 downto 0) => o_rgb_nxt4(8 downto 5),
      S(3 downto 2) => hcount_delayed(8 downto 7),
      S(1) => delay_player_n_56,
      S(0) => hcount_delayed(5)
    );
\o_rgb_nxt4_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt4_inferred__0/i__carry_n_0\,
      CO(3) => \o_rgb_nxt4_inferred__0/i__carry__0_n_0\,
      CO(2) => \NLW_o_rgb_nxt4_inferred__0/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \o_rgb_nxt4_inferred__0/i__carry__0_n_2\,
      CO(0) => \o_rgb_nxt4_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => hcount_delayed(11 downto 9),
      O(3) => \NLW_o_rgb_nxt4_inferred__0/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => o_rgb_nxt4(11 downto 9),
      S(3) => '1',
      S(2) => delay_player_n_53,
      S(1) => delay_player_n_54,
      S(0) => delay_player_n_55
    );
\o_rgb_nxt4_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_rgb_nxt4_inferred__1/i__carry_n_0\,
      CO(2) => \o_rgb_nxt4_inferred__1/i__carry_n_1\,
      CO(1) => \o_rgb_nxt4_inferred__1/i__carry_n_2\,
      CO(0) => \o_rgb_nxt4_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => delay_player2_n_64,
      O(3 downto 0) => \NLW_o_rgb_nxt4_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => delay_player2_n_63
    );
\o_rgb_nxt4_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt4_inferred__1/i__carry_n_0\,
      CO(3) => \o_rgb_nxt4_inferred__1/i__carry__0_n_0\,
      CO(2) => \o_rgb_nxt4_inferred__1/i__carry__0_n_1\,
      CO(1) => \o_rgb_nxt4_inferred__1/i__carry__0_n_2\,
      CO(0) => \o_rgb_nxt4_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => delay_player_n_71,
      DI(2) => delay_player_n_72,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_o_rgb_nxt4_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(2) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\o_rgb_nxt4_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt4_inferred__1/i__carry__0_n_0\,
      CO(3) => \o_rgb_nxt4_inferred__1/i__carry__1_n_0\,
      CO(2) => \o_rgb_nxt4_inferred__1/i__carry__1_n_1\,
      CO(1) => \o_rgb_nxt4_inferred__1/i__carry__1_n_2\,
      CO(0) => \o_rgb_nxt4_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => delay_player_n_73,
      DI(2) => delay_player_n_74,
      DI(1) => delay_player_n_75,
      DI(0) => delay_player_n_76,
      O(3 downto 0) => \NLW_o_rgb_nxt4_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(2) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(1) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(0) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\
    );
\o_rgb_nxt4_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt4_inferred__1/i__carry__1_n_0\,
      CO(3) => \o_rgb_nxt4_inferred__1/i__carry__2_n_0\,
      CO(2) => \o_rgb_nxt4_inferred__1/i__carry__2_n_1\,
      CO(1) => \o_rgb_nxt4_inferred__1/i__carry__2_n_2\,
      CO(0) => \o_rgb_nxt4_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => o_rgb_nxt5(31),
      DI(2) => delay_player_n_50,
      DI(1) => delay_player_n_51,
      DI(0) => delay_player_n_52,
      O(3 downto 0) => \NLW_o_rgb_nxt4_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(2) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(1) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      S(0) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\
    );
\o_rgb_nxt5_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_rgb_nxt5_inferred__0/i__carry_n_0\,
      CO(2) => \o_rgb_nxt5_inferred__0/i__carry_n_1\,
      CO(1) => \o_rgb_nxt5_inferred__0/i__carry_n_2\,
      CO(0) => \o_rgb_nxt5_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => vcount_delayed(2),
      DI(0) => '0',
      O(3 downto 0) => o_rgb_nxt5(4 downto 1),
      S(3 downto 2) => vcount_delayed(4 downto 3),
      S(1) => delay_player_n_48,
      S(0) => vcount_delayed(1)
    );
\o_rgb_nxt5_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt5_inferred__0/i__carry_n_0\,
      CO(3) => \o_rgb_nxt5_inferred__0/i__carry__0_n_0\,
      CO(2) => \o_rgb_nxt5_inferred__0/i__carry__0_n_1\,
      CO(1) => \o_rgb_nxt5_inferred__0/i__carry__0_n_2\,
      CO(0) => \o_rgb_nxt5_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => vcount_delayed(8 downto 5),
      O(3 downto 0) => o_rgb_nxt5(8 downto 5),
      S(3) => delay_player_n_44,
      S(2) => delay_player_n_45,
      S(1) => delay_player_n_46,
      S(0) => delay_player_n_47
    );
\o_rgb_nxt5_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_rgb_nxt5_inferred__0/i__carry__0_n_0\,
      CO(3) => \o_rgb_nxt5_inferred__0/i__carry__1_n_0\,
      CO(2) => \NLW_o_rgb_nxt5_inferred__0/i__carry__1_CO_UNCONNECTED\(2),
      CO(1) => \o_rgb_nxt5_inferred__0/i__carry__1_n_2\,
      CO(0) => \o_rgb_nxt5_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => vcount_delayed(11 downto 9),
      O(3) => \NLW_o_rgb_nxt5_inferred__0/i__carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => o_rgb_nxt5(11 downto 9),
      S(3) => '1',
      S(2) => delay_player_n_41,
      S(1) => delay_player_n_42,
      S(0) => delay_player_n_43
    );
\o_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(0),
      Q => o_rgb(0),
      R => delay_player_n_0
    );
\o_rgb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(10),
      Q => o_rgb(10),
      R => delay_player_n_0
    );
\o_rgb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(11),
      Q => o_rgb(11),
      R => delay_player_n_0
    );
\o_rgb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(1),
      Q => o_rgb(1),
      R => delay_player_n_0
    );
\o_rgb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(2),
      Q => o_rgb(2),
      R => delay_player_n_0
    );
\o_rgb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(3),
      Q => o_rgb(3),
      R => delay_player_n_0
    );
\o_rgb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(4),
      Q => o_rgb(4),
      R => delay_player_n_0
    );
\o_rgb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(5),
      Q => o_rgb(5),
      R => delay_player_n_0
    );
\o_rgb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(6),
      Q => o_rgb(6),
      R => delay_player_n_0
    );
\o_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(7),
      Q => o_rgb(7),
      R => delay_player_n_0
    );
\o_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(8),
      Q => o_rgb(8),
      R => delay_player_n_0
    );
\o_rgb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => p_1_in(9),
      Q => o_rgb(9),
      R => delay_player_n_0
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
      D => vcount_delayed(0),
      Q => o_vcount(0),
      R => i_rst
    );
\o_vcount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(10),
      Q => o_vcount(10),
      R => i_rst
    );
\o_vcount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(11),
      Q => o_vcount(11),
      R => i_rst
    );
\o_vcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(1),
      Q => o_vcount(1),
      R => i_rst
    );
\o_vcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(2),
      Q => o_vcount(2),
      R => i_rst
    );
\o_vcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(3),
      Q => o_vcount(3),
      R => i_rst
    );
\o_vcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(4),
      Q => o_vcount(4),
      R => i_rst
    );
\o_vcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(5),
      Q => o_vcount(5),
      R => i_rst
    );
\o_vcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(6),
      Q => o_vcount(6),
      R => i_rst
    );
\o_vcount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(7),
      Q => o_vcount(7),
      R => i_rst
    );
\o_vcount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(8),
      Q => o_vcount(8),
      R => i_rst
    );
\o_vcount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => vcount_delayed(9),
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
entity design_1_player_draw_0_0 is
  port (
    i_pclk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_vcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_vsync : in STD_LOGIC;
    i_vblnk : in STD_LOGIC;
    i_hcount : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_hsync : in STD_LOGIC;
    i_hblnk : in STD_LOGIC;
    i_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC;
    o_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_index : out STD_LOGIC;
    o_rom_addr : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_player_draw_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_player_draw_0_0 : entity is "design_1_player_draw_0_0,player_draw,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_player_draw_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_player_draw_0_0 : entity is "player_draw,Vivado 2017.3";
end design_1_player_draw_0_0;

architecture STRUCTURE of design_1_player_draw_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH";
begin
  o_index <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_player_draw_0_0_player_draw
     port map (
      D(15) => i_hblnk,
      D(14) => i_hsync,
      D(13) => i_vblnk,
      D(12) => i_vsync,
      D(11 downto 0) => i_rgb(11 downto 0),
      i_data(19 downto 0) => i_data(19 downto 0),
      i_hcount(11 downto 0) => i_hcount(11 downto 0),
      i_pclk => i_pclk,
      i_rom_rgb(11 downto 0) => i_rom_rgb(11 downto 0),
      i_rst => i_rst,
      i_vcount(11 downto 0) => i_vcount(11 downto 0),
      o_hblnk => o_hblnk,
      o_hcount(11 downto 0) => o_hcount(11 downto 0),
      o_hsync => o_hsync,
      o_rgb(11 downto 0) => o_rgb(11 downto 0),
      o_rom_addr(11 downto 0) => o_rom_addr(11 downto 0),
      o_vblnk => o_vblnk,
      o_vcount(11 downto 0) => o_vcount(11 downto 0),
      o_vsync => o_vsync
    );
end STRUCTURE;
