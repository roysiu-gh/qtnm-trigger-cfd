`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 22:58:54
// Design Name: 
// Module Name: cfd_tb
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


module cfd_tb #() ();
    parameter PERIOD = 2;
    parameter SIZE = 32;
    parameter LENGTH = 1000;
    parameter TEST_FILE = "cfd_input.txt";
    reg clk;
    reg [SIZE-1:0] x;
    wire [SIZE-1:0] y;
    
    integer i;
    reg [SIZE-1:0] test_data [LENGTH:0];
    
    cfd #( .SIZE(SIZE) ) CUT ( .clk(clk), .x(x), .y(y) );
    
    always begin
        clk = 1'b1; #(PERIOD/2);
        clk = 1'b0; #(PERIOD/2);
    end
    
    initial begin
        $readmemb(TEST_FILE, test_data);
        for (i = 0; i < LENGTH; i = i + 1) begin
            $display ("index: %0d, data: %0d", i, test_data[i]);
            x = test_data[i];
            #PERIOD;
        end
        $display ("END");
        $finish();
    end
endmodule
