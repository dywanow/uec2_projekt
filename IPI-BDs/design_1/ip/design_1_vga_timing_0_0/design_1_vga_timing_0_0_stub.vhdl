-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Jul 19 21:45:58 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_vga_timing_0_0/design_1_vga_timing_0_0_stub.vhdl
-- Design      : design_1_vga_timing_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vga_timing_0_0 is
  Port ( 
    vcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vsync : out STD_LOGIC;
    vblnk : out STD_LOGIC;
    hcount : out STD_LOGIC_VECTOR ( 11 downto 0 );
    hsync : out STD_LOGIC;
    hblnk : out STD_LOGIC;
    pclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end design_1_vga_timing_0_0;

architecture stub of design_1_vga_timing_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vcount[11:0],vsync,vblnk,hcount[11:0],hsync,hblnk,pclk,rst";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga_timing,Vivado 2017.3";
begin
end;
