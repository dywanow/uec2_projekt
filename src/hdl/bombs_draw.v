`timescale 1ns / 1ps

module bombs_draw
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
        input wire i_data,
        output reg [11:0] o_vcount,
        output reg o_vsync,
        output reg o_vblnk,
        output reg [11:0] o_hcount,
        output reg o_hsync,
        output reg o_hblnk,
        output reg [11:0] o_rgb,
        output wire [7:0] o_addr
    );
    
    wire hblnk_delayed, hsync_delayed, vblnk_delayed, vsync_delayed;
    wire [11:0] hcount_delayed, vcount_delayed;
    wire [11:0] rgb_delayed;
    wire [3:0] addrx, addry;
    reg [11:0] o_rgb_nxt;
    
    delay 
    #(
        .WIDTH(40),
        .CLK_DEL(1)
    ) 
    delay_map
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({i_hblnk, i_hsync, i_vblnk, i_vsync, i_hcount, i_vcount, i_rgb}),
        .dout({hblnk_delayed, hsync_delayed, vblnk_delayed, vsync_delayed, hcount_delayed, vcount_delayed, rgb_delayed})
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
    
    always @*
        if (vblnk_delayed || hblnk_delayed)
            o_rgb_nxt = 12'h000;
        else
            if (hcount_delayed >= 448 && hcount_delayed < 1472 && vcount_delayed >= 28 && vcount_delayed < 1052)
                if (i_data == 1'b1)
                    o_rgb_nxt = 12'h000;          // bomb
                else 
                    o_rgb_nxt = rgb_delayed;
            else
                o_rgb_nxt = 12'h555;

        
        assign addrx = (i_hcount - 448) >> 6;
        assign addry = (i_vcount - 28) >> 6;
        assign o_addr = {addry, addrx};
    
endmodule