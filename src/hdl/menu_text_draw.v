`timescale 1ns / 1ps

module menu_text_draw
    (
		input wire i_pclk,
        input wire i_rst,
        input wire [11:0] i_vcount,
        input wire i_vsync,
        input wire i_vblnk,
        input wire [11:0] i_hcount,
        input wire i_hsync,
        input wire i_hblnk,
        output reg [11:0] o_vcount,
        output reg o_vsync,
        output reg o_vblnk,
        output reg [11:0] o_hcount,
        output reg o_hsync,
        output reg o_hblnk,
        output reg [11:0] o_rgb
    );
    
    localparam H_MIN = 448,
               H_MAX = 1472,
               V_MIN = 100,
               V_MAX = 300;
    
    reg [11:0] rgb_nxt;
    
    always @(posedge i_pclk)
        if (i_rst) begin
            o_rgb <= 12'h000;
            o_hsync <= 0;
            o_vsync <= 0;
            o_hblnk <= 0;
            o_vblnk <= 0;
            o_hcount <= 0;
            o_vcount <= 0;
        end 
        else begin
            o_rgb <= rgb_nxt;
            o_hsync <= i_hsync;
            o_vsync <= i_vsync;
            o_hblnk <= i_hblnk;
            o_vblnk <= i_vblnk;
            o_hcount <= i_hcount;
            o_vcount <= i_vcount;
        end
    
    
    always @*
        if (i_vblnk || i_hblnk)
            rgb_nxt = 12'h000;
        else   
            if (i_hcount >= H_MIN && i_hcount < H_MAX && i_vcount >= V_MIN && i_vcount < V_MAX)
                rgb_nxt = 12'hb0b;
            else
                rgb_nxt = 12'h0c1;
    
    
endmodule