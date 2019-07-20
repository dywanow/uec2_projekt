// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Jul 19 21:45:59 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_map_draw_0_0/design_1_map_draw_0_0_sim_netlist.v
// Design      : design_1_map_draw_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_map_draw_0_0,map_draw,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "map_draw,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module design_1_map_draw_0_0
   (i_pclk,
    i_rst,
    i_vcount,
    i_vsync,
    i_vblnk,
    i_hcount,
    i_hsync,
    i_hblnk,
    i_data,
    o_vcount,
    o_vsync,
    o_vblnk,
    o_hcount,
    o_hsync,
    o_hblnk,
    o_rgb,
    o_addr);
  input i_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH" *) input i_rst;
  input [11:0]i_vcount;
  input i_vsync;
  input i_vblnk;
  input [11:0]i_hcount;
  input i_hsync;
  input i_hblnk;
  input [3:0]i_data;
  output [11:0]o_vcount;
  output o_vsync;
  output o_vblnk;
  output [11:0]o_hcount;
  output o_hsync;
  output o_hblnk;
  output [11:0]o_rgb;
  output [7:0]o_addr;

  wire [3:0]i_data;
  wire i_hblnk;
  wire [11:0]i_hcount;
  wire i_hsync;
  wire i_pclk;
  wire i_rst;
  wire i_vblnk;
  wire [11:0]i_vcount;
  wire i_vsync;
  wire [7:0]o_addr;
  wire o_hblnk;
  wire [11:0]o_hcount;
  wire o_hsync;
  wire [11:0]o_rgb;
  wire o_vblnk;
  wire [11:0]o_vcount;
  wire o_vsync;

  design_1_map_draw_0_0_map_draw inst
       (.D({i_hblnk,i_hsync,i_vblnk,i_vsync,i_hcount,i_vcount}),
        .i_data(i_data),
        .i_pclk(i_pclk),
        .i_rst(i_rst),
        .o_addr({o_addr[7:6],o_addr[2:0]}),
        .o_hblnk(o_hblnk),
        .o_hcount(o_hcount),
        .o_hsync(o_hsync),
        .o_rgb(o_rgb),
        .o_vblnk(o_vblnk),
        .o_vcount(o_vcount),
        .o_vsync(o_vsync));
  LUT4 #(
    .INIT(16'h807F)) 
    \o_addr[3]_INST_0 
       (.I0(i_hcount[7]),
        .I1(i_hcount[6]),
        .I2(i_hcount[8]),
        .I3(i_hcount[9]),
        .O(o_addr[3]));
  LUT5 #(
    .INIT(32'hEAAA1555)) 
    \o_addr[4]_INST_0 
       (.I0(i_vcount[5]),
        .I1(i_vcount[4]),
        .I2(i_vcount[2]),
        .I3(i_vcount[3]),
        .I4(i_vcount[6]),
        .O(o_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFEAAA00001555)) 
    \o_addr[5]_INST_0 
       (.I0(i_vcount[6]),
        .I1(i_vcount[3]),
        .I2(i_vcount[2]),
        .I3(i_vcount[4]),
        .I4(i_vcount[5]),
        .I5(i_vcount[7]),
        .O(o_addr[5]));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_map_draw_0_0_delay
   (D,
    Q,
    SR,
    i_data,
    i_data_2_sp_1,
    i_rst,
    i_hblnk,
    i_pclk);
  output [11:0]D;
  output [27:0]Q;
  output [1:0]SR;
  input [3:0]i_data;
  input i_data_2_sp_1;
  input i_rst;
  input [27:0]i_hblnk;
  input i_pclk;

  wire [11:0]D;
  wire [27:0]Q;
  wire [1:0]SR;
  wire [3:0]i_data;
  wire i_data_2_sn_1;
  wire [27:0]i_hblnk;
  wire i_pclk;
  wire i_rst;
  wire \o_rgb[10]_i_2_n_0 ;
  wire \o_rgb[10]_i_3_n_0 ;
  wire \o_rgb[11]_i_10_n_0 ;
  wire \o_rgb[11]_i_3_n_0 ;
  wire \o_rgb[11]_i_4_n_0 ;
  wire \o_rgb[11]_i_5_n_0 ;
  wire \o_rgb[11]_i_6_n_0 ;
  wire \o_rgb[11]_i_7_n_0 ;
  wire \o_rgb[11]_i_8_n_0 ;
  wire \o_rgb[11]_i_9_n_0 ;
  wire \o_rgb[3]_i_3_n_0 ;
  wire \o_rgb[4]_i_2_n_0 ;
  wire \o_rgb[4]_i_4_n_0 ;
  wire \o_rgb[4]_i_5_n_0 ;
  wire \o_rgb[4]_i_6_n_0 ;
  wire \o_rgb[5]_i_2_n_0 ;
  wire \o_rgb[6]_i_2_n_0 ;
  wire \o_rgb[7]_i_2_n_0 ;
  wire \o_rgb[7]_i_3_n_0 ;
  wire \o_rgb[7]_i_4_n_0 ;
  wire \o_rgb[7]_i_5_n_0 ;
  wire \o_rgb[7]_i_6_n_0 ;
  wire \o_rgb[7]_i_7_n_0 ;
  wire \o_rgb[8]_i_2_n_0 ;

  assign i_data_2_sn_1 = i_data_2_sp_1;
  FDRE \del_mem_reg[0][0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[0]),
        .Q(Q[0]),
        .R(i_rst));
  FDRE \del_mem_reg[0][10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[10]),
        .Q(Q[10]),
        .R(i_rst));
  FDRE \del_mem_reg[0][11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[11]),
        .Q(Q[11]),
        .R(i_rst));
  FDRE \del_mem_reg[0][12] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[12]),
        .Q(Q[12]),
        .R(i_rst));
  FDRE \del_mem_reg[0][13] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[13]),
        .Q(Q[13]),
        .R(i_rst));
  FDRE \del_mem_reg[0][14] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[14]),
        .Q(Q[14]),
        .R(i_rst));
  FDRE \del_mem_reg[0][15] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[15]),
        .Q(Q[15]),
        .R(i_rst));
  FDRE \del_mem_reg[0][16] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[16]),
        .Q(Q[16]),
        .R(i_rst));
  FDRE \del_mem_reg[0][17] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[17]),
        .Q(Q[17]),
        .R(i_rst));
  FDRE \del_mem_reg[0][18] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[18]),
        .Q(Q[18]),
        .R(i_rst));
  FDRE \del_mem_reg[0][19] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[19]),
        .Q(Q[19]),
        .R(i_rst));
  FDRE \del_mem_reg[0][1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[1]),
        .Q(Q[1]),
        .R(i_rst));
  FDRE \del_mem_reg[0][20] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[20]),
        .Q(Q[20]),
        .R(i_rst));
  FDRE \del_mem_reg[0][21] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[21]),
        .Q(Q[21]),
        .R(i_rst));
  FDRE \del_mem_reg[0][22] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[22]),
        .Q(Q[22]),
        .R(i_rst));
  FDRE \del_mem_reg[0][23] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[23]),
        .Q(Q[23]),
        .R(i_rst));
  FDRE \del_mem_reg[0][24] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[24]),
        .Q(Q[24]),
        .R(i_rst));
  FDRE \del_mem_reg[0][25] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[25]),
        .Q(Q[25]),
        .R(i_rst));
  FDRE \del_mem_reg[0][26] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[26]),
        .Q(Q[26]),
        .R(i_rst));
  FDRE \del_mem_reg[0][27] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[27]),
        .Q(Q[27]),
        .R(i_rst));
  FDRE \del_mem_reg[0][2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[2]),
        .Q(Q[2]),
        .R(i_rst));
  FDRE \del_mem_reg[0][3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[3]),
        .Q(Q[3]),
        .R(i_rst));
  FDRE \del_mem_reg[0][4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[4]),
        .Q(Q[4]),
        .R(i_rst));
  FDRE \del_mem_reg[0][5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[5]),
        .Q(Q[5]),
        .R(i_rst));
  FDRE \del_mem_reg[0][6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[6]),
        .Q(Q[6]),
        .R(i_rst));
  FDRE \del_mem_reg[0][7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[7]),
        .Q(Q[7]),
        .R(i_rst));
  FDRE \del_mem_reg[0][8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[8]),
        .Q(Q[8]),
        .R(i_rst));
  FDRE \del_mem_reg[0][9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(i_hblnk[9]),
        .Q(Q[9]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \o_rgb[0]_i_1 
       (.I0(i_data[2]),
        .I1(i_data[3]),
        .I2(i_data[1]),
        .I3(\o_rgb[11]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF04FF)) 
    \o_rgb[10]_i_1 
       (.I0(\o_rgb[10]_i_2_n_0 ),
        .I1(i_data[0]),
        .I2(i_data[2]),
        .I3(\o_rgb[11]_i_3_n_0 ),
        .I4(\o_rgb[11]_i_5_n_0 ),
        .I5(\o_rgb[10]_i_3_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_rgb[10]_i_2 
       (.I0(i_data[3]),
        .I1(\o_rgb[4]_i_2_n_0 ),
        .O(\o_rgb[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_rgb[10]_i_3 
       (.I0(\o_rgb[11]_i_4_n_0 ),
        .I1(\o_rgb[4]_i_2_n_0 ),
        .O(\o_rgb[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_rgb[11]_i_1 
       (.I0(i_rst),
        .I1(Q[25]),
        .I2(Q[27]),
        .O(SR[1]));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFEFFFE)) 
    \o_rgb[11]_i_10 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[3]),
        .I3(Q[10]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\o_rgb[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \o_rgb[11]_i_2 
       (.I0(\o_rgb[11]_i_3_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \o_rgb[11]_i_3 
       (.I0(\o_rgb[4]_i_2_n_0 ),
        .I1(i_data[3]),
        .I2(i_data[1]),
        .I3(i_data[0]),
        .O(\o_rgb[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFEFFFEFEFF)) 
    \o_rgb[11]_i_4 
       (.I0(\o_rgb[11]_i_6_n_0 ),
        .I1(Q[23]),
        .I2(Q[11]),
        .I3(\o_rgb[11]_i_7_n_0 ),
        .I4(Q[10]),
        .I5(\o_rgb[11]_i_8_n_0 ),
        .O(\o_rgb[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000022)) 
    \o_rgb[11]_i_5 
       (.I0(\o_rgb[11]_i_9_n_0 ),
        .I1(\o_rgb[11]_i_10_n_0 ),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\o_rgb[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC9999999)) 
    \o_rgb[11]_i_6 
       (.I0(Q[21]),
        .I1(Q[22]),
        .I2(Q[19]),
        .I3(Q[20]),
        .I4(Q[18]),
        .O(\o_rgb[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \o_rgb[11]_i_7 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .O(\o_rgb[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_rgb[11]_i_8 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\o_rgb[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100000001)) 
    \o_rgb[11]_i_9 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[11]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[10]),
        .O(\o_rgb[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \o_rgb[1]_i_1 
       (.I0(\o_rgb[4]_i_2_n_0 ),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(i_data[2]),
        .I3(i_data[3]),
        .I4(i_data[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAABABAA)) 
    \o_rgb[2]_i_1 
       (.I0(\o_rgb[11]_i_4_n_0 ),
        .I1(i_data[2]),
        .I2(i_data[3]),
        .I3(i_data[1]),
        .I4(i_data[0]),
        .I5(\o_rgb[4]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_rgb[3]_i_1 
       (.I0(\o_rgb[11]_i_5_n_0 ),
        .I1(i_rst),
        .I2(Q[25]),
        .I3(Q[27]),
        .I4(\o_rgb[3]_i_3_n_0 ),
        .O(SR[0]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0110)) 
    \o_rgb[3]_i_2 
       (.I0(i_data[2]),
        .I1(i_data[3]),
        .I2(i_data[1]),
        .I3(i_data[0]),
        .I4(\o_rgb[4]_i_2_n_0 ),
        .I5(\o_rgb[11]_i_4_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \o_rgb[3]_i_3 
       (.I0(\o_rgb[4]_i_2_n_0 ),
        .I1(\o_rgb[7]_i_5_n_0 ),
        .I2(Q[22]),
        .I3(Q[21]),
        .I4(Q[19]),
        .O(\o_rgb[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AA20AA20AA22)) 
    \o_rgb[4]_i_1 
       (.I0(\o_rgb[7]_i_2_n_0 ),
        .I1(\o_rgb[4]_i_2_n_0 ),
        .I2(\o_rgb[11]_i_4_n_0 ),
        .I3(\o_rgb[7]_i_3_n_0 ),
        .I4(i_data[3]),
        .I5(i_data_2_sn_1),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000008002)) 
    \o_rgb[4]_i_2 
       (.I0(\o_rgb[4]_i_4_n_0 ),
        .I1(Q[14]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(\o_rgb[4]_i_5_n_0 ),
        .I5(\o_rgb[4]_i_6_n_0 ),
        .O(\o_rgb[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \o_rgb[4]_i_4 
       (.I0(Q[19]),
        .I1(Q[23]),
        .I2(Q[20]),
        .I3(Q[21]),
        .O(\o_rgb[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \o_rgb[4]_i_5 
       (.I0(Q[21]),
        .I1(Q[22]),
        .I2(Q[20]),
        .I3(Q[18]),
        .O(\o_rgb[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \o_rgb[4]_i_6 
       (.I0(Q[18]),
        .I1(Q[17]),
        .I2(Q[16]),
        .I3(Q[15]),
        .I4(Q[14]),
        .O(\o_rgb[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00088888)) 
    \o_rgb[5]_i_1 
       (.I0(\o_rgb[7]_i_2_n_0 ),
        .I1(\o_rgb[5]_i_2_n_0 ),
        .I2(i_data[2]),
        .I3(i_data[0]),
        .I4(i_data[1]),
        .I5(\o_rgb[7]_i_3_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \o_rgb[5]_i_2 
       (.I0(\o_rgb[11]_i_4_n_0 ),
        .I1(\o_rgb[4]_i_2_n_0 ),
        .I2(i_data[3]),
        .O(\o_rgb[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    \o_rgb[6]_i_1 
       (.I0(\o_rgb[7]_i_2_n_0 ),
        .I1(\o_rgb[8]_i_2_n_0 ),
        .I2(\o_rgb[6]_i_2_n_0 ),
        .I3(i_data[1]),
        .I4(i_data[0]),
        .I5(\o_rgb[7]_i_3_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_rgb[6]_i_2 
       (.I0(\o_rgb[11]_i_4_n_0 ),
        .I1(i_data[2]),
        .O(\o_rgb[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF000F010)) 
    \o_rgb[7]_i_1 
       (.I0(i_data[2]),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[7]_i_2_n_0 ),
        .I3(\o_rgb[7]_i_3_n_0 ),
        .I4(\o_rgb[11]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \o_rgb[7]_i_2 
       (.I0(\o_rgb[7]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\o_rgb[11]_i_5_n_0 ),
        .O(\o_rgb[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFAAAAAAAA)) 
    \o_rgb[7]_i_3 
       (.I0(\o_rgb[11]_i_5_n_0 ),
        .I1(Q[19]),
        .I2(Q[21]),
        .I3(Q[22]),
        .I4(\o_rgb[7]_i_5_n_0 ),
        .I5(\o_rgb[4]_i_2_n_0 ),
        .O(\o_rgb[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \o_rgb[7]_i_4 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[3]),
        .I3(Q[10]),
        .I4(Q[4]),
        .I5(\o_rgb[7]_i_6_n_0 ),
        .O(\o_rgb[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \o_rgb[7]_i_5 
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(\o_rgb[7]_i_7_n_0 ),
        .O(\o_rgb[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_rgb[7]_i_6 
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(\o_rgb[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \o_rgb[7]_i_7 
       (.I0(Q[20]),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[14]),
        .O(\o_rgb[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEF0F0F0F0)) 
    \o_rgb[8]_i_1 
       (.I0(i_data[2]),
        .I1(\o_rgb[11]_i_4_n_0 ),
        .I2(\o_rgb[11]_i_5_n_0 ),
        .I3(i_data[0]),
        .I4(i_data[1]),
        .I5(\o_rgb[8]_i_2_n_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \o_rgb[8]_i_2 
       (.I0(\o_rgb[4]_i_2_n_0 ),
        .I1(i_data[3]),
        .I2(i_data[1]),
        .I3(\o_rgb[11]_i_4_n_0 ),
        .O(\o_rgb[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABFBB)) 
    \o_rgb[9]_i_1 
       (.I0(\o_rgb[11]_i_5_n_0 ),
        .I1(i_data[1]),
        .I2(i_data[2]),
        .I3(i_data[0]),
        .I4(\o_rgb[11]_i_4_n_0 ),
        .I5(\o_rgb[10]_i_2_n_0 ),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "map_draw" *) 
module design_1_map_draw_0_0_map_draw
   (o_addr,
    o_vcount,
    o_vsync,
    o_vblnk,
    o_hcount,
    o_hsync,
    o_hblnk,
    o_rgb,
    D,
    i_data,
    i_rst,
    i_pclk);
  output [4:0]o_addr;
  output [11:0]o_vcount;
  output o_vsync;
  output o_vblnk;
  output [11:0]o_hcount;
  output o_hsync;
  output o_hblnk;
  output [11:0]o_rgb;
  input [27:0]D;
  input [3:0]i_data;
  input i_rst;
  input i_pclk;

  wire [27:0]D;
  wire \addry0/i__n_0 ;
  wire delay_map_n_28;
  wire delay_map_n_29;
  wire delay_map_n_30;
  wire delay_map_n_31;
  wire delay_map_n_32;
  wire delay_map_n_33;
  wire delay_map_n_34;
  wire delay_map_n_35;
  wire delay_map_n_36;
  wire delay_map_n_37;
  wire delay_map_n_38;
  wire delay_map_n_39;
  wire delay_map_n_40;
  wire delay_map_n_41;
  wire hblnk_delayed;
  wire [11:0]hcount_delayed;
  wire hsync_delayed;
  wire [3:0]i_data;
  wire i_pclk;
  wire i_rst;
  wire [4:0]o_addr;
  wire o_hblnk;
  wire [11:0]o_hcount;
  wire o_hsync;
  wire [11:0]o_rgb;
  wire \o_rgb[4]_i_3_n_0 ;
  wire o_vblnk;
  wire [11:0]o_vcount;
  wire o_vsync;
  wire [11:0]p_1_in;
  wire vblnk_delayed;
  wire vsync_delayed;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \addry0/i_ 
       (.I0(D[6]),
        .I1(D[3]),
        .I2(D[2]),
        .I3(D[4]),
        .I4(D[5]),
        .I5(D[7]),
        .O(\addry0/i__n_0 ));
  design_1_map_draw_0_0_delay delay_map
       (.D(p_1_in),
        .Q({hblnk_delayed,hsync_delayed,vblnk_delayed,vsync_delayed,hcount_delayed,delay_map_n_28,delay_map_n_29,delay_map_n_30,delay_map_n_31,delay_map_n_32,delay_map_n_33,delay_map_n_34,delay_map_n_35,delay_map_n_36,delay_map_n_37,delay_map_n_38,delay_map_n_39}),
        .SR({delay_map_n_40,delay_map_n_41}),
        .i_data(i_data),
        .i_data_2_sp_1(\o_rgb[4]_i_3_n_0 ),
        .i_hblnk(D),
        .i_pclk(i_pclk),
        .i_rst(i_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \o_addr[0]_INST_0 
       (.I0(D[18]),
        .O(o_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_addr[1]_INST_0 
       (.I0(D[18]),
        .I1(D[19]),
        .O(o_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_addr[2]_INST_0 
       (.I0(D[18]),
        .I1(D[19]),
        .I2(D[20]),
        .O(o_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_addr[6]_INST_0 
       (.I0(\addry0/i__n_0 ),
        .I1(D[8]),
        .O(o_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \o_addr[7]_INST_0 
       (.I0(D[8]),
        .I1(\addry0/i__n_0 ),
        .I2(D[9]),
        .O(o_addr[4]));
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
  LUT3 #(
    .INIT(8'hCB)) 
    \o_rgb[4]_i_3 
       (.I0(i_data[0]),
        .I1(i_data[1]),
        .I2(i_data[2]),
        .O(\o_rgb[4]_i_3_n_0 ));
  FDRE \o_rgb_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(o_rgb[0]),
        .R(delay_map_n_41));
  FDRE \o_rgb_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(o_rgb[10]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(o_rgb[11]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(o_rgb[1]),
        .R(delay_map_n_41));
  FDRE \o_rgb_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(o_rgb[2]),
        .R(delay_map_n_41));
  FDRE \o_rgb_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(o_rgb[3]),
        .R(delay_map_n_41));
  FDRE \o_rgb_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(o_rgb[4]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(o_rgb[5]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(o_rgb[6]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(o_rgb[7]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(o_rgb[8]),
        .R(delay_map_n_40));
  FDRE \o_rgb_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(o_rgb[9]),
        .R(delay_map_n_40));
  FDRE o_vblnk_reg
       (.C(i_pclk),
        .CE(1'b1),
        .D(vblnk_delayed),
        .Q(o_vblnk),
        .R(i_rst));
  FDRE \o_vcount_reg[0] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_39),
        .Q(o_vcount[0]),
        .R(i_rst));
  FDRE \o_vcount_reg[10] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_29),
        .Q(o_vcount[10]),
        .R(i_rst));
  FDRE \o_vcount_reg[11] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_28),
        .Q(o_vcount[11]),
        .R(i_rst));
  FDRE \o_vcount_reg[1] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_38),
        .Q(o_vcount[1]),
        .R(i_rst));
  FDRE \o_vcount_reg[2] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_37),
        .Q(o_vcount[2]),
        .R(i_rst));
  FDRE \o_vcount_reg[3] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_36),
        .Q(o_vcount[3]),
        .R(i_rst));
  FDRE \o_vcount_reg[4] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_35),
        .Q(o_vcount[4]),
        .R(i_rst));
  FDRE \o_vcount_reg[5] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_34),
        .Q(o_vcount[5]),
        .R(i_rst));
  FDRE \o_vcount_reg[6] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_33),
        .Q(o_vcount[6]),
        .R(i_rst));
  FDRE \o_vcount_reg[7] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_32),
        .Q(o_vcount[7]),
        .R(i_rst));
  FDRE \o_vcount_reg[8] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_31),
        .Q(o_vcount[8]),
        .R(i_rst));
  FDRE \o_vcount_reg[9] 
       (.C(i_pclk),
        .CE(1'b1),
        .D(delay_map_n_30),
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
