-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Mon Aug 19 16:55:15 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_vga_timing_0_0/design_1_vga_timing_0_0_stub.vhdl
-- Design      : design_1_vga_timing_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vga_timing_0_0 is
  Port ( 
    i_pclk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    o_vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_vblnk : out STD_LOGIC;
    o_hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_hsync : out STD_LOGIC;
    o_hblnk : out STD_LOGIC
  );

end design_1_vga_timing_0_0;

architecture stub of design_1_vga_timing_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_pclk,i_rst,o_vcount[11:0],o_vsync,o_vblnk,o_hcount[11:0],o_hsync,o_hblnk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga_timing,Vivado 2017.3";
begin
end;
