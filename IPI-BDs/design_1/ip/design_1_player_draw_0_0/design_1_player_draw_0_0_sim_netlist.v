// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Jul 19 21:45:58 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_player_draw_0_0/design_1_player_draw_0_0_sim_netlist.v
// Design      : design_1_player_draw_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_player_draw_0_0,player_draw,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "player_draw,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module design_1_player_draw_0_0
   (i_pclk,
    i_rst,
    i_vcount,
    i_vsync,
    i_vblnk,
    i_hcount,
    i_hsync,
    i_hblnk,
    i_rgb,
    i_data,
    i_rom_rgb,
    o_vcount,
    o_vsync,
    o_vblnk,
    o_hcount,
    o_hsync,
    o_hblnk,
    o_rgb,
    o_index,
    o_rom_addr);
  input i_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH" *) input i_rst;
  input [11:0]i_vcount;
  input i_vsync;
  input i_vblnk;
  input [11:0]i_hcount;
  input i_hsync;
  input i_hblnk;
  input [11:0]i_rgb;
  input [19:0]i_data;
  input [11:0]i_rom_rgb;
  output [11:0]o_vcount;
  output o_vsync;
  output o_vblnk;
  output [11:0]o_hcount;
  output o_hsync;
  output o_hblnk;
  output [11:0]o_rgb;
  output o_index;
  output [11:0]o_rom_addr;

  wire \<const0> ;
  wire [19:0]i_data;
  wire i_hblnk;
  wire [11:0]i_hcount;
  wire i_hsync;
  wire i_pclk;
  wire [11:0]i_rgb;
  wire [11:0]i_rom_rgb;
  wire i_rst;
  wire i_vblnk;
  wire [11:0]i_vcount;
  wire i_vsync;
  wire o_hblnk;
  wire [11:0]o_hcount;
  wire o_hsync;
  wire [11:0]o_rgb;
  wire [11:0]o_rom_addr;
  wire o_vblnk;
  wire [11:0]o_vcount;
  wire o_vsync;

  assign o_index = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_player_draw_0_0_player_draw inst
       (.D({i_hblnk,i_hsync,i_vblnk,i_vsync,i_rgb}),
        .i_data(i_data),
        .i_hcount(i_hcount),
        .i_pclk(i_pclk),
        .i_rom_rgb(i_rom_rgb),
        .i_rst(i_rst),
        .i_vcount(i_vcount),
        .o_hblnk(o_hblnk),
        .o_hcount(o_hcount),
        .o_hsync(o_hsync),
        .o_rgb(o_rgb),
        .o_rom_addr(o_rom_addr),
        .o_vblnk(o_vblnk),
        .o_vcount(o_vcount),
        .o_vsync(o_vsync));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_player_draw_0_0_delay
   (SR,
    Q,
    S,
    \o_rgb_reg[0] ,
    \o_rgb_reg[0]_0 ,
    DI,
    \o_rgb_reg[0]_1 ,
    \o_rgb_reg[0]_2 ,
    \o_rgb_reg[0]_3 ,
    \o_rgb_reg[0]_4 ,
    \o_rgb_reg[0]_5 ,
    \o_rgb_reg[0]_6 ,
    \o_rgb_reg[0]_7 ,
    \o_rgb_reg[0]_8 ,
    \o_rgb_reg[0]_9 ,
    i_rst,
    i_hcount,
    i_pclk,
    i_vcount,
    CO,
    \delay_stage[1].del_mem_reg[1][47]_0 ,
    \del_mem_reg[0][27] ,
    D,
    \del_mem_reg[0][17]_0 );
  output [0:0]SR;
  output [39:0]Q;
  output [2:0]S;
  output [3:0]\o_rgb_reg[0] ;
  output [0:0]\o_rgb_reg[0]_0 ;
  output [3:0]DI;
  output [2:0]\o_rgb_reg[0]_1 ;
  output [0:0]\o_rgb_reg[0]_2 ;
  output [3:0]\o_rgb_reg[0]_3 ;
  output [1:0]\o_rgb_reg[0]_4 ;
  output [1:0]\o_rgb_reg[0]_5 ;
  output [1:0]\o_rgb_reg[0]_6 ;
  output [3:0]\o_rgb_reg[0]_7 ;
  output [1:0]\o_rgb_reg[0]_8 ;
  output [3:0]\o_rgb_reg[0]_9 ;
  input i_rst;
  input [5:0]i_hcount;
  input i_pclk;
  input [5:0]i_vcount;
  input [0:0]CO;
  input [0:0]\delay_stage[1].del_mem_reg[1][47]_0 ;
  input [3:0]\del_mem_reg[0][27] ;
  input [15:0]D;
  input [11:0]\del_mem_reg[0][17]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [39:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [51:12]\del_mem_reg[0] ;
  wire [11:0]\del_mem_reg[0][17]_0 ;
  wire [3:0]\del_mem_reg[0][27] ;
  wire [0:0]\delay_stage[1].del_mem_reg[1][47]_0 ;
  wire [5:0]i_hcount;
  wire i_pclk;
  wire i_rst;
  wire [5:0]i_vcount;
  wire [3:0]\o_rgb_reg[0] ;
  wire [0:0]\o_rgb_reg[0]_0 ;
  wire [2:0]\o_rgb_reg[0]_1 ;
  wire [0:0]\o_rgb_reg[0]_2 ;
  wire [3:0]\o_rgb_reg[0]_3 ;
  wire [1:0]\o_rgb_reg[0]_4 ;
  wire [1:0]\o_rgb_reg[0]_5 ;
  wire [1:0]\o_rgb_reg[0]_6 ;
  wire [3:0]\o_rgb_reg[0]_7 ;
  wire [1:0]\o_rgb_reg[0]_8 ;
  wire [3:0]\o_rgb_reg[0]_9 ;

  FDRE \del_mem_reg[0][12] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\del_mem_reg[0] [12]),
        .R(i_rst));
  FDRE \del_mem_reg[0][13] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\del_mem_reg[0] [13]),
        .R(i_rst));
  FDRE \del_mem_reg[0][14] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\del_mem_reg[0] [14]),
        .R(i_rst));
  FDRE \del_mem_reg[0][15] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\del_mem_reg[0] [15]),
        .R(i_rst));
  FDRE \del_mem_reg[0][16] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\del_mem_reg[0] [16]),
        .R(i_rst));
  FDRE \del_mem_reg[0][17] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\del_mem_reg[0] [17]),
        .R(i_rst));
  FDRE \del_mem_reg[0][18] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\del_mem_reg[0] [18]),
        .R(i_rst));
  FDRE \del_mem_reg[0][19] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\del_mem_reg[0] [19]),
        .R(i_rst));
  FDRE \del_mem_reg[0][20] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\del_mem_reg[0] [20]),
        .R(i_rst));
  FDRE \del_mem_reg[0][21] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\del_mem_reg[0] [21]),
        .R(i_rst));
  FDRE \del_mem_reg[0][22] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\del_mem_reg[0] [22]),
        .R(i_rst));
  FDRE \del_mem_reg[0][23] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\del_mem_reg[0] [23]),
        .R(i_rst));
  FDRE \del_mem_reg[0][30] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[0]),
        .Q(\del_mem_reg[0] [30]),
        .R(i_rst));
  FDRE \del_mem_reg[0][31] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[1]),
        .Q(\del_mem_reg[0] [31]),
        .R(i_rst));
  FDRE \del_mem_reg[0][32] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[2]),
        .Q(\del_mem_reg[0] [32]),
        .R(i_rst));
  FDRE \del_mem_reg[0][33] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[3]),
        .Q(\del_mem_reg[0] [33]),
        .R(i_rst));
  FDRE \del_mem_reg[0][34] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[4]),
        .Q(\del_mem_reg[0] [34]),
        .R(i_rst));
  FDRE \del_mem_reg[0][35] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[5]),
        .Q(\del_mem_reg[0] [35]),
        .R(i_rst));
  FDRE \del_mem_reg[0][42] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[0]),
        .Q(\del_mem_reg[0] [42]),
        .R(i_rst));
  FDRE \del_mem_reg[0][43] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[1]),
        .Q(\del_mem_reg[0] [43]),
        .R(i_rst));
  FDRE \del_mem_reg[0][44] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[2]),
        .Q(\del_mem_reg[0] [44]),
        .R(i_rst));
  FDRE \del_mem_reg[0][45] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[3]),
        .Q(\del_mem_reg[0] [45]),
        .R(i_rst));
  FDRE \del_mem_reg[0][46] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[4]),
        .Q(\del_mem_reg[0] [46]),
        .R(i_rst));
  FDRE \del_mem_reg[0][47] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[5]),
        .Q(\del_mem_reg[0] [47]),
        .R(i_rst));
  FDRE \del_mem_reg[0][48] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\del_mem_reg[0] [48]),
        .R(i_rst));
  FDRE \del_mem_reg[0][49] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\del_mem_reg[0] [49]),
        .R(i_rst));
  FDRE \del_mem_reg[0][50] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\del_mem_reg[0] [50]),
        .R(i_rst));
  FDRE \del_mem_reg[0][51] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\del_mem_reg[0] [51]),
        .R(i_rst));
  FDCE \delay_stage[1].del_mem_reg[1][12] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [12]),
        .Q(Q[0]));
  FDCE \delay_stage[1].del_mem_reg[1][13] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [13]),
        .Q(Q[1]));
  FDCE \delay_stage[1].del_mem_reg[1][14] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [14]),
        .Q(Q[2]));
  FDCE \delay_stage[1].del_mem_reg[1][15] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [15]),
        .Q(Q[3]));
  FDCE \delay_stage[1].del_mem_reg[1][16] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [16]),
        .Q(Q[4]));
  FDCE \delay_stage[1].del_mem_reg[1][17] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [17]),
        .Q(Q[5]));
  FDCE \delay_stage[1].del_mem_reg[1][18] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [18]),
        .Q(Q[6]));
  FDCE \delay_stage[1].del_mem_reg[1][19] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [19]),
        .Q(Q[7]));
  FDCE \delay_stage[1].del_mem_reg[1][20] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [20]),
        .Q(Q[8]));
  FDCE \delay_stage[1].del_mem_reg[1][21] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [21]),
        .Q(Q[9]));
  FDCE \delay_stage[1].del_mem_reg[1][22] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [22]),
        .Q(Q[10]));
  FDCE \delay_stage[1].del_mem_reg[1][23] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [23]),
        .Q(Q[11]));
  FDCE \delay_stage[1].del_mem_reg[1][24] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [0]),
        .Q(Q[12]));
  FDCE \delay_stage[1].del_mem_reg[1][25] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [1]),
        .Q(Q[13]));
  FDCE \delay_stage[1].del_mem_reg[1][26] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [2]),
        .Q(Q[14]));
  FDCE \delay_stage[1].del_mem_reg[1][27] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [3]),
        .Q(Q[15]));
  FDCE \delay_stage[1].del_mem_reg[1][28] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [4]),
        .Q(Q[16]));
  FDCE \delay_stage[1].del_mem_reg[1][29] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [5]),
        .Q(Q[17]));
  FDCE \delay_stage[1].del_mem_reg[1][30] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [30]),
        .Q(Q[18]));
  FDCE \delay_stage[1].del_mem_reg[1][31] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [31]),
        .Q(Q[19]));
  FDCE \delay_stage[1].del_mem_reg[1][32] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [32]),
        .Q(Q[20]));
  FDCE \delay_stage[1].del_mem_reg[1][33] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [33]),
        .Q(Q[21]));
  FDCE \delay_stage[1].del_mem_reg[1][34] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [34]),
        .Q(Q[22]));
  FDCE \delay_stage[1].del_mem_reg[1][35] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [35]),
        .Q(Q[23]));
  FDCE \delay_stage[1].del_mem_reg[1][36] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [6]),
        .Q(Q[24]));
  FDCE \delay_stage[1].del_mem_reg[1][37] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [7]),
        .Q(Q[25]));
  FDCE \delay_stage[1].del_mem_reg[1][38] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [8]),
        .Q(Q[26]));
  FDCE \delay_stage[1].del_mem_reg[1][39] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [9]),
        .Q(Q[27]));
  FDCE \delay_stage[1].del_mem_reg[1][40] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [10]),
        .Q(Q[28]));
  FDCE \delay_stage[1].del_mem_reg[1][41] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0][17]_0 [11]),
        .Q(Q[29]));
  FDCE \delay_stage[1].del_mem_reg[1][42] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [42]),
        .Q(Q[30]));
  FDCE \delay_stage[1].del_mem_reg[1][43] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [43]),
        .Q(Q[31]));
  FDCE \delay_stage[1].del_mem_reg[1][44] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [44]),
        .Q(Q[32]));
  FDCE \delay_stage[1].del_mem_reg[1][45] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [45]),
        .Q(Q[33]));
  FDCE \delay_stage[1].del_mem_reg[1][46] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [46]),
        .Q(Q[34]));
  FDCE \delay_stage[1].del_mem_reg[1][47] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [47]),
        .Q(Q[35]));
  FDCE \delay_stage[1].del_mem_reg[1][48] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [48]),
        .Q(Q[36]));
  FDCE \delay_stage[1].del_mem_reg[1][49] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [49]),
        .Q(Q[37]));
  FDCE \delay_stage[1].del_mem_reg[1][50] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [50]),
        .Q(Q[38]));
  FDCE \delay_stage[1].del_mem_reg[1][51] 
       (.C(i_pclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\del_mem_reg[0] [51]),
        .Q(Q[39]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(Q[20]),
        .O(\o_rgb_reg[0] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(Q[35]),
        .O(\o_rgb_reg[0]_1 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__1
       (.I0(CO),
        .O(\o_rgb_reg[0]_8 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(Q[19]),
        .O(\o_rgb_reg[0] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(Q[34]),
        .O(\o_rgb_reg[0]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__1
       (.I0(CO),
        .O(\o_rgb_reg[0]_8 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(Q[18]),
        .O(\o_rgb_reg[0] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(Q[33]),
        .O(\o_rgb_reg[0]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(Q[17]),
        .O(\o_rgb_reg[0] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(Q[23]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(CO),
        .O(\o_rgb_reg[0]_9 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(Q[22]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(CO),
        .O(\o_rgb_reg[0]_9 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(Q[21]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(CO),
        .O(\o_rgb_reg[0]_9 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(CO),
        .O(\o_rgb_reg[0]_9 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(CO),
        .O(DI[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(CO),
        .O(DI[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(CO),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(CO),
        .O(DI[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(Q[14]),
        .O(\o_rgb_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(Q[30]),
        .O(\o_rgb_reg[0]_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_rgb[11]_i_1 
       (.I0(i_rst),
        .I1(Q[39]),
        .I2(Q[37]),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__0_i_1
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_6 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__0_i_2
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_6 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__1_i_1
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_7 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__1_i_2
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_7 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__1_i_3
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_7 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__1_i_4
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_7 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__2_i_1
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_3 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__2_i_2
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_3 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__2_i_3
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_3 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    o_rgb_nxt3_carry__2_i_4
       (.I0(\delay_stage[1].del_mem_reg[1][47]_0 ),
        .O(\o_rgb_reg[0]_3 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt3_carry_i_3
       (.I0(Q[26]),
        .I1(\del_mem_reg[0][27] [2]),
        .I2(\del_mem_reg[0][27] [3]),
        .I3(Q[27]),
        .O(\o_rgb_reg[0]_5 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt3_carry_i_4
       (.I0(Q[24]),
        .I1(\del_mem_reg[0][27] [0]),
        .I2(\del_mem_reg[0][27] [1]),
        .I3(Q[25]),
        .O(\o_rgb_reg[0]_5 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt3_carry_i_7
       (.I0(Q[26]),
        .I1(\del_mem_reg[0][27] [2]),
        .I2(Q[27]),
        .I3(\del_mem_reg[0][27] [3]),
        .O(\o_rgb_reg[0]_4 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt3_carry_i_8
       (.I0(Q[24]),
        .I1(\del_mem_reg[0][27] [0]),
        .I2(Q[25]),
        .I3(\del_mem_reg[0][27] [1]),
        .O(\o_rgb_reg[0]_4 [0]));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_player_draw_0_0_delay__parameterized0
   (\delay_stage[1].del_mem_reg[1][41] ,
    S,
    Q,
    \o_rgb_reg[0] ,
    DI,
    \o_rgb_reg[0]_0 ,
    \o_rom_addr[4] ,
    \o_rom_addr[4]_0 ,
    \o_rom_addr[10] ,
    \o_rom_addr[10]_0 ,
    \o_rom_addr[10]_1 ,
    \o_rgb_reg[0]_1 ,
    \o_rgb_reg[0]_2 ,
    \o_rgb_reg[0]_3 ,
    \o_rgb_reg[0]_4 ,
    \o_rgb_reg[0]_5 ,
    \o_rgb_reg[0]_6 ,
    \o_rgb_reg[0]_7 ,
    \o_rgb_reg[0]_8 ,
    i_rst,
    i_hcount,
    i_pclk,
    i_vcount,
    o_rgb_nxt5,
    o_rgb_nxt4,
    i_data,
    \delay_stage[1].del_mem_reg[1][40] );
  output [11:0]\delay_stage[1].del_mem_reg[1][41] ;
  output [1:0]S;
  output [15:0]Q;
  output [1:0]\o_rgb_reg[0] ;
  output [1:0]DI;
  output [1:0]\o_rgb_reg[0]_0 ;
  output [3:0]\o_rom_addr[4] ;
  output [1:0]\o_rom_addr[4]_0 ;
  output [1:0]\o_rom_addr[10] ;
  output [3:0]\o_rom_addr[10]_0 ;
  output [0:0]\o_rom_addr[10]_1 ;
  output [2:0]\o_rgb_reg[0]_1 ;
  output [2:0]\o_rgb_reg[0]_2 ;
  output [0:0]\o_rgb_reg[0]_3 ;
  output [0:0]\o_rgb_reg[0]_4 ;
  output [2:0]\o_rgb_reg[0]_5 ;
  output [2:0]\o_rgb_reg[0]_6 ;
  output [0:0]\o_rgb_reg[0]_7 ;
  output [0:0]\o_rgb_reg[0]_8 ;
  input i_rst;
  input [5:0]i_hcount;
  input i_pclk;
  input [5:0]i_vcount;
  input [8:0]o_rgb_nxt5;
  input [4:0]o_rgb_nxt4;
  input [19:0]i_data;
  input [5:0]\delay_stage[1].del_mem_reg[1][40] ;

  wire [1:0]DI;
  wire [15:0]Q;
  wire [1:0]S;
  wire [5:4]data_delayed;
  wire [5:0]\delay_stage[1].del_mem_reg[1][40] ;
  wire [11:0]\delay_stage[1].del_mem_reg[1][41] ;
  wire [19:0]i_data;
  wire [5:0]i_hcount;
  wire i_pclk;
  wire i_rst;
  wire [5:0]i_vcount;
  wire [4:0]o_rgb_nxt4;
  wire [8:0]o_rgb_nxt5;
  wire [1:0]\o_rgb_reg[0] ;
  wire [1:0]\o_rgb_reg[0]_0 ;
  wire [2:0]\o_rgb_reg[0]_1 ;
  wire [2:0]\o_rgb_reg[0]_2 ;
  wire [0:0]\o_rgb_reg[0]_3 ;
  wire [0:0]\o_rgb_reg[0]_4 ;
  wire [2:0]\o_rgb_reg[0]_5 ;
  wire [2:0]\o_rgb_reg[0]_6 ;
  wire [0:0]\o_rgb_reg[0]_7 ;
  wire [0:0]\o_rgb_reg[0]_8 ;
  wire [1:0]\o_rom_addr[10] ;
  wire [3:0]\o_rom_addr[10]_0 ;
  wire [0:0]\o_rom_addr[10]_1 ;
  wire [3:0]\o_rom_addr[4] ;
  wire [1:0]\o_rom_addr[4]_0 ;
  wire [1:0]p_0_in;

  LUT2 #(
    .INIT(4'h9)) 
    addrx_carry__0_i_1
       (.I0(\delay_stage[1].del_mem_reg[1][41] [11]),
        .I1(i_data[5]),
        .O(\o_rom_addr[4]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    addrx_carry__0_i_2
       (.I0(\delay_stage[1].del_mem_reg[1][41] [10]),
        .I1(i_data[4]),
        .O(\o_rom_addr[4]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    addrx_carry_i_1
       (.I0(\delay_stage[1].del_mem_reg[1][41] [9]),
        .I1(i_data[3]),
        .O(\o_rom_addr[4] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    addrx_carry_i_2
       (.I0(\delay_stage[1].del_mem_reg[1][41] [8]),
        .I1(i_data[2]),
        .O(\o_rom_addr[4] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    addrx_carry_i_3
       (.I0(\delay_stage[1].del_mem_reg[1][41] [7]),
        .I1(i_data[1]),
        .O(\o_rom_addr[4] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    addrx_carry_i_4
       (.I0(\delay_stage[1].del_mem_reg[1][41] [6]),
        .I1(i_data[0]),
        .O(\o_rom_addr[4] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    addry_carry__0_i_1
       (.I0(\delay_stage[1].del_mem_reg[1][41] [3]),
        .I1(i_data[13]),
        .O(\o_rom_addr[10]_1 ));
  LUT4 #(
    .INIT(16'h6966)) 
    addry_carry__0_i_2
       (.I0(i_data[15]),
        .I1(\delay_stage[1].del_mem_reg[1][41] [5]),
        .I2(i_data[14]),
        .I3(\delay_stage[1].del_mem_reg[1][41] [4]),
        .O(\o_rom_addr[10] [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    addry_carry__0_i_3
       (.I0(i_data[13]),
        .I1(\delay_stage[1].del_mem_reg[1][41] [3]),
        .I2(i_data[14]),
        .I3(\delay_stage[1].del_mem_reg[1][41] [4]),
        .O(\o_rom_addr[10] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    addry_carry_i_2
       (.I0(i_data[12]),
        .I1(i_data[13]),
        .I2(\delay_stage[1].del_mem_reg[1][41] [3]),
        .O(\o_rom_addr[10]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    addry_carry_i_3
       (.I0(i_data[12]),
        .I1(\delay_stage[1].del_mem_reg[1][41] [2]),
        .O(\o_rom_addr[10]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    addry_carry_i_4
       (.I0(\delay_stage[1].del_mem_reg[1][41] [1]),
        .I1(i_data[11]),
        .O(\o_rom_addr[10]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    addry_carry_i_5
       (.I0(\delay_stage[1].del_mem_reg[1][41] [0]),
        .I1(i_data[10]),
        .O(\o_rom_addr[10]_0 [0]));
  FDRE \del_mem_reg[0][0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[0]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [0]),
        .R(i_rst));
  FDRE \del_mem_reg[0][12] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[0]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [6]),
        .R(i_rst));
  FDRE \del_mem_reg[0][13] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[1]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [7]),
        .R(i_rst));
  FDRE \del_mem_reg[0][14] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[2]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [8]),
        .R(i_rst));
  FDRE \del_mem_reg[0][15] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[3]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [9]),
        .R(i_rst));
  FDRE \del_mem_reg[0][16] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[4]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [10]),
        .R(i_rst));
  FDRE \del_mem_reg[0][17] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hcount[5]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [11]),
        .R(i_rst));
  FDRE \del_mem_reg[0][1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[1]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [1]),
        .R(i_rst));
  FDRE \del_mem_reg[0][24] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[0]),
        .Q(Q[0]),
        .R(i_rst));
  FDRE \del_mem_reg[0][25] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[1]),
        .Q(Q[1]),
        .R(i_rst));
  FDRE \del_mem_reg[0][26] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[2]),
        .Q(Q[2]),
        .R(i_rst));
  FDRE \del_mem_reg[0][27] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[3]),
        .Q(Q[3]),
        .R(i_rst));
  FDRE \del_mem_reg[0][28] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[4]),
        .Q(data_delayed[4]),
        .R(i_rst));
  FDRE \del_mem_reg[0][29] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[5]),
        .Q(data_delayed[5]),
        .R(i_rst));
  FDRE \del_mem_reg[0][2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[2]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [2]),
        .R(i_rst));
  FDRE \del_mem_reg[0][30] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[6]),
        .Q(Q[4]),
        .R(i_rst));
  FDRE \del_mem_reg[0][31] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[7]),
        .Q(Q[5]),
        .R(i_rst));
  FDRE \del_mem_reg[0][32] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[8]),
        .Q(Q[6]),
        .R(i_rst));
  FDRE \del_mem_reg[0][33] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[9]),
        .Q(Q[7]),
        .R(i_rst));
  FDRE \del_mem_reg[0][34] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[10]),
        .Q(p_0_in[0]),
        .R(i_rst));
  FDRE \del_mem_reg[0][35] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[11]),
        .Q(p_0_in[1]),
        .R(i_rst));
  FDRE \del_mem_reg[0][36] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[12]),
        .Q(Q[8]),
        .R(i_rst));
  FDRE \del_mem_reg[0][37] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[13]),
        .Q(Q[9]),
        .R(i_rst));
  FDRE \del_mem_reg[0][38] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[14]),
        .Q(Q[10]),
        .R(i_rst));
  FDRE \del_mem_reg[0][39] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[15]),
        .Q(Q[11]),
        .R(i_rst));
  FDRE \del_mem_reg[0][3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[3]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [3]),
        .R(i_rst));
  FDRE \del_mem_reg[0][40] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[16]),
        .Q(Q[12]),
        .R(i_rst));
  FDRE \del_mem_reg[0][41] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[17]),
        .Q(Q[13]),
        .R(i_rst));
  FDRE \del_mem_reg[0][42] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[18]),
        .Q(Q[14]),
        .R(i_rst));
  FDRE \del_mem_reg[0][43] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_data[19]),
        .Q(Q[15]),
        .R(i_rst));
  FDRE \del_mem_reg[0][4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[4]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [4]),
        .R(i_rst));
  FDRE \del_mem_reg[0][5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_vcount[5]),
        .Q(\delay_stage[1].del_mem_reg[1][41] [5]),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(\delay_stage[1].del_mem_reg[1][40] [0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(o_rgb_nxt5[0]),
        .O(\o_rgb_reg[0]_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\delay_stage[1].del_mem_reg[1][40] [0]),
        .I1(p_0_in[0]),
        .I2(o_rgb_nxt5[0]),
        .I3(p_0_in[1]),
        .O(\o_rgb_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    o_rgb_nxt2_carry__0_i_1
       (.I0(o_rgb_nxt4[3]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(o_rgb_nxt4[4]),
        .O(\o_rgb_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h0777733331111000)) 
    o_rgb_nxt2_carry__0_i_2
       (.I0(o_rgb_nxt4[1]),
        .I1(o_rgb_nxt4[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\o_rgb_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000080007FFF)) 
    o_rgb_nxt2_carry__0_i_3
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(o_rgb_nxt4[3]),
        .I5(o_rgb_nxt4[4]),
        .O(\o_rgb_reg[0] [1]));
  LUT6 #(
    .INIT(64'h2A95400040002A95)) 
    o_rgb_nxt2_carry__0_i_4
       (.I0(o_rgb_nxt4[1]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(o_rgb_nxt4[2]),
        .O(\o_rgb_reg[0] [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt2_carry_i_2
       (.I0(data_delayed[4]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [5]),
        .I2(o_rgb_nxt4[0]),
        .I3(data_delayed[5]),
        .O(\o_rgb_reg[0]_6 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt2_carry_i_3
       (.I0(Q[2]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [3]),
        .I2(\delay_stage[1].del_mem_reg[1][40] [4]),
        .I3(Q[3]),
        .O(\o_rgb_reg[0]_6 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt2_carry_i_4
       (.I0(Q[0]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [1]),
        .I2(\delay_stage[1].del_mem_reg[1][40] [2]),
        .I3(Q[1]),
        .O(\o_rgb_reg[0]_6 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt2_carry_i_6
       (.I0(data_delayed[4]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [5]),
        .I2(data_delayed[5]),
        .I3(o_rgb_nxt4[0]),
        .O(\o_rgb_reg[0]_5 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt2_carry_i_7
       (.I0(Q[2]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [3]),
        .I2(Q[3]),
        .I3(\delay_stage[1].del_mem_reg[1][40] [4]),
        .O(\o_rgb_reg[0]_5 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt2_carry_i_8
       (.I0(Q[0]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [1]),
        .I2(Q[1]),
        .I3(\delay_stage[1].del_mem_reg[1][40] [2]),
        .O(\o_rgb_reg[0]_5 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt3_carry_i_2
       (.I0(\delay_stage[1].del_mem_reg[1][40] [5]),
        .I1(data_delayed[4]),
        .I2(data_delayed[5]),
        .I3(o_rgb_nxt4[0]),
        .O(\o_rgb_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt3_carry_i_6
       (.I0(\delay_stage[1].del_mem_reg[1][40] [5]),
        .I1(data_delayed[4]),
        .I2(o_rgb_nxt4[0]),
        .I3(data_delayed[5]),
        .O(\o_rgb_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    o_rgb_nxt4_carry__0_i_1
       (.I0(o_rgb_nxt5[7]),
        .I1(Q[15]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(Q[14]),
        .I5(o_rgb_nxt5[8]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h0777733331111000)) 
    o_rgb_nxt4_carry__0_i_2
       (.I0(o_rgb_nxt5[5]),
        .I1(o_rgb_nxt5[6]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(Q[14]),
        .I5(Q[15]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h0000000080007FFF)) 
    o_rgb_nxt4_carry__0_i_3
       (.I0(Q[15]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(Q[14]),
        .I4(o_rgb_nxt5[7]),
        .I5(o_rgb_nxt5[8]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h2A95400040002A95)) 
    o_rgb_nxt4_carry__0_i_4
       (.I0(o_rgb_nxt5[5]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(Q[14]),
        .I4(Q[15]),
        .I5(o_rgb_nxt5[6]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt4_carry_i_2
       (.I0(Q[10]),
        .I1(o_rgb_nxt5[3]),
        .I2(o_rgb_nxt5[4]),
        .I3(Q[11]),
        .O(\o_rgb_reg[0]_2 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt4_carry_i_3
       (.I0(Q[8]),
        .I1(o_rgb_nxt5[1]),
        .I2(o_rgb_nxt5[2]),
        .I3(Q[9]),
        .O(\o_rgb_reg[0]_2 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt4_carry_i_4
       (.I0(p_0_in[0]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [0]),
        .I2(o_rgb_nxt5[0]),
        .I3(p_0_in[1]),
        .O(\o_rgb_reg[0]_2 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt4_carry_i_6
       (.I0(Q[10]),
        .I1(o_rgb_nxt5[3]),
        .I2(Q[11]),
        .I3(o_rgb_nxt5[4]),
        .O(\o_rgb_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt4_carry_i_7
       (.I0(Q[8]),
        .I1(o_rgb_nxt5[1]),
        .I2(Q[9]),
        .I3(o_rgb_nxt5[2]),
        .O(\o_rgb_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt4_carry_i_8
       (.I0(p_0_in[0]),
        .I1(\delay_stage[1].del_mem_reg[1][40] [0]),
        .I2(p_0_in[1]),
        .I3(o_rgb_nxt5[0]),
        .O(\o_rgb_reg[0]_1 [0]));
endmodule

(* ORIG_REF_NAME = "player_draw" *) 
module design_1_player_draw_0_0_player_draw
   (o_vcount,
    o_vsync,
    o_vblnk,
    o_hcount,
    o_hsync,
    o_hblnk,
    o_rgb,
    o_rom_addr,
    i_data,
    i_rst,
    D,
    i_pclk,
    i_hcount,
    i_vcount,
    i_rom_rgb);
  output [11:0]o_vcount;
  output o_vsync;
  output o_vblnk;
  output [11:0]o_hcount;
  output o_hsync;
  output o_hblnk;
  output [11:0]o_rgb;
  output [11:0]o_rom_addr;
  input [19:0]i_data;
  input i_rst;
  input [15:0]D;
  input i_pclk;
  input [11:0]i_hcount;
  input [11:0]i_vcount;
  input [11:0]i_rom_rgb;

  wire [15:0]D;
  wire addrx_carry__0_n_3;
  wire addrx_carry_n_0;
  wire addrx_carry_n_1;
  wire addrx_carry_n_2;
  wire addrx_carry_n_3;
  wire addry_carry__0_n_3;
  wire addry_carry_i_1_n_0;
  wire addry_carry_n_0;
  wire addry_carry_n_1;
  wire addry_carry_n_2;
  wire addry_carry_n_3;
  wire [9:0]data_delayed;
  wire delay_player2_n_10;
  wire delay_player2_n_11;
  wire delay_player2_n_12;
  wire delay_player2_n_13;
  wire delay_player2_n_30;
  wire delay_player2_n_31;
  wire delay_player2_n_32;
  wire delay_player2_n_33;
  wire delay_player2_n_34;
  wire delay_player2_n_35;
  wire delay_player2_n_36;
  wire delay_player2_n_37;
  wire delay_player2_n_38;
  wire delay_player2_n_39;
  wire delay_player2_n_40;
  wire delay_player2_n_41;
  wire delay_player2_n_42;
  wire delay_player2_n_43;
  wire delay_player2_n_44;
  wire delay_player2_n_45;
  wire delay_player2_n_46;
  wire delay_player2_n_47;
  wire delay_player2_n_48;
  wire delay_player2_n_49;
  wire delay_player2_n_50;
  wire delay_player2_n_51;
  wire delay_player2_n_52;
  wire delay_player2_n_53;
  wire delay_player2_n_54;
  wire delay_player2_n_55;
  wire delay_player2_n_56;
  wire delay_player2_n_57;
  wire delay_player2_n_58;
  wire delay_player2_n_59;
  wire delay_player2_n_6;
  wire delay_player2_n_60;
  wire delay_player2_n_61;
  wire delay_player2_n_62;
  wire delay_player2_n_63;
  wire delay_player2_n_64;
  wire delay_player2_n_7;
  wire delay_player2_n_8;
  wire delay_player2_n_9;
  wire delay_player_n_0;
  wire delay_player_n_29;
  wire delay_player_n_30;
  wire delay_player_n_31;
  wire delay_player_n_32;
  wire delay_player_n_33;
  wire delay_player_n_34;
  wire delay_player_n_35;
  wire delay_player_n_36;
  wire delay_player_n_37;
  wire delay_player_n_38;
  wire delay_player_n_39;
  wire delay_player_n_40;
  wire delay_player_n_41;
  wire delay_player_n_42;
  wire delay_player_n_43;
  wire delay_player_n_44;
  wire delay_player_n_45;
  wire delay_player_n_46;
  wire delay_player_n_47;
  wire delay_player_n_48;
  wire delay_player_n_50;
  wire delay_player_n_51;
  wire delay_player_n_52;
  wire delay_player_n_53;
  wire delay_player_n_54;
  wire delay_player_n_55;
  wire delay_player_n_56;
  wire delay_player_n_58;
  wire delay_player_n_59;
  wire delay_player_n_60;
  wire delay_player_n_61;
  wire delay_player_n_62;
  wire delay_player_n_63;
  wire delay_player_n_64;
  wire delay_player_n_65;
  wire delay_player_n_66;
  wire delay_player_n_67;
  wire delay_player_n_68;
  wire delay_player_n_69;
  wire delay_player_n_70;
  wire delay_player_n_71;
  wire delay_player_n_72;
  wire delay_player_n_73;
  wire delay_player_n_74;
  wire delay_player_n_75;
  wire delay_player_n_76;
  wire hblnk_delayed;
  wire [11:0]hcount_delayed;
  wire [5:0]hcount_delayed2;
  wire hsync_delayed;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire [19:0]i_data;
  wire [11:0]i_hcount;
  wire i_pclk;
  wire [11:0]i_rom_rgb;
  wire i_rst;
  wire [11:0]i_vcount;
  wire o_hblnk;
  wire [11:0]o_hcount;
  wire o_hsync;
  wire [11:0]o_rgb;
  wire o_rgb_nxt2_carry__0_n_0;
  wire o_rgb_nxt2_carry__0_n_1;
  wire o_rgb_nxt2_carry__0_n_2;
  wire o_rgb_nxt2_carry__0_n_3;
  wire o_rgb_nxt2_carry__1_n_0;
  wire o_rgb_nxt2_carry__1_n_1;
  wire o_rgb_nxt2_carry__1_n_2;
  wire o_rgb_nxt2_carry__1_n_3;
  wire o_rgb_nxt2_carry__2_n_0;
  wire o_rgb_nxt2_carry__2_n_1;
  wire o_rgb_nxt2_carry__2_n_2;
  wire o_rgb_nxt2_carry__2_n_3;
  wire o_rgb_nxt2_carry_i_1_n_0;
  wire o_rgb_nxt2_carry_i_5_n_0;
  wire o_rgb_nxt2_carry_n_0;
  wire o_rgb_nxt2_carry_n_1;
  wire o_rgb_nxt2_carry_n_2;
  wire o_rgb_nxt2_carry_n_3;
  wire o_rgb_nxt3_carry__0_i_3_n_0;
  wire o_rgb_nxt3_carry__0_i_4_n_0;
  wire o_rgb_nxt3_carry__0_i_5_n_0;
  wire o_rgb_nxt3_carry__0_i_6_n_0;
  wire o_rgb_nxt3_carry__0_n_0;
  wire o_rgb_nxt3_carry__0_n_1;
  wire o_rgb_nxt3_carry__0_n_2;
  wire o_rgb_nxt3_carry__0_n_3;
  wire o_rgb_nxt3_carry__1_n_0;
  wire o_rgb_nxt3_carry__1_n_1;
  wire o_rgb_nxt3_carry__1_n_2;
  wire o_rgb_nxt3_carry__1_n_3;
  wire o_rgb_nxt3_carry__2_n_0;
  wire o_rgb_nxt3_carry__2_n_1;
  wire o_rgb_nxt3_carry__2_n_2;
  wire o_rgb_nxt3_carry__2_n_3;
  wire o_rgb_nxt3_carry_i_1_n_0;
  wire o_rgb_nxt3_carry_i_5_n_0;
  wire o_rgb_nxt3_carry_n_0;
  wire o_rgb_nxt3_carry_n_1;
  wire o_rgb_nxt3_carry_n_2;
  wire o_rgb_nxt3_carry_n_3;
  wire [31:5]o_rgb_nxt4;
  wire o_rgb_nxt4_carry__0_n_0;
  wire o_rgb_nxt4_carry__0_n_1;
  wire o_rgb_nxt4_carry__0_n_2;
  wire o_rgb_nxt4_carry__0_n_3;
  wire o_rgb_nxt4_carry__1_n_0;
  wire o_rgb_nxt4_carry__1_n_1;
  wire o_rgb_nxt4_carry__1_n_2;
  wire o_rgb_nxt4_carry__1_n_3;
  wire o_rgb_nxt4_carry__2_n_0;
  wire o_rgb_nxt4_carry__2_n_1;
  wire o_rgb_nxt4_carry__2_n_2;
  wire o_rgb_nxt4_carry__2_n_3;
  wire o_rgb_nxt4_carry_i_1_n_0;
  wire o_rgb_nxt4_carry_i_5_n_0;
  wire o_rgb_nxt4_carry_n_0;
  wire o_rgb_nxt4_carry_n_1;
  wire o_rgb_nxt4_carry_n_2;
  wire o_rgb_nxt4_carry_n_3;
  wire \o_rgb_nxt4_inferred__0/i__carry__0_n_0 ;
  wire \o_rgb_nxt4_inferred__0/i__carry__0_n_2 ;
  wire \o_rgb_nxt4_inferred__0/i__carry__0_n_3 ;
  wire \o_rgb_nxt4_inferred__0/i__carry_n_0 ;
  wire \o_rgb_nxt4_inferred__0/i__carry_n_1 ;
  wire \o_rgb_nxt4_inferred__0/i__carry_n_2 ;
  wire \o_rgb_nxt4_inferred__0/i__carry_n_3 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__0_n_0 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__0_n_1 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__0_n_2 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__0_n_3 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__1_n_0 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__1_n_1 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__1_n_2 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__1_n_3 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__2_n_0 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__2_n_1 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__2_n_2 ;
  wire \o_rgb_nxt4_inferred__1/i__carry__2_n_3 ;
  wire \o_rgb_nxt4_inferred__1/i__carry_n_0 ;
  wire \o_rgb_nxt4_inferred__1/i__carry_n_1 ;
  wire \o_rgb_nxt4_inferred__1/i__carry_n_2 ;
  wire \o_rgb_nxt4_inferred__1/i__carry_n_3 ;
  wire [31:1]o_rgb_nxt5;
  wire \o_rgb_nxt5_inferred__0/i__carry__0_n_0 ;
  wire \o_rgb_nxt5_inferred__0/i__carry__0_n_1 ;
  wire \o_rgb_nxt5_inferred__0/i__carry__0_n_2 ;
  wire \o_rgb_nxt5_inferred__0/i__carry__0_n_3 ;
  wire \o_rgb_nxt5_inferred__0/i__carry__1_n_0 ;
  wire \o_rgb_nxt5_inferred__0/i__carry__1_n_2 ;
  wire \o_rgb_nxt5_inferred__0/i__carry__1_n_3 ;
  wire \o_rgb_nxt5_inferred__0/i__carry_n_0 ;
  wire \o_rgb_nxt5_inferred__0/i__carry_n_1 ;
  wire \o_rgb_nxt5_inferred__0/i__carry_n_2 ;
  wire \o_rgb_nxt5_inferred__0/i__carry_n_3 ;
  wire [11:0]o_rom_addr;
  wire o_vblnk;
  wire [11:0]o_vcount;
  wire o_vsync;
  wire [9:2]p_0_in;
  wire [11:0]p_1_in;
  wire vblnk_delayed;
  wire [11:0]vcount_delayed;
  wire vsync_delayed;
  wire [3:1]NLW_addrx_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_addrx_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_addry_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_addry_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt2_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt3_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt3_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt3_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt3_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt4_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt4_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_o_rgb_nxt4_carry__2_O_UNCONNECTED;
  wire [2:2]\NLW_o_rgb_nxt4_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_rgb_nxt4_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_o_rgb_nxt4_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_o_rgb_nxt4_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_o_rgb_nxt4_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_o_rgb_nxt4_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [2:2]\NLW_o_rgb_nxt5_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_rgb_nxt5_inferred__0/i__carry__1_O_UNCONNECTED ;

  CARRY4 addrx_carry
       (.CI(1'b0),
        .CO({addrx_carry_n_0,addrx_carry_n_1,addrx_carry_n_2,addrx_carry_n_3}),
        .CYINIT(1'b1),
        .DI(hcount_delayed2[3:0]),
        .O(o_rom_addr[3:0]),
        .S({delay_player2_n_36,delay_player2_n_37,delay_player2_n_38,delay_player2_n_39}));
  CARRY4 addrx_carry__0
       (.CI(addrx_carry_n_0),
        .CO({NLW_addrx_carry__0_CO_UNCONNECTED[3:1],addrx_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,hcount_delayed2[4]}),
        .O({NLW_addrx_carry__0_O_UNCONNECTED[3:2],o_rom_addr[5:4]}),
        .S({1'b0,1'b0,delay_player2_n_40,delay_player2_n_41}));
  CARRY4 addry_carry
       (.CI(1'b0),
        .CO({addry_carry_n_0,addry_carry_n_1,addry_carry_n_2,addry_carry_n_3}),
        .CYINIT(1'b1),
        .DI({addry_carry_i_1_n_0,i_data[12],delay_player2_n_10,delay_player2_n_11}),
        .O(o_rom_addr[9:6]),
        .S({delay_player2_n_44,delay_player2_n_45,delay_player2_n_46,delay_player2_n_47}));
  CARRY4 addry_carry__0
       (.CI(addry_carry_n_0),
        .CO({NLW_addry_carry__0_CO_UNCONNECTED[3:1],addry_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,delay_player2_n_48}),
        .O({NLW_addry_carry__0_O_UNCONNECTED[3:2],o_rom_addr[11:10]}),
        .S({1'b0,1'b0,delay_player2_n_42,delay_player2_n_43}));
  LUT1 #(
    .INIT(2'h1)) 
    addry_carry_i_1
       (.I0(i_data[12]),
        .O(addry_carry_i_1_n_0));
  design_1_player_draw_0_0_delay delay_player
       (.CO(\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ),
        .D(D),
        .DI({o_rgb_nxt5[31],delay_player_n_50,delay_player_n_51,delay_player_n_52}),
        .Q({hblnk_delayed,hsync_delayed,vblnk_delayed,vsync_delayed,hcount_delayed,vcount_delayed,delay_player_n_29,delay_player_n_30,delay_player_n_31,delay_player_n_32,delay_player_n_33,delay_player_n_34,delay_player_n_35,delay_player_n_36,delay_player_n_37,delay_player_n_38,delay_player_n_39,delay_player_n_40}),
        .S({delay_player_n_41,delay_player_n_42,delay_player_n_43}),
        .SR(delay_player_n_0),
        .\del_mem_reg[0][17]_0 ({hcount_delayed2,delay_player2_n_6,delay_player2_n_7,delay_player2_n_8,delay_player2_n_9,delay_player2_n_10,delay_player2_n_11}),
        .\del_mem_reg[0][27] (data_delayed[3:0]),
        .\delay_stage[1].del_mem_reg[1][47]_0 (\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ),
        .i_hcount(i_hcount[11:6]),
        .i_pclk(i_pclk),
        .i_rst(i_rst),
        .i_vcount(i_vcount[11:6]),
        .\o_rgb_reg[0] ({delay_player_n_44,delay_player_n_45,delay_player_n_46,delay_player_n_47}),
        .\o_rgb_reg[0]_0 (delay_player_n_48),
        .\o_rgb_reg[0]_1 ({delay_player_n_53,delay_player_n_54,delay_player_n_55}),
        .\o_rgb_reg[0]_2 (delay_player_n_56),
        .\o_rgb_reg[0]_3 ({o_rgb_nxt4[31],delay_player_n_58,delay_player_n_59,delay_player_n_60}),
        .\o_rgb_reg[0]_4 ({delay_player_n_61,delay_player_n_62}),
        .\o_rgb_reg[0]_5 ({delay_player_n_63,delay_player_n_64}),
        .\o_rgb_reg[0]_6 ({delay_player_n_65,delay_player_n_66}),
        .\o_rgb_reg[0]_7 ({delay_player_n_67,delay_player_n_68,delay_player_n_69,delay_player_n_70}),
        .\o_rgb_reg[0]_8 ({delay_player_n_71,delay_player_n_72}),
        .\o_rgb_reg[0]_9 ({delay_player_n_73,delay_player_n_74,delay_player_n_75,delay_player_n_76}));
  design_1_player_draw_0_0_delay__parameterized0 delay_player2
       (.DI({delay_player2_n_32,delay_player2_n_33}),
        .Q({p_0_in,data_delayed[9:6],data_delayed[3:0]}),
        .S({delay_player2_n_12,delay_player2_n_13}),
        .\delay_stage[1].del_mem_reg[1][40] ({hcount_delayed[4:0],vcount_delayed[0]}),
        .\delay_stage[1].del_mem_reg[1][41] ({hcount_delayed2,delay_player2_n_6,delay_player2_n_7,delay_player2_n_8,delay_player2_n_9,delay_player2_n_10,delay_player2_n_11}),
        .i_data(i_data),
        .i_hcount(i_hcount[5:0]),
        .i_pclk(i_pclk),
        .i_rst(i_rst),
        .i_vcount(i_vcount[5:0]),
        .o_rgb_nxt4({o_rgb_nxt4[11:8],o_rgb_nxt4[5]}),
        .o_rgb_nxt5({o_rgb_nxt5[11:8],o_rgb_nxt5[5:1]}),
        .\o_rgb_reg[0] ({delay_player2_n_30,delay_player2_n_31}),
        .\o_rgb_reg[0]_0 ({delay_player2_n_34,delay_player2_n_35}),
        .\o_rgb_reg[0]_1 ({delay_player2_n_49,delay_player2_n_50,delay_player2_n_51}),
        .\o_rgb_reg[0]_2 ({delay_player2_n_52,delay_player2_n_53,delay_player2_n_54}),
        .\o_rgb_reg[0]_3 (delay_player2_n_55),
        .\o_rgb_reg[0]_4 (delay_player2_n_56),
        .\o_rgb_reg[0]_5 ({delay_player2_n_57,delay_player2_n_58,delay_player2_n_59}),
        .\o_rgb_reg[0]_6 ({delay_player2_n_60,delay_player2_n_61,delay_player2_n_62}),
        .\o_rgb_reg[0]_7 (delay_player2_n_63),
        .\o_rgb_reg[0]_8 (delay_player2_n_64),
        .\o_rom_addr[10] ({delay_player2_n_42,delay_player2_n_43}),
        .\o_rom_addr[10]_0 ({delay_player2_n_44,delay_player2_n_45,delay_player2_n_46,delay_player2_n_47}),
        .\o_rom_addr[10]_1 (delay_player2_n_48),
        .\o_rom_addr[4] ({delay_player2_n_36,delay_player2_n_37,delay_player2_n_38,delay_player2_n_39}),
        .\o_rom_addr[4]_0 ({delay_player2_n_40,delay_player2_n_41}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__1
       (.I0(o_rgb_nxt5[10]),
        .I1(o_rgb_nxt5[11]),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__0
       (.I0(o_rgb_nxt5[8]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(o_rgb_nxt5[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(o_rgb_nxt5[10]),
        .I1(o_rgb_nxt5[11]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(o_rgb_nxt5[8]),
        .I1(p_0_in[8]),
        .I2(o_rgb_nxt5[9]),
        .I3(p_0_in[9]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(o_rgb_nxt5[6]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .I3(o_rgb_nxt5[7]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(o_rgb_nxt5[4]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(o_rgb_nxt5[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(o_rgb_nxt5[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(o_rgb_nxt5[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(o_rgb_nxt5[6]),
        .I1(p_0_in[6]),
        .I2(o_rgb_nxt5[7]),
        .I3(p_0_in[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(o_rgb_nxt5[4]),
        .I1(p_0_in[4]),
        .I2(o_rgb_nxt5[5]),
        .I3(p_0_in[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(o_rgb_nxt5[2]),
        .I1(p_0_in[2]),
        .I2(o_rgb_nxt5[3]),
        .I3(p_0_in[3]),
        .O(i__carry_i_7_n_0));
  FDRE o_hblnk_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(hblnk_delayed),
        .Q(o_hblnk),
        .R(i_rst));
  FDRE \o_hcount_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[0]),
        .Q(o_hcount[0]),
        .R(i_rst));
  FDRE \o_hcount_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[10]),
        .Q(o_hcount[10]),
        .R(i_rst));
  FDRE \o_hcount_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[11]),
        .Q(o_hcount[11]),
        .R(i_rst));
  FDRE \o_hcount_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[1]),
        .Q(o_hcount[1]),
        .R(i_rst));
  FDRE \o_hcount_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[2]),
        .Q(o_hcount[2]),
        .R(i_rst));
  FDRE \o_hcount_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[3]),
        .Q(o_hcount[3]),
        .R(i_rst));
  FDRE \o_hcount_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[4]),
        .Q(o_hcount[4]),
        .R(i_rst));
  FDRE \o_hcount_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[5]),
        .Q(o_hcount[5]),
        .R(i_rst));
  FDRE \o_hcount_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[6]),
        .Q(o_hcount[6]),
        .R(i_rst));
  FDRE \o_hcount_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[7]),
        .Q(o_hcount[7]),
        .R(i_rst));
  FDRE \o_hcount_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[8]),
        .Q(o_hcount[8]),
        .R(i_rst));
  FDRE \o_hcount_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(hcount_delayed[9]),
        .Q(o_hcount[9]),
        .R(i_rst));
  FDRE o_hsync_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(hsync_delayed),
        .Q(o_hsync),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[0]_i_1 
       (.I0(i_rom_rgb[0]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_40),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[10]_i_1 
       (.I0(i_rom_rgb[10]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_30),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[11]_i_2 
       (.I0(i_rom_rgb[11]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_29),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[1]_i_1 
       (.I0(i_rom_rgb[1]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_39),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[2]_i_1 
       (.I0(i_rom_rgb[2]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_38),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[3]_i_1 
       (.I0(i_rom_rgb[3]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_37),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[4]_i_1 
       (.I0(i_rom_rgb[4]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_36),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[5]_i_1 
       (.I0(i_rom_rgb[5]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_35),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[6]_i_1 
       (.I0(i_rom_rgb[6]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_34),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[7]_i_1 
       (.I0(i_rom_rgb[7]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_33),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[8]_i_1 
       (.I0(i_rom_rgb[8]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_32),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \o_rgb[9]_i_1 
       (.I0(i_rom_rgb[9]),
        .I1(o_rgb_nxt4_carry__2_n_0),
        .I2(o_rgb_nxt3_carry__2_n_0),
        .I3(\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ),
        .I4(o_rgb_nxt2_carry__2_n_0),
        .I5(delay_player_n_31),
        .O(p_1_in[9]));
  CARRY4 o_rgb_nxt2_carry
       (.CI(1'b0),
        .CO({o_rgb_nxt2_carry_n_0,o_rgb_nxt2_carry_n_1,o_rgb_nxt2_carry_n_2,o_rgb_nxt2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_rgb_nxt2_carry_i_1_n_0,delay_player2_n_60,delay_player2_n_61,delay_player2_n_62}),
        .O(NLW_o_rgb_nxt2_carry_O_UNCONNECTED[3:0]),
        .S({o_rgb_nxt2_carry_i_5_n_0,delay_player2_n_57,delay_player2_n_58,delay_player2_n_59}));
  CARRY4 o_rgb_nxt2_carry__0
       (.CI(o_rgb_nxt2_carry_n_0),
        .CO({o_rgb_nxt2_carry__0_n_0,o_rgb_nxt2_carry__0_n_1,o_rgb_nxt2_carry__0_n_2,o_rgb_nxt2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,delay_player2_n_34,delay_player2_n_35}),
        .O(NLW_o_rgb_nxt2_carry__0_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,delay_player2_n_30,delay_player2_n_31}));
  CARRY4 o_rgb_nxt2_carry__1
       (.CI(o_rgb_nxt2_carry__0_n_0),
        .CO({o_rgb_nxt2_carry__1_n_0,o_rgb_nxt2_carry__1_n_1,o_rgb_nxt2_carry__1_n_2,o_rgb_nxt2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_rgb_nxt2_carry__1_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 }));
  CARRY4 o_rgb_nxt2_carry__2
       (.CI(o_rgb_nxt2_carry__1_n_0),
        .CO({o_rgb_nxt2_carry__2_n_0,o_rgb_nxt2_carry__2_n_1,o_rgb_nxt2_carry__2_n_2,o_rgb_nxt2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_rgb_nxt2_carry__2_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 }));
  LUT4 #(
    .INIT(16'h0731)) 
    o_rgb_nxt2_carry_i_1
       (.I0(o_rgb_nxt4[6]),
        .I1(o_rgb_nxt4[7]),
        .I2(data_delayed[6]),
        .I3(data_delayed[7]),
        .O(o_rgb_nxt2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2442)) 
    o_rgb_nxt2_carry_i_5
       (.I0(o_rgb_nxt4[6]),
        .I1(data_delayed[6]),
        .I2(data_delayed[7]),
        .I3(o_rgb_nxt4[7]),
        .O(o_rgb_nxt2_carry_i_5_n_0));
  CARRY4 o_rgb_nxt3_carry
       (.CI(1'b0),
        .CO({o_rgb_nxt3_carry_n_0,o_rgb_nxt3_carry_n_1,o_rgb_nxt3_carry_n_2,o_rgb_nxt3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({o_rgb_nxt3_carry_i_1_n_0,delay_player2_n_56,delay_player_n_63,delay_player_n_64}),
        .O(NLW_o_rgb_nxt3_carry_O_UNCONNECTED[3:0]),
        .S({o_rgb_nxt3_carry_i_5_n_0,delay_player2_n_55,delay_player_n_61,delay_player_n_62}));
  CARRY4 o_rgb_nxt3_carry__0
       (.CI(o_rgb_nxt3_carry_n_0),
        .CO({o_rgb_nxt3_carry__0_n_0,o_rgb_nxt3_carry__0_n_1,o_rgb_nxt3_carry__0_n_2,o_rgb_nxt3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({delay_player_n_65,delay_player_n_66,o_rgb_nxt3_carry__0_i_3_n_0,o_rgb_nxt3_carry__0_i_4_n_0}),
        .O(NLW_o_rgb_nxt3_carry__0_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,o_rgb_nxt3_carry__0_i_5_n_0,o_rgb_nxt3_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    o_rgb_nxt3_carry__0_i_3
       (.I0(o_rgb_nxt4[10]),
        .I1(o_rgb_nxt4[11]),
        .O(o_rgb_nxt3_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt3_carry__0_i_4
       (.I0(o_rgb_nxt4[8]),
        .I1(data_delayed[8]),
        .I2(data_delayed[9]),
        .I3(o_rgb_nxt4[9]),
        .O(o_rgb_nxt3_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_rgb_nxt3_carry__0_i_5
       (.I0(o_rgb_nxt4[10]),
        .I1(o_rgb_nxt4[11]),
        .O(o_rgb_nxt3_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt3_carry__0_i_6
       (.I0(o_rgb_nxt4[8]),
        .I1(data_delayed[8]),
        .I2(o_rgb_nxt4[9]),
        .I3(data_delayed[9]),
        .O(o_rgb_nxt3_carry__0_i_6_n_0));
  CARRY4 o_rgb_nxt3_carry__1
       (.CI(o_rgb_nxt3_carry__0_n_0),
        .CO({o_rgb_nxt3_carry__1_n_0,o_rgb_nxt3_carry__1_n_1,o_rgb_nxt3_carry__1_n_2,o_rgb_nxt3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({delay_player_n_67,delay_player_n_68,delay_player_n_69,delay_player_n_70}),
        .O(NLW_o_rgb_nxt3_carry__1_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 }));
  CARRY4 o_rgb_nxt3_carry__2
       (.CI(o_rgb_nxt3_carry__1_n_0),
        .CO({o_rgb_nxt3_carry__2_n_0,o_rgb_nxt3_carry__2_n_1,o_rgb_nxt3_carry__2_n_2,o_rgb_nxt3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({o_rgb_nxt4[31],delay_player_n_58,delay_player_n_59,delay_player_n_60}),
        .O(NLW_o_rgb_nxt3_carry__2_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_rgb_nxt3_carry_i_1
       (.I0(o_rgb_nxt4[6]),
        .I1(data_delayed[6]),
        .I2(data_delayed[7]),
        .I3(o_rgb_nxt4[7]),
        .O(o_rgb_nxt3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_rgb_nxt3_carry_i_5
       (.I0(o_rgb_nxt4[6]),
        .I1(data_delayed[6]),
        .I2(o_rgb_nxt4[7]),
        .I3(data_delayed[7]),
        .O(o_rgb_nxt3_carry_i_5_n_0));
  CARRY4 o_rgb_nxt4_carry
       (.CI(1'b0),
        .CO({o_rgb_nxt4_carry_n_0,o_rgb_nxt4_carry_n_1,o_rgb_nxt4_carry_n_2,o_rgb_nxt4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_rgb_nxt4_carry_i_1_n_0,delay_player2_n_52,delay_player2_n_53,delay_player2_n_54}),
        .O(NLW_o_rgb_nxt4_carry_O_UNCONNECTED[3:0]),
        .S({o_rgb_nxt4_carry_i_5_n_0,delay_player2_n_49,delay_player2_n_50,delay_player2_n_51}));
  CARRY4 o_rgb_nxt4_carry__0
       (.CI(o_rgb_nxt4_carry_n_0),
        .CO({o_rgb_nxt4_carry__0_n_0,o_rgb_nxt4_carry__0_n_1,o_rgb_nxt4_carry__0_n_2,o_rgb_nxt4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,delay_player2_n_32,delay_player2_n_33}),
        .O(NLW_o_rgb_nxt4_carry__0_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,delay_player2_n_12,delay_player2_n_13}));
  CARRY4 o_rgb_nxt4_carry__1
       (.CI(o_rgb_nxt4_carry__0_n_0),
        .CO({o_rgb_nxt4_carry__1_n_0,o_rgb_nxt4_carry__1_n_1,o_rgb_nxt4_carry__1_n_2,o_rgb_nxt4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_rgb_nxt4_carry__1_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 }));
  CARRY4 o_rgb_nxt4_carry__2
       (.CI(o_rgb_nxt4_carry__1_n_0),
        .CO({o_rgb_nxt4_carry__2_n_0,o_rgb_nxt4_carry__2_n_1,o_rgb_nxt4_carry__2_n_2,o_rgb_nxt4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_rgb_nxt4_carry__2_O_UNCONNECTED[3:0]),
        .S({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 }));
  LUT4 #(
    .INIT(16'h0731)) 
    o_rgb_nxt4_carry_i_1
       (.I0(o_rgb_nxt5[6]),
        .I1(o_rgb_nxt5[7]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .O(o_rgb_nxt4_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2442)) 
    o_rgb_nxt4_carry_i_5
       (.I0(o_rgb_nxt5[6]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .I3(o_rgb_nxt5[7]),
        .O(o_rgb_nxt4_carry_i_5_n_0));
  CARRY4 \o_rgb_nxt4_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_rgb_nxt4_inferred__0/i__carry_n_0 ,\o_rgb_nxt4_inferred__0/i__carry_n_1 ,\o_rgb_nxt4_inferred__0/i__carry_n_2 ,\o_rgb_nxt4_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,hcount_delayed[6],1'b0}),
        .O(o_rgb_nxt4[8:5]),
        .S({hcount_delayed[8:7],delay_player_n_56,hcount_delayed[5]}));
  CARRY4 \o_rgb_nxt4_inferred__0/i__carry__0 
       (.CI(\o_rgb_nxt4_inferred__0/i__carry_n_0 ),
        .CO({\o_rgb_nxt4_inferred__0/i__carry__0_n_0 ,\NLW_o_rgb_nxt4_inferred__0/i__carry__0_CO_UNCONNECTED [2],\o_rgb_nxt4_inferred__0/i__carry__0_n_2 ,\o_rgb_nxt4_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,hcount_delayed[11:9]}),
        .O({\NLW_o_rgb_nxt4_inferred__0/i__carry__0_O_UNCONNECTED [3],o_rgb_nxt4[11:9]}),
        .S({1'b1,delay_player_n_53,delay_player_n_54,delay_player_n_55}));
  CARRY4 \o_rgb_nxt4_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\o_rgb_nxt4_inferred__1/i__carry_n_0 ,\o_rgb_nxt4_inferred__1/i__carry_n_1 ,\o_rgb_nxt4_inferred__1/i__carry_n_2 ,\o_rgb_nxt4_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,delay_player2_n_64}),
        .O(\NLW_o_rgb_nxt4_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,delay_player2_n_63}));
  CARRY4 \o_rgb_nxt4_inferred__1/i__carry__0 
       (.CI(\o_rgb_nxt4_inferred__1/i__carry_n_0 ),
        .CO({\o_rgb_nxt4_inferred__1/i__carry__0_n_0 ,\o_rgb_nxt4_inferred__1/i__carry__0_n_1 ,\o_rgb_nxt4_inferred__1/i__carry__0_n_2 ,\o_rgb_nxt4_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({delay_player_n_71,delay_player_n_72,i__carry__0_i_3__1_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_o_rgb_nxt4_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  CARRY4 \o_rgb_nxt4_inferred__1/i__carry__1 
       (.CI(\o_rgb_nxt4_inferred__1/i__carry__0_n_0 ),
        .CO({\o_rgb_nxt4_inferred__1/i__carry__1_n_0 ,\o_rgb_nxt4_inferred__1/i__carry__1_n_1 ,\o_rgb_nxt4_inferred__1/i__carry__1_n_2 ,\o_rgb_nxt4_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({delay_player_n_73,delay_player_n_74,delay_player_n_75,delay_player_n_76}),
        .O(\NLW_o_rgb_nxt4_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 }));
  CARRY4 \o_rgb_nxt4_inferred__1/i__carry__2 
       (.CI(\o_rgb_nxt4_inferred__1/i__carry__1_n_0 ),
        .CO({\o_rgb_nxt4_inferred__1/i__carry__2_n_0 ,\o_rgb_nxt4_inferred__1/i__carry__2_n_1 ,\o_rgb_nxt4_inferred__1/i__carry__2_n_2 ,\o_rgb_nxt4_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({o_rgb_nxt5[31],delay_player_n_50,delay_player_n_51,delay_player_n_52}),
        .O(\NLW_o_rgb_nxt4_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_0 }));
  CARRY4 \o_rgb_nxt5_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_rgb_nxt5_inferred__0/i__carry_n_0 ,\o_rgb_nxt5_inferred__0/i__carry_n_1 ,\o_rgb_nxt5_inferred__0/i__carry_n_2 ,\o_rgb_nxt5_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,vcount_delayed[2],1'b0}),
        .O(o_rgb_nxt5[4:1]),
        .S({vcount_delayed[4:3],delay_player_n_48,vcount_delayed[1]}));
  CARRY4 \o_rgb_nxt5_inferred__0/i__carry__0 
       (.CI(\o_rgb_nxt5_inferred__0/i__carry_n_0 ),
        .CO({\o_rgb_nxt5_inferred__0/i__carry__0_n_0 ,\o_rgb_nxt5_inferred__0/i__carry__0_n_1 ,\o_rgb_nxt5_inferred__0/i__carry__0_n_2 ,\o_rgb_nxt5_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(vcount_delayed[8:5]),
        .O(o_rgb_nxt5[8:5]),
        .S({delay_player_n_44,delay_player_n_45,delay_player_n_46,delay_player_n_47}));
  CARRY4 \o_rgb_nxt5_inferred__0/i__carry__1 
       (.CI(\o_rgb_nxt5_inferred__0/i__carry__0_n_0 ),
        .CO({\o_rgb_nxt5_inferred__0/i__carry__1_n_0 ,\NLW_o_rgb_nxt5_inferred__0/i__carry__1_CO_UNCONNECTED [2],\o_rgb_nxt5_inferred__0/i__carry__1_n_2 ,\o_rgb_nxt5_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,vcount_delayed[11:9]}),
        .O({\NLW_o_rgb_nxt5_inferred__0/i__carry__1_O_UNCONNECTED [3],o_rgb_nxt5[11:9]}),
        .S({1'b1,delay_player_n_41,delay_player_n_42,delay_player_n_43}));
  FDRE \o_rgb_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(o_rgb[0]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(o_rgb[10]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(o_rgb[11]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(o_rgb[1]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(o_rgb[2]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(o_rgb[3]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(o_rgb[4]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(o_rgb[5]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(o_rgb[6]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(o_rgb[7]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(o_rgb[8]),
        .R(delay_player_n_0));
  FDRE \o_rgb_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(o_rgb[9]),
        .R(delay_player_n_0));
  FDRE o_vblnk_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(vblnk_delayed),
        .Q(o_vblnk),
        .R(i_rst));
  FDRE \o_vcount_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[0]),
        .Q(o_vcount[0]),
        .R(i_rst));
  FDRE \o_vcount_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[10]),
        .Q(o_vcount[10]),
        .R(i_rst));
  FDRE \o_vcount_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[11]),
        .Q(o_vcount[11]),
        .R(i_rst));
  FDRE \o_vcount_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[1]),
        .Q(o_vcount[1]),
        .R(i_rst));
  FDRE \o_vcount_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[2]),
        .Q(o_vcount[2]),
        .R(i_rst));
  FDRE \o_vcount_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[3]),
        .Q(o_vcount[3]),
        .R(i_rst));
  FDRE \o_vcount_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[4]),
        .Q(o_vcount[4]),
        .R(i_rst));
  FDRE \o_vcount_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[5]),
        .Q(o_vcount[5]),
        .R(i_rst));
  FDRE \o_vcount_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[6]),
        .Q(o_vcount[6]),
        .R(i_rst));
  FDRE \o_vcount_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[7]),
        .Q(o_vcount[7]),
        .R(i_rst));
  FDRE \o_vcount_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[8]),
        .Q(o_vcount[8]),
        .R(i_rst));
  FDRE \o_vcount_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(vcount_delayed[9]),
        .Q(o_vcount[9]),
        .R(i_rst));
  FDRE o_vsync_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(vsync_delayed),
        .Q(o_vsync),
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
