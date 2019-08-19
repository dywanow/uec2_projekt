// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Aug 19 16:56:16 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_rom_rgb_mux_0_0/design_1_rom_rgb_mux_0_0_sim_netlist.v
// Design      : design_1_rom_rgb_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rom_rgb_mux_0_0,rom_rgb_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "rom_rgb_mux,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module design_1_rom_rgb_mux_0_0
   (i_pclk,
    i_rst,
    i_sel,
    i_path_rom_rgb,
    i_surr_rom_rgb,
    i_obs1_rom_rgb,
    i_obs2_rom_rgb,
    i_bomb_rom_rgb,
    i_expl_rom_rgb,
    i_plr1_rom_rgb,
    i_plr2_rom_rgb,
    o_rom_rgb);
  input i_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH" *) input i_rst;
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

  wire [11:0]i_bomb_rom_rgb;
  wire [11:0]i_expl_rom_rgb;
  wire [11:0]i_obs1_rom_rgb;
  wire [11:0]i_obs2_rom_rgb;
  wire [11:0]i_path_rom_rgb;
  wire i_pclk;
  wire [11:0]i_plr1_rom_rgb;
  wire [11:0]i_plr2_rom_rgb;
  wire i_rst;
  wire [3:0]i_sel;
  wire [11:0]i_surr_rom_rgb;
  wire [11:0]o_rom_rgb;

  design_1_rom_rgb_mux_0_0_rom_rgb_mux inst
       (.i_bomb_rom_rgb(i_bomb_rom_rgb),
        .i_expl_rom_rgb(i_expl_rom_rgb),
        .i_obs1_rom_rgb(i_obs1_rom_rgb),
        .i_obs2_rom_rgb(i_obs2_rom_rgb),
        .i_path_rom_rgb(i_path_rom_rgb),
        .i_pclk(i_pclk),
        .i_plr1_rom_rgb(i_plr1_rom_rgb),
        .i_plr2_rom_rgb(i_plr2_rom_rgb),
        .i_rst(i_rst),
        .i_sel(i_sel),
        .i_surr_rom_rgb(i_surr_rom_rgb),
        .o_rom_rgb(o_rom_rgb));
endmodule

