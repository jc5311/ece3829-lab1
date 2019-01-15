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
    
    always @(A, B, C, D, SEL)
        //no buttons pressed, display A on seg-disp 1
        if (SEL == 0)
        begin
            //turn on first seg-disp
            an = 4'b1110;            
            //check value of A
            if (A == 2'b00)
                seg = 7'b1000000;
            else if (A == 1)
                seg = 7'b1111001;
            else if (A == 2)
                seg = 7'b0100100;
            else if (A == 3)
                seg = 7'b0110000;
            else if (A ==4 )
                seg = 7'b0011001;
            else if (A == 5)
                seg = 7'b0010010;
            else if (A == 6)
                seg = 7'b0000010;
            else if (A == 7)
                seg = 7'b1111000;
            else if (A == 8)
                seg = 7'b0000000;
            else if (A == 9)
                seg = 7'b0010000;
            else if (A == 10)
                seg = 7'b0001000;
            else if (A == 11)
                seg = 7'b0000011;
            else if (A == 12)
                seg = 7'b1000110;
            else if (A == 13)
                seg = 7'b0100001;
            else if (A == 14)
                seg = 7'b0000110;
            else
                seg = 7'b0001110;
        end
        
        else if (SEL == 2'b01)
        begin
            //turn on first seg-disp
            an = 4'b1101;
            
            //check value of B
            if (B == 0)
                seg = 7'b1000000;
            else if (B == 1)
                seg = 7'b1111001;
            else if (B == 2)
                seg = 7'b0100100;
            else if (B == 3)
                seg = 7'b0110000;
            else if (B ==4 )
                seg = 7'b0011001;
            else if (B == 5)
                seg = 7'b0010010;
            else if (B == 6)
                seg = 7'b0000010;
            else if (B == 7)
                seg = 7'b1111000;
            else if (B == 8)
                seg = 7'b0000000;
            else if (B == 9)
                seg = 7'b0010000;
            else if (B == 10)
                seg = 7'b0001000;
            else if (B == 11)
                seg = 7'b0000011;
            else if (B == 12)
                seg = 7'b1000110;
            else if (B == 13)
                seg = 7'b0100001;
            else if (B == 14)
                seg = 7'b0000110;
            else
                seg = 7'b0001110;
        end
        
        else if (SEL == 2'b10)
        begin
            //turn on first seg-disp
            an = 4'b1011;
            
            //check value of C
            if (C == 0)
                seg = 7'b1000000;
            else if (C == 1)
                seg = 7'b1111001;
            else if (C == 2)
                seg = 7'b0100100;
            else if (C == 3)
                seg = 7'b0110000;
            else if (C ==4 )
                seg = 7'b0011001;
            else if (C == 5)
                seg = 7'b0010010;
            else if (C == 6)
                seg = 7'b0000010;
            else if (C == 7)
                seg = 7'b1111000;
            else if (C == 8)
                seg = 7'b0000000;
            else if (C == 9)
                seg = 7'b0010000;
            else if (C == 10)
                seg = 7'b0001000;
            else if (C == 11)
                seg = 7'b0000011;
            else if (C == 12)
                seg = 7'b1000110;
            else if (C == 13)
                seg = 7'b0100001;
            else if (C == 14)
                seg = 7'b0000110;
            else
                seg = 7'b0001110;
        end
        else
        begin
            //turn on first seg-disp
            an = 4'b0111;
            
            //check value of D
            if (D == 0)
                seg = 7'b1000000;
            else if (D == 1)
                seg = 7'b1111001;
            else if (D == 2)
                seg = 7'b0100100;
            else if (D == 3)
                seg = 7'b0110000;
            else if (D ==4 )
                seg = 7'b0011001;
            else if (D == 5)
                seg = 7'b0010010;
            else if (D == 6)
                seg = 7'b0000010;
            else if (D == 7)
                seg = 7'b1111000;
            else if (D == 8)
                seg = 7'b0000000;
            else if (D == 9)
                seg = 7'b0010000;
            else if (D == 10)
                seg = 7'b0001000;
            else if (D == 11)
                seg = 7'b0000011;
            else if (D == 12)
                seg = 7'b1000110;
            else if (D == 13)
                seg = 7'b0100001;
            else if (D == 14)
                seg = 7'b0000110;
            else
                seg = 7'b0001110;
        end
            
    
    
endmodule
