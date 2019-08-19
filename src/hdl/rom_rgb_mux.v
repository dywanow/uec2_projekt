`timescale 1ns / 1ps

module rom_rgb_mux
    (
        input wire i_pclk,
        input wire i_rst,
        input wire [3:0] i_sel,
        input wire [11:0] i_path_rom_rgb,
        input wire [11:0] i_surr_rom_rgb,
        input wire [11:0] i_obs1_rom_rgb,
        input wire [11:0] i_obs2_rom_rgb,
        input wire [11:0] i_bomb_rom_rgb,
        input wire [11:0] i_expl_rom_rgb,
        input wire [11:0] i_plr1_rom_rgb,
        input wire [11:0] i_plr2_rom_rgb,
        output reg [11:0] o_rom_rgb
    );
    
    localparam T_PATH = 4'b0000,
               T_SURR = 4'b0001,
               T_OBS1 = 4'b0010,
               T_OBS2 = 4'b0011,
               T_BOMB = 4'b0100,
               T_EXPL = 4'b0101,
               T_PLR1 = 4'b0110,
               T_PLR2 = 4'b0111;
               
    reg [11:0] rom_rgb_nxt;
    
    always @(posedge i_pclk)
        if (i_rst)
            o_rom_rgb <= 0;
        else
            o_rom_rgb <= rom_rgb_nxt;
    
    always @*
        case (i_sel)
            T_PATH: rom_rgb_nxt <= i_path_rom_rgb;
            T_SURR: rom_rgb_nxt <= i_surr_rom_rgb;
            T_OBS1: rom_rgb_nxt <= i_obs1_rom_rgb;        
            T_OBS2: rom_rgb_nxt <= i_obs2_rom_rgb;        
            T_BOMB: rom_rgb_nxt <= i_bomb_rom_rgb;
            T_EXPL: rom_rgb_nxt <= i_expl_rom_rgb;
            T_PLR1: rom_rgb_nxt <= i_plr1_rom_rgb;
            T_PLR2: rom_rgb_nxt <= i_plr2_rom_rgb;
            default: rom_rgb_nxt <= 0;
        endcase
endmodule
