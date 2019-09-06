`timescale 1ns / 1ps

module draw_winner_text
    # ( parameter
        X_ADDR_WIDTH = 1,
        Y_ADDR_WIDTH = 1,
        SCALE_COEFF = 0,
        X_CHAR_COUNT = 1,
        Y_CHAR_COUNT = 1,
        X_MIN = 0,
        X_MAX = 0,
        Y_MIN = 0,
        Y_MAX = 0,
        COLOR = 12'hfff
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
        input wire [1:0] i_axi_data,
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
    
    localparam BOMBER1 = 2'b01,
               BOMBER2 = 2'b10,
               DRAW = 2'b11;
    
    localparam DRAW_OFFSET = 0,
               BOMBER1_OFFSET = 32,
               BOMBER2_OFFSET = 64;
    
    reg [11:0] rgb_nxt;
    wire hblnk_d_2, hsync_d_2, vblnk_d_2, vsync_d_2;
    wire [11:0] hcount_d_2, vcount_d_2;
    wire [11:0] rgb_d_2;
    reg [11:0] hcount_rel, vcount_rel;
    wire [11:0] hcount_rel_d_2, vcount_rel_d_1;
    reg [2:0] rom_bit_addr, rom_bit_addr_nxt;
    reg [3:0] char_line_nxt;
    reg [X_ADDR_WIDTH+Y_ADDR_WIDTH-1:0] char_addr_nxt;

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
        .dout({vcount_rel_d_1})
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
        .dout({hsync_d_2, hblnk_d_2, vsync_d_2, vblnk_d_2, rgb_d_2, hcount_d_2, vcount_d_2, hcount_rel_d_2})
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
            o_char_line <= 0;
            rom_bit_addr <= 0;
            o_char_addr <= 0;
        end 
        else begin
            o_rgb <= rgb_nxt;
            o_hsync <= hsync_d_2;
            o_vsync <= vsync_d_2;
            o_hblnk <= hblnk_d_2;
            o_vblnk <= vblnk_d_2;
            o_hcount <= hcount_d_2;
            o_vcount <= vcount_d_2;
            o_char_line <= char_line_nxt;
            rom_bit_addr <= rom_bit_addr_nxt;
            o_char_addr <= char_addr_nxt;
        end


    always @* begin
        hcount_rel = i_hcount - XPOS;
        vcount_rel = i_vcount - YPOS;
        char_line_nxt = vcount_rel_d_1[3+SCALE_COEFF:SCALE_COEFF];
        rom_bit_addr_nxt = hcount_rel_d_2[2+SCALE_COEFF:SCALE_COEFF];
        
        case (i_axi_data)
            DRAW:    char_addr_nxt = DRAW_OFFSET;
            BOMBER1: char_addr_nxt = BOMBER1_OFFSET;
            BOMBER2: char_addr_nxt = BOMBER2_OFFSET;
            default: char_addr_nxt = DRAW_OFFSET;
        endcase
        
        char_addr_nxt = char_addr_nxt + {vcount_rel[Y_ADDR_WIDTH+3+SCALE_COEFF:4+SCALE_COEFF], hcount_rel[X_ADDR_WIDTH+2+SCALE_COEFF:3+SCALE_COEFF]};

        if (vblnk_d_2 || hblnk_d_2)
            rgb_nxt = 12'h000;
        else
            if (hcount_d_2 >= XPOS && hcount_d_2 < XPOS+W &&
                vcount_d_2 >= YPOS && vcount_d_2 < YPOS+H)
                if (i_rom_word[7-rom_bit_addr])
                    rgb_nxt = COLOR;
                else
                    rgb_nxt = rgb_d_2;
            else
                rgb_nxt = rgb_d_2;
    end

endmodule