`timescale 1ns / 1ps

module draw_background
    # ( parameter   
        H_MIN = 0,
        H_MAX = 1920,
        V_MIN = 0,
        V_MAX = 1080
    )
    (
		input wire i_pclk,
        input wire i_rst,
        input wire [11:0] i_vcount,
        input wire i_vsync,
        input wire i_vblnk,
        input wire [11:0] i_hcount,
        input wire i_hsync,
        input wire i_hblnk,
        input wire [11:0] i_rgb,
        input wire [11:0] i_rom_rgb,
        output reg [11:0] o_vcount,
        output reg o_vsync,
        output reg o_vblnk,
        output reg [11:0] o_hcount,
        output reg o_hsync,
        output reg o_hblnk,
        output reg [11:0] o_rgb,
        output wire [11:0] o_rom_addr
    );
    
    localparam ELEMENT_SIZE = 64;

    wire [5:0] rom_addrx, rom_addry;
    reg [11:0] rgb_nxt;
    wire hblnk_del_1_clk, hsync_del_1_clk, vblnk_del_1_clk, vsync_del_1_clk;
    wire [11:0] hcount_del_1_clk, vcount_del_1_clk;
    wire [11:0] rgb_del_1_clk;
    
    
    delay
    #(
        .WIDTH(40),
        .CLK_DEL(1)
    )
    delay_1_clk
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din(
                {
                    i_hblnk,
                    i_hsync,
                    i_vblnk,
                    i_vsync,
                    i_hcount,
                    i_vcount,
                    i_rgb
                }
            ),
        .dout(
                {
                    hblnk_del_1_clk,
                    hsync_del_1_clk,
                    vblnk_del_1_clk,
                    vsync_del_1_clk,
                    hcount_del_1_clk,
                    vcount_del_1_clk,
                    rgb_del_1_clk
                }
             )
    );
    
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
            o_hsync <= hsync_del_1_clk;
            o_vsync <= vsync_del_1_clk;
            o_hblnk <= hblnk_del_1_clk;
            o_vblnk <= vblnk_del_1_clk;
            o_hcount <= hcount_del_1_clk;
            o_vcount <= vcount_del_1_clk;
        end
        
    assign rom_addrx = (i_hcount - H_MIN) % ELEMENT_SIZE;
    assign rom_addry = (i_vcount - V_MIN) % ELEMENT_SIZE;
    assign o_rom_addr = {rom_addry, rom_addrx};

    always @*
        if (vblnk_del_1_clk || hblnk_del_1_clk)
            rgb_nxt = 12'h000;
        else   
            if (hcount_del_1_clk >= H_MIN && hcount_del_1_clk < H_MAX && vcount_del_1_clk >= V_MIN && vcount_del_1_clk < V_MAX)
                rgb_nxt = i_rom_rgb;
            else
                rgb_nxt = rgb_del_1_clk;
endmodule
