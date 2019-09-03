`timescale 1ns / 1ps

module scene_mux 
    (
        input wire i_pclk,
        input wire i_rst,
        input wire [1:0] i_sel,
        input wire [11:0] i_menu_rgb,
        input wire i_menu_vs,
        input wire i_menu_hs,
        input wire [11:0] i_battle_rgb,
        input wire i_battle_vs,
        input wire i_battle_hs,
        input wire [11:0] i_endgame_rgb,
        input wire i_endgame_vs,
        input wire i_endgame_hs,
        input wire [11:0] i_howtoplay_rgb,
        input wire i_howtoplay_vs,
        input wire i_howtoplay_hs,
        output reg [11:0] o_scene_rgb,
        output reg o_scene_vs,
        output reg o_scene_hs
    );
    
    localparam MENU_ID    = 2'b00,
               BATTLE_ID  = 2'b01,
               ENDGAME_ID = 2'b10,
               HOWTOPLAY_ID = 2'b11;
               
    reg [11:0] scene_rgb_nxt;
    reg scene_vs_nxt;
    reg scene_hs_nxt;
    
    always @(posedge i_pclk)
        if (i_rst) begin
            o_scene_rgb <= 0;
            o_scene_vs <= 0;
            o_scene_hs <= 0;
        end
        else begin
            o_scene_rgb <= scene_rgb_nxt;
            o_scene_vs <= scene_vs_nxt;
            o_scene_hs <= scene_hs_nxt;
        end
        
                
    always @*
        case (i_sel)
            MENU_ID:   
            begin
                scene_rgb_nxt = i_menu_rgb;
                scene_vs_nxt = i_menu_vs;
                scene_hs_nxt = i_menu_hs;
            end
            BATTLE_ID:
            begin
                scene_rgb_nxt = i_battle_rgb;
                scene_vs_nxt = i_battle_vs;
                scene_hs_nxt = i_battle_hs;
            end
            ENDGAME_ID:
            begin
                scene_rgb_nxt = i_endgame_rgb;
                scene_vs_nxt = i_endgame_vs;
                scene_hs_nxt = i_endgame_hs;
            end
            HOWTOPLAY_ID:
            begin
                scene_rgb_nxt = i_howtoplay_rgb;
                scene_vs_nxt = i_howtoplay_vs;
                scene_hs_nxt = i_howtoplay_hs;
            end
            default:
            begin
                scene_rgb_nxt = 0;
                scene_vs_nxt = 0;
                scene_hs_nxt = 0;
            end
        endcase
endmodule
