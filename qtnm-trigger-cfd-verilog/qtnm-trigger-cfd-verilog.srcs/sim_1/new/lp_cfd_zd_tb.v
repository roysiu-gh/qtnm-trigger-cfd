`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 19:26:41
// Design Name: 
// Module Name: lp_cfd_zd_tb
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


module lp_cfd_zd_tb #() ();
    parameter PERIOD = 2;
    parameter SIZE = 32;
    parameter DELAY_SAMPLES = 200;
    parameter TEST_FILE = "SN2_mul2p16.txt";
    reg clk;
    reg signed [SIZE-1:0] in;
    wire signed [SIZE-1:0] lp_out, cfd_out;
    wire zd_out;
    integer f;
    
    lp_filter_2 #( .SIZE(SIZE) ) LP_CUT ( .clk(clk), .x(in), .y(lp_out) );
    cfd #( .SIZE(SIZE), .DELAY_SAMPLES(DELAY_SAMPLES) ) CFD_CUT ( .clk(clk), .x(lp_out), .y(cfd_out) );
    zero_detector #( .SIZE(SIZE) ) ZD_CUT ( .clk(clk), .x(cfd_out), .y(zd_out) );
    
    always begin
        clk = 1'b1; #(PERIOD/2);
        clk = 1'b0; #(PERIOD/2);
    end
    
    initial begin
        f = $fopen(TEST_FILE, "r");
        while (! $feof(f)) begin
            $fscanf(f, "%d\n", in);
            #PERIOD;
        end
        $display ("END");
        $finish();
    end
endmodule

