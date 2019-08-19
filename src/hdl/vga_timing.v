`timescale 1 ns / 1 ps

module vga_timing
    (
        input wire i_pclk,
        input wire i_rst,
        output wire [11:0] o_vcount,
        output wire o_vsync,
        output wire o_vblnk,
        output wire [11:0] o_hcount,
        output wire o_hsync,
        output wire o_hblnk
    );
    

    // 1920x1080 @ 60 Hz
    localparam HOR_BLANK_START = 1920;
    localparam HOR_BLANK_TIME = 280;
    localparam HOR_SYNC_START = 2008;
    localparam HOR_SYNC_TIME = 44;
    localparam VER_BLANK_START = 1080;
    localparam VER_BLANK_TIME = 45;
    localparam VER_SYNC_START = 1084;
    localparam VER_SYNC_TIME = 5;
    localparam HOR_TOTAL_TIME = 2200;
    localparam VER_TOTAL_TIME = 1125;
    
    localparam HOR_BLANK_STOP = HOR_BLANK_START + HOR_BLANK_TIME - 1;
    localparam HOR_SYNC_STOP = HOR_SYNC_START + HOR_SYNC_TIME - 1;
    localparam VER_BLANK_STOP = VER_BLANK_START + VER_BLANK_TIME - 1;
    localparam VER_SYNC_STOP = VER_SYNC_START + VER_SYNC_TIME - 1;
    
    reg [11:0] vc = 0;
    reg [11:0] hc = 0;
    
    // Count pixels on a given line (hc) and lines on a given frame (vc)
    always @(posedge i_pclk)
        if (i_rst) begin
            vc <= 0;
            hc <= 0;
        end
        else
            if (o_hcount == HOR_TOTAL_TIME-1)
            begin
                hc <= 0;
                if (o_vcount == VER_TOTAL_TIME-1)
                    vc <= 0;
                else
                    vc <= vc + 1;
            end
            else
                hc <= hc + 1;

    assign o_vcount = vc;
    assign o_hcount = hc;
    assign o_vsync = (vc >= VER_SYNC_START && vc <= VER_SYNC_STOP);
    assign o_hsync = (hc >= HOR_SYNC_START && hc <= HOR_SYNC_STOP);
    assign o_vblnk = (vc >= VER_BLANK_START && vc <= VER_BLANK_STOP);
    assign o_hblnk = (hc >= HOR_BLANK_START && hc <= HOR_BLANK_STOP);

endmodule
