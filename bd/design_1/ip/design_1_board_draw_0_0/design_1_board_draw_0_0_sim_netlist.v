// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Aug 19 16:56:18 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/AGH/sem4/cyfra2/uec2_projekt4/bd/design_1/ip/design_1_board_draw_0_0/design_1_board_draw_0_0_sim_netlist.v
// Design      : design_1_board_draw_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_board_draw_0_0,board_draw,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "board_draw,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module design_1_board_draw_0_0
   (i_pclk,
    i_rst,
    i_vcount,
    i_vsync,
    i_vblnk,
    i_hcount,
    i_hsync,
    i_hblnk,
    i_axi_data,
    i_rom_rgb,
    o_vcount,
    o_vsync,
    o_vblnk,
    o_hcount,
    o_hsync,
    o_hblnk,
    o_rgb,
    o_sel,
    o_axi_addr,
    o_rom_addr);
  input i_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH" *) input i_rst;
  input [11:0]i_vcount;
  input i_vsync;
  input i_vblnk;
  input [11:0]i_hcount;
  input i_hsync;
  input i_hblnk;
  input [3:0]i_axi_data;
  input [11:0]i_rom_rgb;
  output [11:0]o_vcount;
  output o_vsync;
  output o_vblnk;
  output [11:0]o_hcount;
  output o_hsync;
  output o_hblnk;
  output [11:0]o_rgb;
  output [3:0]o_sel;
  output [7:0]o_axi_addr;
  output [11:0]o_rom_addr;

  wire [3:0]i_axi_data;
  wire i_hblnk;
  wire [11:0]i_hcount;
  wire i_hsync;
  wire i_pclk;
  wire [11:0]i_rom_rgb;
  wire i_rst;
  wire i_vblnk;
  wire [11:0]i_vcount;
  wire i_vsync;
  wire [7:0]o_axi_addr;
  wire o_hblnk;
  wire [11:0]o_hcount;
  wire o_hsync;
  wire [11:0]o_rgb;
  wire [11:0]o_rom_addr;
  wire o_vblnk;
  wire [11:0]o_vcount;
  wire o_vsync;

  assign o_sel[3:0] = i_axi_data;
  design_1_board_draw_0_0_board_draw inst
       (.D({i_hblnk,i_hsync,i_vblnk,i_vsync}),
        .i_hcount(i_hcount),
        .i_pclk(i_pclk),
        .i_rom_rgb(i_rom_rgb),
        .i_rst(i_rst),
        .i_vcount(i_vcount),
        .o_axi_addr({o_axi_addr[7:6],o_axi_addr[2:0]}),
        .o_hblnk(o_hblnk),
        .o_hcount(o_hcount),
        .o_hsync(o_hsync),
        .o_rgb(o_rgb),
        .o_rom_addr(o_rom_addr),
        .o_vblnk(o_vblnk),
        .o_vcount(o_vcount),
        .o_vsync(o_vsync));
  LUT4 #(
    .INIT(16'h807F)) 
    \o_axi_addr[3]_INST_0 
       (.I0(i_hcount[7]),
        .I1(i_hcount[6]),
        .I2(i_hcount[8]),
        .I3(i_hcount[9]),
        .O(o_axi_addr[3]));
  LUT5 #(
    .INIT(32'hEAAA1555)) 
    \o_axi_addr[4]_INST_0 
       (.I0(i_vcount[5]),
        .I1(i_vcount[4]),
        .I2(i_vcount[2]),
        .I3(i_vcount[3]),
        .I4(i_vcount[6]),
        .O(o_axi_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFEAAA00001555)) 
    \o_axi_addr[5]_INST_0 
       (.I0(i_vcount[6]),
        .I1(i_vcount[3]),
        .I2(i_vcount[2]),
        .I3(i_vcount[4]),
        .I4(i_vcount[5]),
        .I5(i_vcount[7]),
        .O(o_axi_addr[5]));
endmodule

(* ORIG_REF_NAME = "board_draw" *) 
module design_1_board_draw_0_0_board_draw
   (o_rom_addr,
    o_axi_addr,
    o_vcount,
    o_vsync,
    o_vblnk,
    o_hcount,
    o_hsync,
    o_hblnk,
    o_rgb,
    i_vcount,
    i_rst,
    D,
    i_pclk,
    i_hcount,
    i_rom_rgb);
  output [11:0]o_rom_addr;
  output [4:0]o_axi_addr;
  output [11:0]o_vcount;
  output o_vsync;
  output o_vblnk;
  output [11:0]o_hcount;
  output o_hsync;
  output o_hblnk;
  output [11:0]o_rgb;
  input [11:0]i_vcount;
  input i_rst;
  input [3:0]D;
  input i_pclk;
  input [11:0]i_hcount;
  input [11:0]i_rom_rgb;

  wire [3:0]D;
  wire \axi_addry0/i__n_0 ;
  wire delay_1_clk_n_6;
  wire delay_1_clk_n_7;
  wire delay_1_clk_n_8;
  wire delay_1_clk_n_9;
  wire delay_2_clk_n_17;
  wire delay_2_clk_n_18;
  wire delay_2_clk_n_19;
  wire delay_2_clk_n_20;
  wire delay_2_clk_n_21;
  wire delay_2_clk_n_22;
  wire delay_2_clk_n_23;
  wire delay_2_clk_n_24;
  wire delay_2_clk_n_25;
  wire delay_2_clk_n_26;
  wire delay_2_clk_n_27;
  wire delay_2_clk_n_28;
  wire hblnk_del_2_clk;
  wire [11:0]hcount_del_2_clk;
  wire hsync_del_2_clk;
  wire [11:0]i_hcount;
  wire i_pclk;
  wire [11:0]i_rom_rgb;
  wire i_rst;
  wire [11:0]i_vcount;
  wire [4:0]o_axi_addr;
  wire o_hblnk;
  wire [11:0]o_hcount;
  wire o_hsync;
  wire [11:0]o_rgb;
  wire [11:0]o_rom_addr;
  wire o_vblnk;
  wire [11:0]o_vcount;
  wire o_vsync;
  wire p_0_in;
  wire [11:0]p_1_in;
  wire vblnk_del_2_clk;
  wire vsync_del_2_clk;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \axi_addry0/i_ 
       (.I0(i_vcount[6]),
        .I1(i_vcount[3]),
        .I2(i_vcount[2]),
        .I3(i_vcount[4]),
        .I4(i_vcount[5]),
        .I5(i_vcount[7]),
        .O(\axi_addry0/i__n_0 ));
  design_1_board_draw_0_0_delay delay_1_clk
       (.D({o_rom_addr[5:0],delay_1_clk_n_6,delay_1_clk_n_7,delay_1_clk_n_8,delay_1_clk_n_9,o_rom_addr[7:6]}),
        .i_hcount(i_hcount[5:0]),
        .i_pclk(i_pclk),
        .i_rst(i_rst),
        .i_vcount(i_vcount[5:0]),
        .o_rom_addr(o_rom_addr[11]));
  design_1_board_draw_0_0_delay__parameterized0 delay_2_clk
       (.D(D),
        .Q({hblnk_del_2_clk,hsync_del_2_clk,vblnk_del_2_clk,vsync_del_2_clk,hcount_del_2_clk,delay_2_clk_n_17,delay_2_clk_n_18,delay_2_clk_n_19,delay_2_clk_n_20,delay_2_clk_n_21,delay_2_clk_n_22,delay_2_clk_n_23,delay_2_clk_n_24,delay_2_clk_n_25,delay_2_clk_n_26,delay_2_clk_n_27,delay_2_clk_n_28}),
        .SR(p_0_in),
        .\del_mem_reg[0][17] ({o_rom_addr[5:0],delay_1_clk_n_6,delay_1_clk_n_7,delay_1_clk_n_8,delay_1_clk_n_9,o_rom_addr[7:6]}),
        .i_hcount(i_hcount[11:6]),
        .i_pclk(i_pclk),
        .i_rom_rgb(i_rom_rgb),
        .i_rst(i_rst),
        .i_vcount(i_vcount[11:6]),
        .\o_rgb_reg[11] (p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \o_axi_addr[0]_INST_0 
       (.I0(i_hcount[6]),
        .O(o_axi_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_axi_addr[1]_INST_0 
       (.I0(i_hcount[6]),
        .I1(i_hcount[7]),
        .O(o_axi_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_axi_addr[2]_INST_0 
       (.I0(i_hcount[6]),
        .I1(i_hcount[7]),
        .I2(i_hcount[8]),
        .O(o_axi_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_axi_addr[6]_INST_0 
       (.I0(\axi_addry0/i__n_0 ),
        .I1(i_vcount[8]),
        .O(o_axi_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \o_axi_addr[7]_INST_0 
       (.I0(i_vcount[8]),
        .I1(\axi_addry0/i__n_0 ),
        .I2(i_vcount[9]),
        .O(o_axi_addr[4]));
  FDRE o_hblnk_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(hblnk_del_2_clk),
        .Q(o_hblnk),
        .R(i_rst));
  FDRE \o_hcount_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[0]),
        .Q(o_hcount[0]),
        .R(i_rst));
  FDRE \o_hcount_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[10]),
        .Q(o_hcount[10]),
        .R(i_rst));
  FDRE \o_hcount_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[11]),
        .Q(o_hcount[11]),
        .R(i_rst));
  FDRE \o_hcount_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[1]),
        .Q(o_hcount[1]),
        .R(i_rst));
  FDRE \o_hcount_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[2]),
        .Q(o_hcount[2]),
        .R(i_rst));
  FDRE \o_hcount_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[3]),
        .Q(o_hcount[3]),
        .R(i_rst));
  FDRE \o_hcount_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[4]),
        .Q(o_hcount[4]),
        .R(i_rst));
  FDRE \o_hcount_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[5]),
        .Q(o_hcount[5]),
        .R(i_rst));
  FDRE \o_hcount_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[6]),
        .Q(o_hcount[6]),
        .R(i_rst));
  FDRE \o_hcount_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[7]),
        .Q(o_hcount[7]),
        .R(i_rst));
  FDRE \o_hcount_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[8]),
        .Q(o_hcount[8]),
        .R(i_rst));
  FDRE \o_hcount_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_del_2_clk[9]),
        .Q(o_hcount[9]),
        .R(i_rst));
  FDRE o_hsync_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(hsync_del_2_clk),
        .Q(o_hsync),
        .R(i_rst));
  FDRE \o_rgb_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(o_rgb[0]),
        .R(p_0_in));
  FDRE \o_rgb_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(o_rgb[10]),
        .R(p_0_in));
  FDRE \o_rgb_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(o_rgb[11]),
        .R(p_0_in));
  FDRE \o_rgb_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(o_rgb[1]),
        .R(p_0_in));
  FDRE \o_rgb_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(o_rgb[2]),
        .R(p_0_in));
  FDRE \o_rgb_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(o_rgb[3]),
        .R(p_0_in));
  FDRE \o_rgb_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(o_rgb[4]),
        .R(p_0_in));
  FDRE \o_rgb_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(o_rgb[5]),
        .R(p_0_in));
  FDRE \o_rgb_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(o_rgb[6]),
        .R(p_0_in));
  FDRE \o_rgb_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(o_rgb[7]),
        .R(p_0_in));
  FDRE \o_rgb_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(o_rgb[8]),
        .R(p_0_in));
  FDRE \o_rgb_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(o_rgb[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_rom_addr[10]_INST_0 
       (.I0(delay_1_clk_n_9),
        .I1(delay_1_clk_n_8),
        .I2(delay_1_clk_n_7),
        .O(o_rom_addr[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_rom_addr[8]_INST_0 
       (.I0(delay_1_clk_n_9),
        .O(o_rom_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_rom_addr[9]_INST_0 
       (.I0(delay_1_clk_n_9),
        .I1(delay_1_clk_n_8),
        .O(o_rom_addr[9]));
  FDRE o_vblnk_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(vblnk_del_2_clk),
        .Q(o_vblnk),
        .R(i_rst));
  FDRE \o_vcount_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_28),
        .Q(o_vcount[0]),
        .R(i_rst));
  FDRE \o_vcount_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_18),
        .Q(o_vcount[10]),
        .R(i_rst));
  FDRE \o_vcount_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_17),
        .Q(o_vcount[11]),
        .R(i_rst));
  FDRE \o_vcount_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_27),
        .Q(o_vcount[1]),
        .R(i_rst));
  FDRE \o_vcount_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_26),
        .Q(o_vcount[2]),
        .R(i_rst));
  FDRE \o_vcount_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_25),
        .Q(o_vcount[3]),
        .R(i_rst));
  FDRE \o_vcount_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_24),
        .Q(o_vcount[4]),
        .R(i_rst));
  FDRE \o_vcount_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_23),
        .Q(o_vcount[5]),
        .R(i_rst));
  FDRE \o_vcount_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_22),
        .Q(o_vcount[6]),
        .R(i_rst));
  FDRE \o_vcount_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_21),
        .Q(o_vcount[7]),
        .R(i_rst));
  FDRE \o_vcount_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_20),
        .Q(o_vcount[8]),
        .R(i_rst));
  FDRE \o_vcount_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_2_clk_n_19),
        .Q(o_vcount[9]),
        .R(i_rst));
  FDRE o_vsync_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(vsync_del_2_clk),
        .Q(o_vsync),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_board_draw_0_0_delay
   (D,
    o_rom_addr,
    i_rst,
    i_hcount,
    i_pclk,
    i_vcount);
  output [11:0]D;
  output [0:0]o_rom_addr;
  input i_rst;
  input [5:0]i_hcount;
  input i_pclk;
  input [5:0]i_vcount;

  wire [11:0]D;
  wire [5:0]i_hcount;
  wire i_pclk;
  wire i_rst;
  wire [5:0]i_vcount;
  wire [0:0]o_rom_addr;

  FDRE \del_mem_reg[0][0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[0]),
        .Q(D[0]),
        .R(i_rst));
  FDRE \del_mem_reg[0][12] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[0]),
        .Q(D[6]),
        .R(i_rst));
  FDRE \del_mem_reg[0][13] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[1]),
        .Q(D[7]),
        .R(i_rst));
  FDRE \del_mem_reg[0][14] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[2]),
        .Q(D[8]),
        .R(i_rst));
  FDRE \del_mem_reg[0][15] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[3]),
        .Q(D[9]),
        .R(i_rst));
  FDRE \del_mem_reg[0][16] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[4]),
        .Q(D[10]),
        .R(i_rst));
  FDRE \del_mem_reg[0][17] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[5]),
        .Q(D[11]),
        .R(i_rst));
  FDRE \del_mem_reg[0][1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[1]),
        .Q(D[1]),
        .R(i_rst));
  FDRE \del_mem_reg[0][2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[2]),
        .Q(D[2]),
        .R(i_rst));
  FDRE \del_mem_reg[0][3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[3]),
        .Q(D[3]),
        .R(i_rst));
  FDRE \del_mem_reg[0][4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[4]),
        .Q(D[4]),
        .R(i_rst));
  FDRE \del_mem_reg[0][5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[5]),
        .Q(D[5]),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h807F)) 
    \o_rom_addr[11]_INST_0 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(D[4]),
        .I3(D[5]),
        .O(o_rom_addr));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_board_draw_0_0_delay__parameterized0
   (SR,
    Q,
    \o_rgb_reg[11] ,
    i_rst,
    i_hcount,
    i_pclk,
    i_vcount,
    D,
    \del_mem_reg[0][17] ,
    i_rom_rgb);
  output [0:0]SR;
  output [27:0]Q;
  output [11:0]\o_rgb_reg[11] ;
  input i_rst;
  input [5:0]i_hcount;
  input i_pclk;
  input [5:0]i_vcount;
  input [3:0]D;
  input [11:0]\del_mem_reg[0][17] ;
  input [11:0]i_rom_rgb;

  wire [3:0]D;
  wire [27:0]Q;
  wire [0:0]SR;
  wire [27:6]\del_mem_reg[0] ;
  wire [11:0]\del_mem_reg[0][17] ;
  wire [5:0]i_hcount;
  wire i_pclk;
  wire [11:0]i_rom_rgb;
  wire i_rst;
  wire [5:0]i_vcount;
  wire \o_rgb[11]_i_3_n_0 ;
  wire \o_rgb[11]_i_4_n_0 ;
  wire \o_rgb[11]_i_5_n_0 ;
  wire \o_rgb[11]_i_6_n_0 ;
  wire [11:0]\o_rgb_reg[11] ;

  FDRE \del_mem_reg[0][10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[4]),
        .Q(\del_mem_reg[0] [10]),
        .R(i_rst));
  FDRE \del_mem_reg[0][11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[5]),
        .Q(\del_mem_reg[0] [11]),
        .R(i_rst));
  FDRE \del_mem_reg[0][18] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[0]),
        .Q(\del_mem_reg[0] [18]),
        .R(i_rst));
  FDRE \del_mem_reg[0][19] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[1]),
        .Q(\del_mem_reg[0] [19]),
        .R(i_rst));
  FDRE \del_mem_reg[0][20] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[2]),
        .Q(\del_mem_reg[0] [20]),
        .R(i_rst));
  FDRE \del_mem_reg[0][21] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[3]),
        .Q(\del_mem_reg[0] [21]),
        .R(i_rst));
  FDRE \del_mem_reg[0][22] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[4]),
        .Q(\del_mem_reg[0] [22]),
        .R(i_rst));
  FDRE \del_mem_reg[0][23] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[5]),
        .Q(\del_mem_reg[0] [23]),
        .R(i_rst));
  FDRE \del_mem_reg[0][24] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\del_mem_reg[0] [24]),
        .R(i_rst));
  FDRE \del_mem_reg[0][25] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\del_mem_reg[0] [25]),
        .R(i_rst));
  FDRE \del_mem_reg[0][26] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\del_mem_reg[0] [26]),
        .R(i_rst));
  FDRE \del_mem_reg[0][27] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\del_mem_reg[0] [27]),
        .R(i_rst));
  FDRE \del_mem_reg[0][6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[0]),
        .Q(\del_mem_reg[0] [6]),
        .R(i_rst));
  FDRE \del_mem_reg[0][7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[1]),
        .Q(\del_mem_reg[0] [7]),
        .R(i_rst));
  FDRE \del_mem_reg[0][8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[2]),
        .Q(\del_mem_reg[0] [8]),
        .R(i_rst));
  FDRE \del_mem_reg[0][9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[3]),
        .Q(\del_mem_reg[0] [9]),
        .R(i_rst));
  FDCE \delay_stage[1].del_mem_reg[1][0] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [0]),
        .Q(Q[0]));
  FDCE \delay_stage[1].del_mem_reg[1][10] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [10]),
        .Q(Q[10]));
  FDCE \delay_stage[1].del_mem_reg[1][11] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [11]),
        .Q(Q[11]));
  FDCE \delay_stage[1].del_mem_reg[1][12] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [6]),
        .Q(Q[12]));
  FDCE \delay_stage[1].del_mem_reg[1][13] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [7]),
        .Q(Q[13]));
  FDCE \delay_stage[1].del_mem_reg[1][14] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [8]),
        .Q(Q[14]));
  FDCE \delay_stage[1].del_mem_reg[1][15] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [9]),
        .Q(Q[15]));
  FDCE \delay_stage[1].del_mem_reg[1][16] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [10]),
        .Q(Q[16]));
  FDCE \delay_stage[1].del_mem_reg[1][17] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [11]),
        .Q(Q[17]));
  FDCE \delay_stage[1].del_mem_reg[1][18] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [18]),
        .Q(Q[18]));
  FDCE \delay_stage[1].del_mem_reg[1][19] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [19]),
        .Q(Q[19]));
  FDCE \delay_stage[1].del_mem_reg[1][1] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [1]),
        .Q(Q[1]));
  FDCE \delay_stage[1].del_mem_reg[1][20] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [20]),
        .Q(Q[20]));
  FDCE \delay_stage[1].del_mem_reg[1][21] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [21]),
        .Q(Q[21]));
  FDCE \delay_stage[1].del_mem_reg[1][22] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [22]),
        .Q(Q[22]));
  FDCE \delay_stage[1].del_mem_reg[1][23] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [23]),
        .Q(Q[23]));
  FDCE \delay_stage[1].del_mem_reg[1][24] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [24]),
        .Q(Q[24]));
  FDCE \delay_stage[1].del_mem_reg[1][25] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [25]),
        .Q(Q[25]));
  FDCE \delay_stage[1].del_mem_reg[1][26] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [26]),
        .Q(Q[26]));
  FDCE \delay_stage[1].del_mem_reg[1][27] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [27]),
        .Q(Q[27]));
  FDCE \delay_stage[1].del_mem_reg[1][2] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [2]),
        .Q(Q[2]));
  FDCE \delay_stage[1].del_mem_reg[1][3] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [3]),
        .Q(Q[3]));
  FDCE \delay_stage[1].del_mem_reg[1][4] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [4]),
        .Q(Q[4]));
  FDCE \delay_stage[1].del_mem_reg[1][5] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17] [5]),
        .Q(Q[5]));
  FDCE \delay_stage[1].del_mem_reg[1][6] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [6]),
        .Q(Q[6]));
  FDCE \delay_stage[1].del_mem_reg[1][7] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [7]),
        .Q(Q[7]));
  FDCE \delay_stage[1].del_mem_reg[1][8] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [8]),
        .Q(Q[8]));
  FDCE \delay_stage[1].del_mem_reg[1][9] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \o_rgb[0]_i_1 
       (.I0(i_rom_rgb[0]),
        .I1(\o_rgb[11]_i_3_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[11]_i_5_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_6_n_0 ),
        .O(\o_rgb_reg[11] [0]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \o_rgb[10]_i_1 
       (.I0(i_rom_rgb[10]),
        .I1(\o_rgb[11]_i_3_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[11]_i_5_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_6_n_0 ),
        .O(\o_rgb_reg[11] [10]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_rgb[11]_i_1 
       (.I0(Q[25]),
        .I1(Q[27]),
        .I2(i_rst),
        .O(SR));
  LUT6 #(
    .INIT(64'h0111010100000000)) 
    \o_rgb[11]_i_2 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(\o_rgb[11]_i_6_n_0 ),
        .I5(i_rom_rgb[11]),
        .O(\o_rgb_reg[11] [11]));
  LUT5 #(
    .INIT(32'hA9999999)) 
    \o_rgb[11]_i_3 
       (.I0(Q[22]),
        .I1(Q[21]),
        .I2(Q[19]),
        .I3(Q[18]),
        .I4(Q[20]),
        .O(\o_rgb[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \o_rgb[11]_i_4 
       (.I0(Q[11]),
        .I1(Q[23]),
        .I2(Q[4]),
        .I3(Q[10]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\o_rgb[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA9)) 
    \o_rgb[11]_i_5 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\o_rgb[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \o_rgb[11]_i_6 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\o_rgb[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0111010100000000)) 
    \o_rgb[1]_i_1 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(\o_rgb[11]_i_6_n_0 ),
        .I5(i_rom_rgb[1]),
        .O(\o_rgb_reg[11] [1]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \o_rgb[2]_i_1 
       (.I0(i_rom_rgb[2]),
        .I1(\o_rgb[11]_i_3_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[11]_i_5_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_6_n_0 ),
        .O(\o_rgb_reg[11] [2]));
  LUT6 #(
    .INIT(64'h0111010100000000)) 
    \o_rgb[3]_i_1 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(\o_rgb[11]_i_6_n_0 ),
        .I5(i_rom_rgb[3]),
        .O(\o_rgb_reg[11] [3]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \o_rgb[4]_i_1 
       (.I0(i_rom_rgb[4]),
        .I1(\o_rgb[11]_i_3_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[11]_i_5_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_6_n_0 ),
        .O(\o_rgb_reg[11] [4]));
  LUT6 #(
    .INIT(64'h0111010100000000)) 
    \o_rgb[5]_i_1 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(\o_rgb[11]_i_6_n_0 ),
        .I5(i_rom_rgb[5]),
        .O(\o_rgb_reg[11] [5]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \o_rgb[6]_i_1 
       (.I0(i_rom_rgb[6]),
        .I1(\o_rgb[11]_i_3_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[11]_i_5_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_6_n_0 ),
        .O(\o_rgb_reg[11] [6]));
  LUT6 #(
    .INIT(64'h0111010100000000)) 
    \o_rgb[7]_i_1 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(\o_rgb[11]_i_6_n_0 ),
        .I5(i_rom_rgb[7]),
        .O(\o_rgb_reg[11] [7]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \o_rgb[8]_i_1 
       (.I0(i_rom_rgb[8]),
        .I1(\o_rgb[11]_i_3_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[11]_i_5_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_6_n_0 ),
        .O(\o_rgb_reg[11] [8]));
  LUT6 #(
    .INIT(64'h0111010100000000)) 
    \o_rgb[9]_i_1 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(\o_rgb[11]_i_6_n_0 ),
        .I5(i_rom_rgb[9]),
        .O(\o_rgb_reg[11] [9]));
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
