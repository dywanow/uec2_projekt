// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Aug 19 16:56:16 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_rom_rgb_mux_0_0/design_1_rom_rgb_mux_0_0_stub.v
// Design      : design_1_rom_rgb_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rom_rgb_mux,Vivado 2017.3" *)
module design_1_rom_rgb_mux_0_0(i_pclk, i_rst, i_sel, i_path_rom_rgb, 
  i_surr_rom_rgb, i_obs1_rom_rgb, i_obs2_rom_rgb, i_bomb_rom_rgb, i_expl_rom_rgb, 
  i_plr1_rom_rgb, i_plr2_rom_rgb, o_rom_rgb)
/* synthesis syn_black_box black_box_pad_pin="i_pclk,i_rst,i_sel[3:0],i_path_rom_rgb[11:0],i_surr_rom_rgb[11:0],i_obs1_rom_rgb[11:0],i_obs2_rom_rgb[11:0],i_bomb_rom_rgb[11:0],i_expl_rom_rgb[11:0],i_plr1_rom_rgb[11:0],i_plr2_rom_rgb[11:0],o_rom_rgb[11:0]" */;
  input i_pclk;
  input i_rst;
  input [3:0]i_sel;
  input [11:0]i_path_rom_rgb;
  input [11:0]i_surr_rom_rgb;
  input [11:0]i_obs1_rom_rgb;
  input [11:0]i_obs2_rom_rgb;
  input [11:0]i_bomb_rom_rgb;
  input [11:0]i_expl_rom_rgb;
  input [11:0]i_plr1_rom_rgb;
  input [11:0]i_plr2_rom_rgb;
  output [11:0]o_rom_rgb;
endmodule
