`timescale 1ns / 1ps

// (2**X_ADDR_WIDTH chars) x (2**Y_ADDR_WIDTH chars) ROM

module text_rom
    # ( parameter
        X_ADDR_WIDTH = 1,
        Y_ADDR_WIDTH = 1,
        PATH = "."
    )
    (
        input wire i_clk,
        input wire [X_ADDR_WIDTH+Y_ADDR_WIDTH-1:0] i_char_addr,       // {y[Y_ADDR_WIDTH], x[X_ADDR_WIDTH]}
        output reg [6:0] o_char_code
    );
    
    (* rom_style = "distributed" *) reg [7:0] rom [0:2**(X_ADDR_WIDTH+Y_ADDR_WIDTH)-1];
    
    initial $readmemh(PATH, rom); 
    
    always @(posedge i_clk)
        o_char_code = rom[i_char_addr];
    
endmodule
