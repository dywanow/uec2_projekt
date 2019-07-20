// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Jul 19 21:45:58 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_vga_timing_0_0/design_1_vga_timing_0_0_stub.v
// Design      : design_1_vga_timing_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga_timing,Vivado 2017.3" *)
module design_1_vga_timing_0_0(vcount, vsync, vblnk, hcount, hsync, hblnk, pclk, rst)
/* synthesis syn_black_box black_box_pad_pin="vcount[11:0],vsync,vblnk,hcount[11:0],hsync,hblnk,pclk,rst" */;
  output [11:0]vcount;
  output vsync;
  output vblnk;
  output [11:0]hcount;
  output hsync;
  output hblnk;
  input pclk;
  input rst;
endmodule
