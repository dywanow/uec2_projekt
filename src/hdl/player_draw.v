`timescale 1ns / 1ps

module player_draw
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
        input wire [19:0] i_data,
        input wire [11:0] i_rom_rgb,
        output reg [11:0] o_vcount,
        output reg o_vsync,
        output reg o_vblnk,
        output reg [11:0] o_hcount,
        output reg o_hsync,
        output reg o_hblnk,
        output reg [11:0] o_rgb,
        output wire o_index,
        output wire [11:0] o_rom_addr
    );
    
    wire hblnk_delayed, hsync_delayed, vblnk_delayed, vsync_delayed;
    wire [11:0] hcount_delayed, vcount_delayed, hcount_delayed2, vcount_delayed2;
    wire [11:0] rgb_delayed;
    reg [11:0] o_rgb_nxt;
    wire [5:0] addrx, addry;
    wire [19:0] data_delayed;
    wire [11:0] rom_rgb_delayed;
    
    delay 
    #(
        .WIDTH(52),
        .CLK_DEL(2)
    ) 
    delay_player
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({i_hblnk, i_hsync, i_vblnk, i_vsync, i_hcount, i_vcount, i_rgb, i_rom_rgb}),
        .dout({hblnk_delayed, hsync_delayed, vblnk_delayed, vsync_delayed, hcount_delayed, vcount_delayed, rgb_delayed, rom_rgb_delayed})
    );
    
    delay 
    #(
        .WIDTH(44),
        .CLK_DEL(1)
    ) 
    delay_player2
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({i_data, i_hcount, i_vcount}),
        .dout({data_delayed, hcount_delayed2, vcount_delayed2})
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
            o_rgb <= o_rgb_nxt;
            o_hsync <= hsync_delayed;
            o_vsync <= vsync_delayed;
            o_hblnk <= hblnk_delayed;
            o_vblnk <= vblnk_delayed;
            o_hcount <= hcount_delayed;
            o_vcount <= vcount_delayed;
        end
        
    always @* begin
        if (vblnk_delayed || hblnk_delayed)
            o_rgb_nxt = 12'h000;
        else begin
            if (vcount_delayed - 28 >= data_delayed[19:10]  &&
                vcount_delayed - 28 < data_delayed[19:10] + 64 && 
                hcount_delayed - 448 >= data_delayed[9:0] &&
                hcount_delayed - 448 < data_delayed[9:0] + 64)
                o_rgb_nxt = i_rom_rgb;
            else
                o_rgb_nxt = rgb_delayed;
        end
    end
    
    assign o_index = 0;
    assign addrx = hcount_delayed2 - 448 - i_data[9:0];
    assign addry = vcount_delayed2 - 28 - i_data[19:10];
    assign o_rom_addr = {addry, addrx};
    
endmodule
