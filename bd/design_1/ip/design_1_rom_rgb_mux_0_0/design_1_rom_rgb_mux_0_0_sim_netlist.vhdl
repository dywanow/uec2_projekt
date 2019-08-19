-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Mon Aug 19 16:56:16 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_rom_rgb_mux_0_0/design_1_rom_rgb_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_rom_rgb_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rom_rgb_mux_0_0_rom_rgb_mux is
  port (
    o_rom_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_rst : in STD_LOGIC;
    i_pclk : in STD_LOGIC;
    i_obs2_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_obs1_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_surr_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_path_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_plr2_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_plr1_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_expl_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_bomb_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rom_rgb_mux_0_0_rom_rgb_mux : entity is "rom_rgb_mux";
end design_1_rom_rgb_mux_0_0_rom_rgb_mux;

architecture STRUCTURE of design_1_rom_rgb_mux_0_0_rom_rgb_mux is
  signal \o_rom_rgb[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[10]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[10]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[11]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[11]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[2]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[4]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[5]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[5]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[8]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[8]_i_3_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[9]_i_2_n_0\ : STD_LOGIC;
  signal \o_rom_rgb[9]_i_3_n_0\ : STD_LOGIC;
begin
\o_rom_rgb[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[0]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[0]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[0]_i_1_n_0\
    );
\o_rom_rgb[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(0),
      I1 => i_obs1_rom_rgb(0),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(0),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(0),
      O => \o_rom_rgb[0]_i_2_n_0\
    );
\o_rom_rgb[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(0),
      I1 => i_plr1_rom_rgb(0),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(0),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(0),
      O => \o_rom_rgb[0]_i_3_n_0\
    );
\o_rom_rgb[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[10]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[10]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[10]_i_1_n_0\
    );
\o_rom_rgb[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(10),
      I1 => i_obs1_rom_rgb(10),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(10),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(10),
      O => \o_rom_rgb[10]_i_2_n_0\
    );
\o_rom_rgb[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(10),
      I1 => i_plr1_rom_rgb(10),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(10),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(10),
      O => \o_rom_rgb[10]_i_3_n_0\
    );
\o_rom_rgb[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[11]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[11]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[11]_i_1_n_0\
    );
\o_rom_rgb[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(11),
      I1 => i_obs1_rom_rgb(11),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(11),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(11),
      O => \o_rom_rgb[11]_i_2_n_0\
    );
\o_rom_rgb[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(11),
      I1 => i_plr1_rom_rgb(11),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(11),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(11),
      O => \o_rom_rgb[11]_i_3_n_0\
    );
\o_rom_rgb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[1]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[1]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[1]_i_1_n_0\
    );
\o_rom_rgb[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(1),
      I1 => i_obs1_rom_rgb(1),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(1),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(1),
      O => \o_rom_rgb[1]_i_2_n_0\
    );
\o_rom_rgb[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(1),
      I1 => i_plr1_rom_rgb(1),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(1),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(1),
      O => \o_rom_rgb[1]_i_3_n_0\
    );
\o_rom_rgb[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[2]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[2]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[2]_i_1_n_0\
    );
\o_rom_rgb[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(2),
      I1 => i_obs1_rom_rgb(2),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(2),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(2),
      O => \o_rom_rgb[2]_i_2_n_0\
    );
\o_rom_rgb[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(2),
      I1 => i_plr1_rom_rgb(2),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(2),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(2),
      O => \o_rom_rgb[2]_i_3_n_0\
    );
\o_rom_rgb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[3]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[3]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[3]_i_1_n_0\
    );
\o_rom_rgb[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(3),
      I1 => i_obs1_rom_rgb(3),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(3),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(3),
      O => \o_rom_rgb[3]_i_2_n_0\
    );
\o_rom_rgb[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(3),
      I1 => i_plr1_rom_rgb(3),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(3),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(3),
      O => \o_rom_rgb[3]_i_3_n_0\
    );
\o_rom_rgb[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[4]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[4]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[4]_i_1_n_0\
    );
\o_rom_rgb[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(4),
      I1 => i_obs1_rom_rgb(4),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(4),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(4),
      O => \o_rom_rgb[4]_i_2_n_0\
    );
\o_rom_rgb[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(4),
      I1 => i_plr1_rom_rgb(4),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(4),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(4),
      O => \o_rom_rgb[4]_i_3_n_0\
    );
\o_rom_rgb[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[5]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[5]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[5]_i_1_n_0\
    );
\o_rom_rgb[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(5),
      I1 => i_obs1_rom_rgb(5),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(5),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(5),
      O => \o_rom_rgb[5]_i_2_n_0\
    );
\o_rom_rgb[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(5),
      I1 => i_plr1_rom_rgb(5),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(5),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(5),
      O => \o_rom_rgb[5]_i_3_n_0\
    );
\o_rom_rgb[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[6]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[6]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[6]_i_1_n_0\
    );
\o_rom_rgb[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(6),
      I1 => i_obs1_rom_rgb(6),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(6),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(6),
      O => \o_rom_rgb[6]_i_2_n_0\
    );
\o_rom_rgb[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(6),
      I1 => i_plr1_rom_rgb(6),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(6),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(6),
      O => \o_rom_rgb[6]_i_3_n_0\
    );
