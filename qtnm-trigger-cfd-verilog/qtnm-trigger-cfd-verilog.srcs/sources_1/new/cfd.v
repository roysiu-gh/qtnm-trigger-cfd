`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 22:58:17
// Design Name: 
// Module Name: cfd
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


module cfd #(
        parameter integer DELAY_SAMPLES = 100,
        parameter INV_FRAC=3,
        parameter SIZE=8 ) (
        input wire clk,
        input wire [SIZE-1:0] x,
        output reg [SIZE-1:0] y
    );
    // NB DELAY_SAMPLES = DELAY * SAMPLE_RATE
    // inv_frac is 1/frac, so can multiply rather than divide
    
    //set all to zeros how w/o initial block? not synthesisable
    reg [SIZE-1:0] buffer [DELAY_SAMPLES-1:0];
    reg [SIZE-1:0] working;
    integer i;
    
    always @ (posedge clk) begin
        // Buffer update and shift
//        for (i = 0; i < DELAY_SAMPLES - 1; i = i + 1) begin
        for (i = DELAY_SAMPLES - 2; 0 <= i; i = i - 1) begin
            //$display ("index: %0d, data: ?", i);
            buffer[i+1] <= buffer[i];
        end
        buffer[0] <= x;
        // CFD calculation
        working = buffer[DELAY_SAMPLES-1];  // Delay
        working = - working * INV_FRAC;  // Negate and augment (inverse of attenuating x)
        y = x + working;
    end
endmodule
