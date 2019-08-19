-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Mon Aug 19 16:59:12 2019
-- Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_xlslice_0_2/design_1_xlslice_0_2_sim_netlist.vhdl
-- Design      : design_1_xlslice_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xlslice_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xlslice_0_2 : entity is "design_1_xlslice_0_2,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xlslice_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xlslice_0_2 : entity is "xlslice_v1_0_1_xlslice,Vivado 2017.3";
end design_1_xlslice_0_2;

architecture STRUCTURE of design_1_xlslice_0_2 is
  signal \^din\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  Dout(3 downto 0) <= \^din\(11 downto 8);
  \^din\(11 downto 8) <= Din(11 downto 8);
end STRUCTURE;