\o_rom_rgb[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[7]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[7]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[7]_i_1_n_0\
    );
\o_rom_rgb[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(7),
      I1 => i_obs1_rom_rgb(7),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(7),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(7),
      O => \o_rom_rgb[7]_i_2_n_0\
    );
\o_rom_rgb[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(7),
      I1 => i_plr1_rom_rgb(7),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(7),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(7),
      O => \o_rom_rgb[7]_i_3_n_0\
    );
\o_rom_rgb[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[8]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[8]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[8]_i_1_n_0\
    );
\o_rom_rgb[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(8),
      I1 => i_obs1_rom_rgb(8),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(8),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(8),
      O => \o_rom_rgb[8]_i_2_n_0\
    );
\o_rom_rgb[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(8),
      I1 => i_plr1_rom_rgb(8),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(8),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(8),
      O => \o_rom_rgb[8]_i_3_n_0\
    );
\o_rom_rgb[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \o_rom_rgb[9]_i_2_n_0\,
      I1 => i_sel(2),
      I2 => \o_rom_rgb[9]_i_3_n_0\,
      I3 => i_sel(3),
      O => \o_rom_rgb[9]_i_1_n_0\
    );
\o_rom_rgb[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_obs2_rom_rgb(9),
      I1 => i_obs1_rom_rgb(9),
      I2 => i_sel(1),
      I3 => i_surr_rom_rgb(9),
      I4 => i_sel(0),
      I5 => i_path_rom_rgb(9),
      O => \o_rom_rgb[9]_i_2_n_0\
    );
\o_rom_rgb[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_plr2_rom_rgb(9),
      I1 => i_plr1_rom_rgb(9),
      I2 => i_sel(1),
      I3 => i_expl_rom_rgb(9),
      I4 => i_sel(0),
      I5 => i_bomb_rom_rgb(9),
      O => \o_rom_rgb[9]_i_3_n_0\
    );
\o_rom_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[0]_i_1_n_0\,
      Q => o_rom_rgb(0),
      R => i_rst
    );
\o_rom_rgb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[10]_i_1_n_0\,
      Q => o_rom_rgb(10),
      R => i_rst
    );
\o_rom_rgb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[11]_i_1_n_0\,
      Q => o_rom_rgb(11),
      R => i_rst
    );
\o_rom_rgb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[1]_i_1_n_0\,
      Q => o_rom_rgb(1),
      R => i_rst
    );
\o_rom_rgb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[2]_i_1_n_0\,
      Q => o_rom_rgb(2),
      R => i_rst
    );
\o_rom_rgb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[3]_i_1_n_0\,
      Q => o_rom_rgb(3),
      R => i_rst
    );
\o_rom_rgb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[4]_i_1_n_0\,
      Q => o_rom_rgb(4),
      R => i_rst
    );
\o_rom_rgb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[5]_i_1_n_0\,
      Q => o_rom_rgb(5),
      R => i_rst
    );
\o_rom_rgb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[6]_i_1_n_0\,
      Q => o_rom_rgb(6),
      R => i_rst
    );
\o_rom_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[7]_i_1_n_0\,
      Q => o_rom_rgb(7),
      R => i_rst
    );
\o_rom_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[8]_i_1_n_0\,
      Q => o_rom_rgb(8),
      R => i_rst
    );
\o_rom_rgb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_pclk,
      CE => '1',
      D => \o_rom_rgb[9]_i_1_n_0\,
      Q => o_rom_rgb(9),
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rom_rgb_mux_0_0 is
  port (
    i_pclk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_path_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_surr_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_obs1_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_obs2_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_bomb_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_expl_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_plr1_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_plr2_rom_rgb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_rom_rgb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rom_rgb_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rom_rgb_mux_0_0 : entity is "design_1_rom_rgb_mux_0_0,rom_rgb_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_rom_rgb_mux_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_rom_rgb_mux_0_0 : entity is "rom_rgb_mux,Vivado 2017.3";
end design_1_rom_rgb_mux_0_0;

architecture STRUCTURE of design_1_rom_rgb_mux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH";
begin
inst: entity work.design_1_rom_rgb_mux_0_0_rom_rgb_mux
     port map (
      i_bomb_rom_rgb(11 downto 0) => i_bomb_rom_rgb(11 downto 0),
      i_expl_rom_rgb(11 downto 0) => i_expl_rom_rgb(11 downto 0),
      i_obs1_rom_rgb(11 downto 0) => i_obs1_rom_rgb(11 downto 0),
      i_obs2_rom_rgb(11 downto 0) => i_obs2_rom_rgb(11 downto 0),
      i_path_rom_rgb(11 downto 0) => i_path_rom_rgb(11 downto 0),
      i_pclk => i_pclk,
      i_plr1_rom_rgb(11 downto 0) => i_plr1_rom_rgb(11 downto 0),
      i_plr2_rom_rgb(11 downto 0) => i_plr2_rom_rgb(11 downto 0),
      i_rst => i_rst,
      i_sel(3 downto 0) => i_sel(3 downto 0),
      i_surr_rom_rgb(11 downto 0) => i_surr_rom_rgb(11 downto 0),
      o_rom_rgb(11 downto 0) => o_rom_rgb(11 downto 0)
    );
end STRUCTURE;
