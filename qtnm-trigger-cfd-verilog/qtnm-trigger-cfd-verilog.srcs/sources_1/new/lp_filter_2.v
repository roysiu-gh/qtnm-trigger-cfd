`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 11:01:40
// Design Name: 
// Module Name: lp_filter_2
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

module lp_filter_2 #(
        parameter integer DECAY_FULL_POWER=10,  // So DECAY_FULL=1024
        parameter integer DECAY_PART=900, 
        parameter SIZE=8 ) (
        input wire [0:0] clk,
        input wire signed [SIZE-1:0] x,
        output reg signed [SIZE-1:0] y
    );
    reg signed [SIZE-1:0] last_y = 0;
    
//    integer DECAY_FULL = 2 ** DECAY_FULL_POWER;//
//    integer a = DECAY_FULL - DECAY_PART;
    integer a = ( 2 ** DECAY_FULL_POWER ) - DECAY_PART;
    integer b = DECAY_PART;
    
//    initial begin//
//        a = DECAY_FULL - DECAY_PART;
//        b = DECAY_PART;
//    end
    
    always @ (posedge clk) begin
        y = ( a * x ) + ( b * last_y );
        y = y >>> DECAY_FULL_POWER;  // Arithmetic shift to divide by DECAY_FULL
        last_y = y;
    end
endmodule
