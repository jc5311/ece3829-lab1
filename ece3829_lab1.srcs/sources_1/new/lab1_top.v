`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Juan Caraballo
// 
// Create Date: 01/15/2019 02:04:34 PM
// Design Name: 
// Module Name: lab1_top
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


module lab1_top(
    //switches
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    //push buttons
    input [3:0] SEL,
    
    //cathodes (seg) and anodes of display
    output [6:0] seg,
    output [3:0] an,
    
    //leds
    output reg [15:0] led
    );
    
    always @(A, B, SEL[3:2])
    //no buttons pressed display A^B
    if (SEL[3:2] == 2'b00)
        led = A^B;
        
    else if ((SEL[3:2]) == 2'b01)
        led = A+B;
        
    else if ((SEL[3:2]) == 2'b10)
        led = 8'b01000001;

    else if ((SEL[3:2]) == 2'b11)
        led = 16'b0011100000101001;
    
seven_seg seven_seg_disp(
    .A(A[3:0]),
    .B(B[3:0]),
    .C(C[3:0]),
    .D(D[3:0]),
    .SEL(SEL[1:0]),
    .seg(seg),
    .an(an)
    );
    
endmodule