(* ORIG_REF_NAME = "rom_rgb_mux" *) 
module design_1_rom_rgb_mux_0_0_rom_rgb_mux
   (o_rom_rgb,
    i_sel,
    i_rst,
    i_pclk,
    i_obs2_rom_rgb,
    i_obs1_rom_rgb,
    i_surr_rom_rgb,
    i_path_rom_rgb,
    i_plr2_rom_rgb,
    i_plr1_rom_rgb,
    i_expl_rom_rgb,
    i_bomb_rom_rgb);
  output [11:0]o_rom_rgb;
  input [3:0]i_sel;
  input i_rst;
  input i_pclk;
  input [11:0]i_obs2_rom_rgb;
  input [11:0]i_obs1_rom_rgb;
  input [11:0]i_surr_rom_rgb;
  input [11:0]i_path_rom_rgb;
  input [11:0]i_plr2_rom_rgb;
  input [11:0]i_plr1_rom_rgb;
  input [11:0]i_expl_rom_rgb;
  input [11:0]i_bomb_rom_rgb;

  wire [11:0]i_bomb_rom_rgb;
  wire [11:0]i_expl_rom_rgb;
  wire [11:0]i_obs1_rom_rgb;
  wire [11:0]i_obs2_rom_rgb;
  wire [11:0]i_path_rom_rgb;
  wire i_pclk;
  wire [11:0]i_plr1_rom_rgb;
  wire [11:0]i_plr2_rom_rgb;
  wire i_rst;
  wire [3:0]i_sel;
  wire [11:0]i_surr_rom_rgb;
  wire [11:0]o_rom_rgb;
  wire \o_rom_rgb[0]_i_1_n_0 ;
  wire \o_rom_rgb[0]_i_2_n_0 ;
  wire \o_rom_rgb[0]_i_3_n_0 ;
  wire \o_rom_rgb[10]_i_1_n_0 ;
  wire \o_rom_rgb[10]_i_2_n_0 ;
  wire \o_rom_rgb[10]_i_3_n_0 ;
  wire \o_rom_rgb[11]_i_1_n_0 ;
  wire \o_rom_rgb[11]_i_2_n_0 ;
  wire \o_rom_rgb[11]_i_3_n_0 ;
  wire \o_rom_rgb[1]_i_1_n_0 ;
  wire \o_rom_rgb[1]_i_2_n_0 ;
  wire \o_rom_rgb[1]_i_3_n_0 ;
  wire \o_rom_rgb[2]_i_1_n_0 ;
  wire \o_rom_rgb[2]_i_2_n_0 ;
  wire \o_rom_rgb[2]_i_3_n_0 ;
  wire \o_rom_rgb[3]_i_1_n_0 ;
  wire \o_rom_rgb[3]_i_2_n_0 ;
  wire \o_rom_rgb[3]_i_3_n_0 ;
  wire \o_rom_rgb[4]_i_1_n_0 ;
  wire \o_rom_rgb[4]_i_2_n_0 ;
  wire \o_rom_rgb[4]_i_3_n_0 ;
  wire \o_rom_rgb[5]_i_1_n_0 ;
  wire \o_rom_rgb[5]_i_2_n_0 ;
  wire \o_rom_rgb[5]_i_3_n_0 ;
  wire \o_rom_rgb[6]_i_1_n_0 ;
  wire \o_rom_rgb[6]_i_2_n_0 ;
  wire \o_rom_rgb[6]_i_3_n_0 ;
  wire \o_rom_rgb[7]_i_1_n_0 ;
  wire \o_rom_rgb[7]_i_2_n_0 ;
  wire \o_rom_rgb[7]_i_3_n_0 ;
  wire \o_rom_rgb[8]_i_1_n_0 ;
  wire \o_rom_rgb[8]_i_2_n_0 ;
  wire \o_rom_rgb[8]_i_3_n_0 ;
  wire \o_rom_rgb[9]_i_1_n_0 ;
  wire \o_rom_rgb[9]_i_2_n_0 ;
  wire \o_rom_rgb[9]_i_3_n_0 ;

  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[0]_i_1 
       (.I0(\o_rom_rgb[0]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[0]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[0]_i_2 
       (.I0(i_obs2_rom_rgb[0]),
        .I1(i_obs1_rom_rgb[0]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[0]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[0]),
        .O(\o_rom_rgb[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[0]_i_3 
       (.I0(i_plr2_rom_rgb[0]),
        .I1(i_plr1_rom_rgb[0]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[0]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[0]),
        .O(\o_rom_rgb[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[10]_i_1 
       (.I0(\o_rom_rgb[10]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[10]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[10]_i_2 
       (.I0(i_obs2_rom_rgb[10]),
        .I1(i_obs1_rom_rgb[10]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[10]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[10]),
        .O(\o_rom_rgb[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[10]_i_3 
       (.I0(i_plr2_rom_rgb[10]),
        .I1(i_plr1_rom_rgb[10]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[10]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[10]),
        .O(\o_rom_rgb[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[11]_i_1 
       (.I0(\o_rom_rgb[11]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[11]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[11]_i_2 
       (.I0(i_obs2_rom_rgb[11]),
        .I1(i_obs1_rom_rgb[11]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[11]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[11]),
        .O(\o_rom_rgb[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[11]_i_3 
       (.I0(i_plr2_rom_rgb[11]),
        .I1(i_plr1_rom_rgb[11]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[11]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[11]),
        .O(\o_rom_rgb[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[1]_i_1 
       (.I0(\o_rom_rgb[1]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[1]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[1]_i_2 
       (.I0(i_obs2_rom_rgb[1]),
        .I1(i_obs1_rom_rgb[1]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[1]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[1]),
        .O(\o_rom_rgb[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[1]_i_3 
       (.I0(i_plr2_rom_rgb[1]),
        .I1(i_plr1_rom_rgb[1]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[1]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[1]),
        .O(\o_rom_rgb[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[2]_i_1 
       (.I0(\o_rom_rgb[2]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[2]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[2]_i_2 
       (.I0(i_obs2_rom_rgb[2]),
        .I1(i_obs1_rom_rgb[2]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[2]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[2]),
        .O(\o_rom_rgb[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[2]_i_3 
       (.I0(i_plr2_rom_rgb[2]),
        .I1(i_plr1_rom_rgb[2]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[2]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[2]),
        .O(\o_rom_rgb[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[3]_i_1 
       (.I0(\o_rom_rgb[3]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[3]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[3]_i_2 
       (.I0(i_obs2_rom_rgb[3]),
        .I1(i_obs1_rom_rgb[3]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[3]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[3]),
        .O(\o_rom_rgb[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[3]_i_3 
       (.I0(i_plr2_rom_rgb[3]),
        .I1(i_plr1_rom_rgb[3]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[3]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[3]),
        .O(\o_rom_rgb[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[4]_i_1 
       (.I0(\o_rom_rgb[4]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[4]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[4]_i_2 
       (.I0(i_obs2_rom_rgb[4]),
        .I1(i_obs1_rom_rgb[4]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[4]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[4]),
        .O(\o_rom_rgb[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[4]_i_3 
       (.I0(i_plr2_rom_rgb[4]),
        .I1(i_plr1_rom_rgb[4]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[4]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[4]),
        .O(\o_rom_rgb[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[5]_i_1 
       (.I0(\o_rom_rgb[5]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[5]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[5]_i_2 
       (.I0(i_obs2_rom_rgb[5]),
        .I1(i_obs1_rom_rgb[5]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[5]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[5]),
        .O(\o_rom_rgb[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[5]_i_3 
       (.I0(i_plr2_rom_rgb[5]),
        .I1(i_plr1_rom_rgb[5]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[5]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[5]),
        .O(\o_rom_rgb[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[6]_i_1 
       (.I0(\o_rom_rgb[6]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[6]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[6]_i_2 
       (.I0(i_obs2_rom_rgb[6]),
        .I1(i_obs1_rom_rgb[6]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[6]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[6]),
        .O(\o_rom_rgb[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[6]_i_3 
       (.I0(i_plr2_rom_rgb[6]),
        .I1(i_plr1_rom_rgb[6]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[6]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[6]),
        .O(\o_rom_rgb[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[7]_i_1 
       (.I0(\o_rom_rgb[7]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[7]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[7]_i_2 
       (.I0(i_obs2_rom_rgb[7]),
        .I1(i_obs1_rom_rgb[7]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[7]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[7]),
        .O(\o_rom_rgb[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[7]_i_3 
       (.I0(i_plr2_rom_rgb[7]),
        .I1(i_plr1_rom_rgb[7]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[7]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[7]),
        .O(\o_rom_rgb[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[8]_i_1 
       (.I0(\o_rom_rgb[8]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[8]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[8]_i_2 
       (.I0(i_obs2_rom_rgb[8]),
        .I1(i_obs1_rom_rgb[8]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[8]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[8]),
        .O(\o_rom_rgb[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[8]_i_3 
       (.I0(i_plr2_rom_rgb[8]),
        .I1(i_plr1_rom_rgb[8]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[8]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[8]),
        .O(\o_rom_rgb[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \o_rom_rgb[9]_i_1 
       (.I0(\o_rom_rgb[9]_i_2_n_0 ),
        .I1(i_sel[2]),
        .I2(\o_rom_rgb[9]_i_3_n_0 ),
        .I3(i_sel[3]),
        .O(\o_rom_rgb[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[9]_i_2 
       (.I0(i_obs2_rom_rgb[9]),
        .I1(i_obs1_rom_rgb[9]),
        .I2(i_sel[1]),
        .I3(i_surr_rom_rgb[9]),
        .I4(i_sel[0]),
        .I5(i_path_rom_rgb[9]),
        .O(\o_rom_rgb[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_rom_rgb[9]_i_3 
       (.I0(i_plr2_rom_rgb[9]),
        .I1(i_plr1_rom_rgb[9]),
        .I2(i_sel[1]),
        .I3(i_expl_rom_rgb[9]),
        .I4(i_sel[0]),
        .I5(i_bomb_rom_rgb[9]),
        .O(\o_rom_rgb[9]_i_3_n_0 ));
  FDRE \o_rom_rgb_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[0]_i_1_n_0 ),
        .Q(o_rom_rgb[0]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[10]_i_1_n_0 ),
        .Q(o_rom_rgb[10]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[11]_i_1_n_0 ),
        .Q(o_rom_rgb[11]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[1]_i_1_n_0 ),
        .Q(o_rom_rgb[1]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[2]_i_1_n_0 ),
        .Q(o_rom_rgb[2]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[3]_i_1_n_0 ),
        .Q(o_rom_rgb[3]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[4]_i_1_n_0 ),
        .Q(o_rom_rgb[4]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[5]_i_1_n_0 ),
        .Q(o_rom_rgb[5]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[6]_i_1_n_0 ),
        .Q(o_rom_rgb[6]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[7]_i_1_n_0 ),
        .Q(o_rom_rgb[7]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[8]_i_1_n_0 ),
        .Q(o_rom_rgb[8]),
        .R(i_rst));
  FDRE \o_rom_rgb_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(\o_rom_rgb[9]_i_1_n_0 ),
        .Q(o_rom_rgb[9]),
        .R(i_rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
