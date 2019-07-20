`timescale 1ns / 1ps

module map_draw
    (
		input wire i_pclk,
        input wire i_rst,
        input wire [11:0] i_vcount,
        input wire i_vsync,
        input wire i_vblnk,
        input wire [11:0] i_hcount,
        input wire i_hsync,
        input wire i_hblnk,
        input wire [3:0] i_data,
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
    wire [3:0] addrx, addry;
    reg [11:0] o_rgb_nxt;
    
    delay 
    #(
        .WIDTH(28),
        .CLK_DEL(1)
    ) 
    delay_map
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({i_hblnk, i_hsync, i_vblnk, i_vsync, i_hcount, i_vcount}),
        .dout({hblnk_delayed, hsync_delayed, vblnk_delayed, vsync_delayed, hcount_delayed, vcount_delayed})
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
            // Active display, top edge, make a yellow line.
            if (vcount_delayed == 0) o_rgb_nxt = 12'hff0;
            // Active display, bottom edge, make a red line.
            else if (vcount_delayed == 1079) o_rgb_nxt = 12'hf00;
            // Active display, left edge, make a green line.
            else if (hcount_delayed == 0) o_rgb_nxt = 12'h0f0;
            // Active display, right edge, make a blue line.
            else if (hcount_delayed == 1919) o_rgb_nxt = 12'h00f;
            else
                if (hcount_delayed >= 448 && hcount_delayed < 1472 && vcount_delayed >= 28 && vcount_delayed < 1052) begin
                    if (i_data == 4'b0000)
                        o_rgb_nxt = 12'h260;          // surrounding
                    else if (i_data == 4'b0001)
                        o_rgb_nxt = 12'hfec;          // path
                    else if (i_data == 4'b0010)
                        o_rgb_nxt = 12'h03c;          // obstacle1
                    else if (i_data == 4'b0011)
                        o_rgb_nxt = 12'h600;          // obstacle2
                    else if (i_data == 4'b0100)
                        o_rgb_nxt = 12'h333;          // bomb
                    else if (i_data == 4'b0101)
                        o_rgb_nxt = 12'hf73;          // explosion
                    else
                        o_rgb_nxt = 12'h000;
                end 
                else
                    o_rgb_nxt = 12'h555;

        
        assign addrx = (i_hcount - 448) >> 6;
        assign addry = (i_vcount - 28) >> 6;
        assign o_addr = {addry, addrx};
    
endmodule