`timescale 1ns / 1ps

module menu_text_draw
    # ( parameter
        X_ADDR_WIDTH = 1,
        Y_ADDR_WIDTH = 1
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
        input wire i_axi_data,
        output reg [11:0] o_vcount,
        output reg o_vsync,
        output reg o_vblnk,
        output reg [11:0] o_hcount,
        output reg o_hsync,
        output reg o_hblnk,
        output reg [11:0] o_rgb,
        output wire [X_ADDR_WIDTH+Y_ADDR_WIDTH-1:0] o_char_addr,
        output wire [3:0] o_char_line
    );

    localparam XPOS = 672,
               YPOS = 320,
               WIDTH = 576,
               HEIGHT = 192,
               AXI_XPOS = 192+XPOS,
               AXI_YPOS = 156+YPOS,
               AXI_WIDTH = 176,
               AXI_HEIGHT = 32;
    
    
    reg [11:0] rgb_nxt;
    wire [11:0] hcount_relative, vcount_relative;
    wire hblnk_del_2_clk, hsync_del_2_clk, vblnk_del_2_clk, vsync_del_2_clk;
    wire [11:0] hcount_del_1_clk, vcount_del_1_clk, hcount_del_2_clk, vcount_del_2_clk;
    wire [11:0] rgb_del_2_clk;
    wire [2:0] rom_bit_addr, rom_bit_addr_tmp;
    wire [3:0] char_line_tmp;
    wire axi_data_del_2_clk;
    
    delay 
    #(
        .WIDTH(4),
        .CLK_DEL(1)
    ) 
    delay_1_clk
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({char_line_tmp}),
        .dout({o_char_line})
    ); 
    
    delay 
    #(
        .WIDTH(44),
        .CLK_DEL(2)
    ) 
    delay_2_clk
    (
        .clk(i_pclk),
        .rst(i_rst),
        .din({i_hsync, i_hblnk, i_vsync, i_vblnk, i_rgb, i_hcount, i_vcount, rom_bit_addr_tmp, i_axi_data}),
        .dout({hsync_del_2_clk, hblnk_del_2_clk, vsync_del_2_clk, vblnk_del_2_clk, rgb_del_2_clk, hcount_del_2_clk, vcount_del_2_clk, rom_bit_addr, axi_data_del_2_clk})
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
            o_hsync <= hsync_del_2_clk;
            o_vsync <= vsync_del_2_clk;
            o_hblnk <= hblnk_del_2_clk;
            o_vblnk <= vblnk_del_2_clk;
            o_hcount <= hcount_del_2_clk;
            o_vcount <= vcount_del_2_clk;
        end
    
    assign hcount_relative = i_hcount - XPOS;
    assign vcount_relative = i_vcount - YPOS;
    assign o_char_addr = {vcount_relative[Y_ADDR_WIDTH+3:4], hcount_relative[X_ADDR_WIDTH+2:3]};
    assign char_line_tmp = vcount_relative[3:0];
    assign rom_bit_addr_tmp = hcount_relative[2:0];
    
    always @*
        if (vblnk_del_2_clk || hblnk_del_2_clk)
            rgb_nxt = 12'h000;
        else
            if (hcount_del_2_clk >= XPOS && hcount_del_2_clk < XPOS+WIDTH &&
                vcount_del_2_clk >= YPOS && vcount_del_2_clk < YPOS+HEIGHT)
                if (!(hcount_del_2_clk >= AXI_XPOS && hcount_del_2_clk < AXI_XPOS+AXI_WIDTH &&
                    vcount_del_2_clk >= AXI_YPOS && vcount_del_2_clk < AXI_YPOS+AXI_HEIGHT))
                    rgb_nxt = (i_rom_word[7-rom_bit_addr] == 1) ? 12'hfff : rgb_del_2_clk;
                else
                    rgb_nxt = (i_rom_word[7-rom_bit_addr] == 1 && axi_data_del_2_clk == 0) ? 12'hfff : rgb_del_2_clk;
            else
                rgb_nxt = rgb_del_2_clk;

endmodule