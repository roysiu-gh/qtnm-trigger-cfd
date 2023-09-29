`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 10:44:19
// Design Name: 
// Module Name: zero_detector
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


module zero_detector #(
        parameter SIZE=8 ) (
        input wire [0:0] clk,
        input wire [SIZE-1:0] x,
        output wire y  // Default 1-bit
    );
    reg sign, last_sign;
    //assign y = sign ^ last_sign;  // XOR for change in sign
    assign y = sign && !last_sign;  // Rising sign change
    
    always @(posedge clk) begin
        // Two's complement: MSB is 0 for non-negatives (including 0), and 1 for negatives
        last_sign = sign;
        sign = x[SIZE-1];
    end
endmodule
