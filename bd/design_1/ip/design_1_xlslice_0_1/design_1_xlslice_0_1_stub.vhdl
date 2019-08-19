-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Mon Aug 19 16:59:09 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_xlslice_0_1/design_1_xlslice_0_1_stub.vhdl
-- Design      : design_1_xlslice_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xlslice_0_1 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_xlslice_0_1;

architecture stub of design_1_xlslice_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[11:0],Dout[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice_v1_0_1_xlslice,Vivado 2017.3";
begin
end;
