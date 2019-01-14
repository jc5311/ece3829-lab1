`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Juan Caraballo
// 
// Create Date: 01/12/2019 09:10:04 PM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(
    //switches
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    //push buttons
    input [1:0] SEL,
    //cathodes and anodes of display
    output reg [6:0] seg,
    output reg [3:0] an
    );
    
    always @(A, SEL)
        //no buttons pressed, display A on seg-disp 1
        if (SEL == 0)
        begin
            //turn on first seg-disp
            an = 1'b1;
            
            //check value of A
            if (A == 0)
                seg = 7'b0111111;
            else if (A == 1)
                seg = 7'b0000110;
            else if (A == 2)
                seg = 7'b1011011;
            else if (A == 3)
                seg = 7'b1001111;
            else if (A ==4 )
                seg = 7'b1100110;
            else if (A == 5)
                seg = 7'b1101101;
            else if (A == 6)
                seg = 7'b1111101;
            else if (A == 7)
                seg = 7'b0000111;
            else if (A == 8)
                seg = 7'b1111111;
            else if (A == 9)
                seg = 7'b1101111;
            else if (A == 10)
                seg = 7'b1110111;
            else if (A == 11)
                seg = 7'b1111100;
            else if (A == 12)
                seg = 7'b0111001;
            else if (A == 13)
                seg = 7'b1011110;
            else if (A == 14)
                seg = 7'b1111001;
            else if (A == 15)
                seg = 7'b1110001;
        end
            
    
    
endmodule
