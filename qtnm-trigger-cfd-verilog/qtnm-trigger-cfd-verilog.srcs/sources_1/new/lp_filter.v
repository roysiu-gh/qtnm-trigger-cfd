`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2023 17:34:17
// Design Name: 
// Module Name: lp_filter
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


module lp_filter #(parameter real DECAY=0.9, parameter SIZE=8) (
        input clk, x,
        output y
    );
    wire clk;
    wire [SIZE-1:0] x;
    reg [SIZE-1:0] y, last_y;
    
    initial begin
        last_y = 0; //need binary repr?
        y = (1 - DECAY) * x;
    end
    
    always @ (posedge clk) begin
        y = ( (1-DECAY) * x ) + ( DECAY * last_y );
        last_y = y;
    end
endmodule
