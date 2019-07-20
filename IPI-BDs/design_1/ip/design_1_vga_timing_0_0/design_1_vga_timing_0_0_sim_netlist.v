// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Jul 19 21:45:58 2019
// Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/AGH/sem4/cyfra2/uec2_projekt/IPI-BDs/design_1/ip/design_1_vga_timing_0_0/design_1_vga_timing_0_0_sim_netlist.v
// Design      : design_1_vga_timing_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vga_timing_0_0,vga_timing,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "vga_timing,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module design_1_vga_timing_0_0
   (vcount,
    vsync,
    vblnk,
    hcount,
    hsync,
    hblnk,
    pclk,
    rst);
  output [11:0]vcount;
  output vsync;
  output vblnk;
  output [11:0]hcount;
  output hsync;
  output hblnk;
  input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;

  wire hblnk;
  wire [11:0]hcount;
  wire hsync;
  wire pclk;
  wire rst;
  wire vblnk;
  wire [11:0]vcount;
  wire vsync;

  design_1_vga_timing_0_0_vga_timing inst
       (.Q(hcount),
        .hblnk(hblnk),
        .hsync(hsync),
        .pclk(pclk),
        .rst(rst),
        .vblnk(vblnk),
        .vcount(vcount),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "vga_timing" *) 
module design_1_vga_timing_0_0_vga_timing
   (Q,
    vcount,
    hblnk,
    hsync,
    vblnk,
    vsync,
    rst,
    pclk);
  output [11:0]Q;
  output [11:0]vcount;
  output hblnk;
  output hsync;
  output vblnk;
  output vsync;
  input rst;
  input pclk;

  wire [11:0]Q;
  wire [11:1]data0;
  wire hblnk;
  wire hblnk_INST_0_i_1_n_0;
  wire [11:0]hc;
  wire \hc_reg[11]_i_2_n_2 ;
  wire \hc_reg[11]_i_2_n_3 ;
  wire \hc_reg[4]_i_2_n_0 ;
  wire \hc_reg[4]_i_2_n_1 ;
  wire \hc_reg[4]_i_2_n_2 ;
  wire \hc_reg[4]_i_2_n_3 ;
  wire \hc_reg[8]_i_2_n_0 ;
  wire \hc_reg[8]_i_2_n_1 ;
  wire \hc_reg[8]_i_2_n_2 ;
  wire \hc_reg[8]_i_2_n_3 ;
  wire hsync;
  wire hsync_INST_0_i_1_n_0;
  wire hsync_INST_0_i_2_n_0;
  wire pclk;
  wire rst;
  wire vblnk;
  wire vblnk_INST_0_i_1_n_0;
  wire vblnk_INST_0_i_2_n_0;
  wire vblnk_INST_0_i_3_n_0;
  wire vc;
  wire vc0_carry__0_n_0;
  wire vc0_carry__0_n_1;
  wire vc0_carry__0_n_2;
  wire vc0_carry__0_n_3;
  wire vc0_carry__0_n_4;
  wire vc0_carry__0_n_5;
  wire vc0_carry__0_n_6;
  wire vc0_carry__0_n_7;
  wire vc0_carry__1_n_2;
  wire vc0_carry__1_n_3;
  wire vc0_carry__1_n_5;
  wire vc0_carry__1_n_6;
  wire vc0_carry__1_n_7;
  wire vc0_carry_n_0;
  wire vc0_carry_n_1;
  wire vc0_carry_n_2;
  wire vc0_carry_n_3;
  wire vc0_carry_n_4;
  wire vc0_carry_n_5;
  wire vc0_carry_n_6;
  wire vc0_carry_n_7;
  wire \vc[0]_i_1_n_0 ;
  wire \vc[10]_i_1_n_0 ;
  wire \vc[11]_i_2_n_0 ;
  wire \vc[11]_i_3_n_0 ;
  wire \vc[11]_i_4_n_0 ;
  wire \vc[11]_i_5_n_0 ;
  wire \vc[1]_i_1_n_0 ;
  wire \vc[2]_i_1_n_0 ;
  wire \vc[3]_i_1_n_0 ;
  wire \vc[4]_i_1_n_0 ;
  wire \vc[5]_i_1_n_0 ;
  wire \vc[6]_i_1_n_0 ;
  wire \vc[7]_i_1_n_0 ;
  wire \vc[8]_i_1_n_0 ;
  wire \vc[9]_i_1_n_0 ;
  wire [11:0]vcount;
  wire vsync;
  wire vsync_INST_0_i_1_n_0;
  wire vsync_INST_0_i_2_n_0;
  wire [3:2]\NLW_hc_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_hc_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_vc0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_vc0_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h300020080000200C)) 
    hblnk_INST_0
       (.I0(hblnk_INST_0_i_1_n_0),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(hblnk));
  LUT5 #(
    .INIT(32'h00000007)) 
    hblnk_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[9]),
        .O(hblnk_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \hc[0]_i_1 
       (.I0(Q[0]),
        .O(hc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[10]_i_1 
       (.I0(data0[10]),
        .I1(vc),
        .O(hc[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[11]_i_1 
       (.I0(data0[11]),
        .I1(vc),
        .O(hc[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[1]_i_1 
       (.I0(data0[1]),
        .I1(vc),
        .O(hc[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[2]_i_1 
       (.I0(data0[2]),
        .I1(vc),
        .O(hc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[3]_i_1 
       (.I0(data0[3]),
        .I1(vc),
        .O(hc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[4]_i_1 
       (.I0(data0[4]),
        .I1(vc),
        .O(hc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[5]_i_1 
       (.I0(data0[5]),
        .I1(vc),
        .O(hc[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \hc[6]_i_1 
       (.I0(data0[6]),
        .I1(vc),
        .O(hc[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[7]_i_1 
       (.I0(data0[7]),
        .I1(vc),
        .O(hc[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[8]_i_1 
       (.I0(data0[8]),
        .I1(vc),
        .O(hc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hc[9]_i_1 
       (.I0(data0[9]),
        .I1(vc),
        .O(hc[9]));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[10]),
        .Q(Q[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[11]),
        .Q(Q[11]),
        .R(rst));
  CARRY4 \hc_reg[11]_i_2 
       (.CI(\hc_reg[8]_i_2_n_0 ),
        .CO({\NLW_hc_reg[11]_i_2_CO_UNCONNECTED [3:2],\hc_reg[11]_i_2_n_2 ,\hc_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hc_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,Q[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[3]),
        .Q(Q[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[4]),
        .Q(Q[4]),
        .R(rst));
  CARRY4 \hc_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\hc_reg[4]_i_2_n_0 ,\hc_reg[4]_i_2_n_1 ,\hc_reg[4]_i_2_n_2 ,\hc_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Q[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[5]),
        .Q(Q[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[6]),
        .Q(Q[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[7]),
        .Q(Q[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[8]),
        .Q(Q[8]),
        .R(rst));
  CARRY4 \hc_reg[8]_i_2 
       (.CI(\hc_reg[4]_i_2_n_0 ),
        .CO({\hc_reg[8]_i_2_n_0 ,\hc_reg[8]_i_2_n_1 ,\hc_reg[8]_i_2_n_2 ,\hc_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Q[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \hc_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(hc[9]),
        .Q(Q[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000080800001)) 
    hsync_INST_0
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(hsync_INST_0_i_1_n_0),
        .O(hsync));
  LUT6 #(
    .INIT(64'hFFFFFFFF07770772)) 
    hsync_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[2]),
        .I5(hsync_INST_0_i_2_n_0),
        .O(hsync_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBD)) 
    hsync_INST_0_i_2
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(Q[9]),
        .O(hsync_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h03301131)) 
    vblnk_INST_0
       (.I0(vcount[4]),
        .I1(vblnk_INST_0_i_1_n_0),
        .I2(vcount[6]),
        .I3(vcount[5]),
        .I4(vcount[3]),
        .O(vblnk));
  LUT6 #(
    .INIT(64'hABFFABABABABABAB)) 
    vblnk_INST_0_i_1
       (.I0(vsync_INST_0_i_2_n_0),
        .I1(vcount[4]),
        .I2(vcount[6]),
        .I3(vblnk_INST_0_i_2_n_0),
        .I4(vblnk_INST_0_i_3_n_0),
        .I5(vcount[5]),
        .O(vblnk_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    vblnk_INST_0_i_2
       (.I0(vcount[3]),
        .I1(vcount[2]),
        .O(vblnk_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    vblnk_INST_0_i_3
       (.I0(vcount[1]),
        .I1(vcount[0]),
        .O(vblnk_INST_0_i_3_n_0));
  CARRY4 vc0_carry
       (.CI(1'b0),
        .CO({vc0_carry_n_0,vc0_carry_n_1,vc0_carry_n_2,vc0_carry_n_3}),
        .CYINIT(vcount[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({vc0_carry_n_4,vc0_carry_n_5,vc0_carry_n_6,vc0_carry_n_7}),
        .S(vcount[4:1]));
  CARRY4 vc0_carry__0
       (.CI(vc0_carry_n_0),
        .CO({vc0_carry__0_n_0,vc0_carry__0_n_1,vc0_carry__0_n_2,vc0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({vc0_carry__0_n_4,vc0_carry__0_n_5,vc0_carry__0_n_6,vc0_carry__0_n_7}),
        .S(vcount[8:5]));
  CARRY4 vc0_carry__1
       (.CI(vc0_carry__0_n_0),
        .CO({NLW_vc0_carry__1_CO_UNCONNECTED[3:2],vc0_carry__1_n_2,vc0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_vc0_carry__1_O_UNCONNECTED[3],vc0_carry__1_n_5,vc0_carry__1_n_6,vc0_carry__1_n_7}),
        .S({1'b0,vcount[11:9]}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vc[0]_i_1 
       (.I0(\vc[11]_i_5_n_0 ),
        .I1(vcount[0]),
        .O(\vc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[10]_i_1 
       (.I0(vc0_carry__1_n_6),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \vc[11]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[7]),
        .I3(Q[2]),
        .I4(\vc[11]_i_3_n_0 ),
        .I5(\vc[11]_i_4_n_0 ),
        .O(vc));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[11]_i_2 
       (.I0(vc0_carry__1_n_5),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vc[11]_i_3 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\vc[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \vc[11]_i_4 
       (.I0(Q[1]),
        .I1(Q[8]),
        .I2(Q[11]),
        .I3(Q[3]),
        .O(\vc[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \vc[11]_i_5 
       (.I0(vcount[5]),
        .I1(vcount[6]),
        .I2(vcount[4]),
        .I3(vblnk_INST_0_i_2_n_0),
        .I4(vsync_INST_0_i_2_n_0),
        .I5(vblnk_INST_0_i_3_n_0),
        .O(\vc[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[1]_i_1 
       (.I0(vc0_carry_n_7),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[2]_i_1 
       (.I0(vc0_carry_n_6),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[3]_i_1 
       (.I0(vc0_carry_n_5),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[4]_i_1 
       (.I0(vc0_carry_n_4),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[5]_i_1 
       (.I0(vc0_carry__0_n_7),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[6]_i_1 
       (.I0(vc0_carry__0_n_6),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[7]_i_1 
       (.I0(vc0_carry__0_n_5),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[8]_i_1 
       (.I0(vc0_carry__0_n_4),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vc[9]_i_1 
       (.I0(vc0_carry__1_n_7),
        .I1(\vc[11]_i_5_n_0 ),
        .O(\vc[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[0] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[0]_i_1_n_0 ),
        .Q(vcount[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[10] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[10]_i_1_n_0 ),
        .Q(vcount[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[11] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[11]_i_2_n_0 ),
        .Q(vcount[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[1] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[1]_i_1_n_0 ),
        .Q(vcount[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[2] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[2]_i_1_n_0 ),
        .Q(vcount[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[3] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[3]_i_1_n_0 ),
        .Q(vcount[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[4] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[4]_i_1_n_0 ),
        .Q(vcount[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[5] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[5]_i_1_n_0 ),
        .Q(vcount[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[6] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[6]_i_1_n_0 ),
        .Q(vcount[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[7] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[7]_i_1_n_0 ),
        .Q(vcount[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[8] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[8]_i_1_n_0 ),
        .Q(vcount[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \vc_reg[9] 
       (.C(pclk),
        .CE(vc),
        .D(\vc[9]_i_1_n_0 ),
        .Q(vcount[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20002002)) 
    vsync_INST_0
       (.I0(vsync_INST_0_i_1_n_0),
        .I1(vsync_INST_0_i_2_n_0),
        .I2(vcount[2]),
        .I3(vcount[3]),
        .I4(vcount[0]),
        .O(vsync));
  LUT5 #(
    .INIT(32'h44000002)) 
    vsync_INST_0_i_1
       (.I0(vcount[6]),
        .I1(vcount[5]),
        .I2(vcount[1]),
        .I3(vcount[4]),
        .I4(vcount[3]),
        .O(vsync_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    vsync_INST_0_i_2
       (.I0(vcount[9]),
        .I1(vcount[7]),
        .I2(vcount[10]),
        .I3(vcount[11]),
        .I4(vcount[8]),
        .O(vsync_INST_0_i_2_n_0));
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
