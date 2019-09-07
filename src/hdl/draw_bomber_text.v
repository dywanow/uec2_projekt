`timescale 1ns / 1ps

module draw_bomber_text
    # ( parameter
        ID = 0,
        X_ADDR_WIDTH = 1,
        Y_ADDR_WIDTH = 1,
        SCALE_COEFF = 1,
        X_CHAR_COUNT = 1,
        Y_CHAR_COUNT = 1,
        X_MAX = 1,
        X_MIN = 1,
        Y_MAX = 1,
        Y_MIN = 1
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
        input wire [7:0] i_rom_word,
        input wire [13:0] i_axi_data,
        output reg [11:0] o_vcount,
        output reg o_vsync,
        output reg o_vblnk,
        output reg [11:0] o_hcount,
        output reg o_hsync,
        output reg o_hblnk,
        output reg [11:0] o_rgb,
        output reg [X_ADDR_WIDTH+Y_ADDR_WIDTH-1:0] o_char_addr,
        output reg [3:0] o_char_line
    );
    
    localparam CHAR_W = 8 << SCALE_COEFF,
               CHAR_H = 16 << SCALE_COEFF,
               W = X_CHAR_COUNT * CHAR_W,
               H = Y_CHAR_COUNT * CHAR_H,
               XPOS = ((X_MAX - X_MIN - W) >> 1) + X_MIN,
               YPOS = ((Y_MAX - Y_MIN - H) >> 1) + Y_MIN;
    
    localparam ID_XPOS_REL = 8 * CHAR_W,
               ID_YPOS_REL = 0,
               POS_X_DIG0_XPOS_REL = 12 * CHAR_W,
               POS_X_DIG1_XPOS_REL = 11 * CHAR_W,
               POS_Y_DIG0_XPOS_REL = 16 * CHAR_W,
               POS_Y_DIG1_XPOS_REL = 15 * CHAR_W,
               POS_YPOS_REL = 2 * CHAR_H,
               LIVES_XPOS_REL = 7 * CHAR_W,
               LIVES_YPOS_REL = 3 * CHAR_H,
               BOMBS_XPOS_REL = 7 * CHAR_W,
               BOMBS_YPOS_REL = 4 * CHAR_H;
               
    localparam DIGITS_OFFSET = 192;
    
    reg [11:0] rgb_nxt;
    wire [11:0] rgb_del_2_clk;
    wire [11:0] hcount_rel, vcount_rel, vcount_rel_del_1_clk, hcount_rel_del_2_clk;
    reg [X_ADDR_WIDTH+Y_ADDR_WIDTH-1:0] char_addr_nxt;   
    wire hblnk_del_2_clk, hsync_del_2_clk, vblnk_del_2_clk, vsync_del_2_clk;
    wire [11:0] hcount_del_2_clk, vcount_del_2_clk;
    reg [2:0] rom_bit_addr,  rom_bit_addr_nxt;
    reg [3:0] char_line_nxt;
    
    wire pos_x_dig1, pos_y_dig1;
    wire [3:0] pos_x_dig0, pos_y_dig0;
    wire [1:0] lives, bombs;
    
    delay 
    #(
        .WIDTH(12),
        .CLK_DEL(1)
    ) 
    delay_1_clk
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({vcount_rel}),
        .dout({vcount_rel_del_1_clk})
    ); 
    
    delay 
    #(
        .WIDTH(52),
        .CLK_DEL(2)
    ) 
    delay_2_clk
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({i_hsync, i_hblnk, i_vsync, i_vblnk, i_rgb, i_hcount, i_vcount, hcount_rel}),
        .dout({hsync_del_2_clk, hblnk_del_2_clk, vsync_del_2_clk, vblnk_del_2_clk, rgb_del_2_clk, hcount_del_2_clk, vcount_del_2_clk, hcount_rel_del_2_clk})
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
            o_char_addr <= 0;
            o_char_line <= 0;
            rom_bit_addr <= 0;
        end 
        else begin
            o_rgb <= rgb_nxt;
            o_hsync <= hsync_del_2_clk;
            o_vsync <= vsync_del_2_clk;
            o_hblnk <= hblnk_del_2_clk;
            o_vblnk <= vblnk_del_2_clk;
            o_hcount <= hcount_del_2_clk;
            o_vcount <= vcount_del_2_clk;
            o_char_addr <= char_addr_nxt;
            o_char_line <= char_line_nxt;
            rom_bit_addr <= rom_bit_addr_nxt;
        end
    
    
    assign pos_x_dig1 = i_axi_data[0];
    assign pos_x_dig0 = i_axi_data[4:1];
    assign pos_y_dig1 = i_axi_data[5];
    assign pos_y_dig0 = i_axi_data[9:6];
    assign lives = i_axi_data[11:10];
    assign bombs = i_axi_data[13:12];
    assign hcount_rel = i_hcount - XPOS;
    assign vcount_rel = i_vcount - YPOS;
    
    always @* begin
        char_line_nxt = vcount_rel_del_1_clk[3+SCALE_COEFF:SCALE_COEFF];
        rom_bit_addr_nxt = hcount_rel_del_2_clk[2+SCALE_COEFF:SCALE_COEFF];
        if (i_hcount >= XPOS && i_hcount < XPOS+W && i_vcount >= YPOS && i_vcount < YPOS+H)
            // ID
            if (hcount_rel >= ID_XPOS_REL && hcount_rel < ID_XPOS_REL+CHAR_W &&
                vcount_rel >= ID_YPOS_REL && vcount_rel < ID_YPOS_REL+CHAR_H)
                char_addr_nxt = ID + DIGITS_OFFSET;
            // Position X digit 0
            else if (hcount_rel >= POS_X_DIG0_XPOS_REL && hcount_rel < POS_X_DIG0_XPOS_REL+CHAR_W &&
                     vcount_rel >= POS_YPOS_REL && vcount_rel < POS_YPOS_REL+CHAR_H)
                char_addr_nxt = pos_x_dig0 + DIGITS_OFFSET;
            // Position X digit 1
            else if (hcount_rel >= POS_X_DIG1_XPOS_REL && hcount_rel < POS_X_DIG1_XPOS_REL+CHAR_W &&
                     vcount_rel >= POS_YPOS_REL && vcount_rel < POS_YPOS_REL+CHAR_H)
                char_addr_nxt = pos_x_dig1 + DIGITS_OFFSET;
            // Position Y digit 0
            else if (hcount_rel >= POS_Y_DIG0_XPOS_REL && hcount_rel < POS_Y_DIG0_XPOS_REL+CHAR_W &&
                     vcount_rel >= POS_YPOS_REL && vcount_rel < POS_YPOS_REL+CHAR_H)
                 char_addr_nxt = pos_y_dig0 + DIGITS_OFFSET;
            // Position Y digit 1
            else if (hcount_rel >= POS_Y_DIG1_XPOS_REL && hcount_rel < POS_Y_DIG1_XPOS_REL+CHAR_W &&
                     vcount_rel >= POS_YPOS_REL && vcount_rel < POS_YPOS_REL+CHAR_H)
                char_addr_nxt = pos_y_dig1 + DIGITS_OFFSET;
            // Lives
            else if (hcount_rel >= LIVES_XPOS_REL && hcount_rel < LIVES_XPOS_REL+CHAR_W &&
                     vcount_rel >= LIVES_YPOS_REL && vcount_rel < LIVES_YPOS_REL+CHAR_H)
                char_addr_nxt = lives + DIGITS_OFFSET;
            // Bombs
            else if (hcount_rel >= BOMBS_XPOS_REL && hcount_rel < BOMBS_XPOS_REL+CHAR_W &&
                     vcount_rel >= BOMBS_YPOS_REL && vcount_rel < BOMBS_YPOS_REL+CHAR_H)
                char_addr_nxt = bombs + DIGITS_OFFSET; 
            else
                char_addr_nxt = {vcount_rel[Y_ADDR_WIDTH+3+SCALE_COEFF:4+SCALE_COEFF], hcount_rel[X_ADDR_WIDTH+2+SCALE_COEFF:3+SCALE_COEFF]};
        else
            char_addr_nxt = 0;
           
        if (vblnk_del_2_clk || hblnk_del_2_clk)
            rgb_nxt = 12'h000;
        else
            if (hcount_del_2_clk >= XPOS && hcount_del_2_clk < XPOS+W && vcount_del_2_clk >= YPOS && vcount_del_2_clk < YPOS+H)
                if (i_rom_word[7-rom_bit_addr] == 1)
                    rgb_nxt = 12'hfff;
                else
                    rgb_nxt = 12'h66e;
            else
                rgb_nxt = rgb_del_2_clk;
    end
    
endmodule