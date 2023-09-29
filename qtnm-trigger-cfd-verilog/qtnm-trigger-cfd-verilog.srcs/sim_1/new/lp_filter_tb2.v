`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 10:39:39
// Design Name: 
// Module Name: lp_filter_tb2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lp_filter_tb2 #() ();
    parameter PERIOD = 2;
    parameter SIZE = 32;
    parameter TEST_FILE = "SX1_mul2p16.txt";
    reg clk;
    reg signed [SIZE-1:0] x;
    wire signed [SIZE-1:0] y;
    integer f;
    
    lp_filter_2 #( .SIZE(SIZE) ) CUT ( .clk(clk), .x(x), .y(y) );
    
    always begin
        clk = 1'b1; #(PERIOD/2);
        clk = 1'b0; #(PERIOD/2);
    end
    
    initial begin
        f = $fopen(TEST_FILE, "r");
        while (! $feof(f)) begin
            $fscanf(f, "%d\n", x);
            #PERIOD;
        end
        $display ("END");
        $finish();
    end
endmodule
