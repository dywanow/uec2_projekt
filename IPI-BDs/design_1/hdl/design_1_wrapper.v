//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
//Date        : Fri Jul 19 21:44:54 2019
//Host        : DESKTOP-PLQDHVG running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (b,
    g,
    hs,
    r,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vs);
  output [3:0]b;
  output [3:0]g;
  output hs;
  output [3:0]r;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output vs;

  wire [3:0]b;
  wire [3:0]g;
  wire hs;
  wire [3:0]r;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire vs;

  design_1 design_1_i
       (.b(b),
        .g(g),
        .hs(hs),
        .r(r),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vs(vs));
endmodule
