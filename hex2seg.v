`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2018 07:18:55 PM
// Design Name: 
// Module Name: hex2seg
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


module hex2seg(input[3:0] Y, 
output reg[6:0] disp);
always@(Y)
begin
case(Y)
0: disp=7'b0000001;
1: disp=7'b1001111;
2: disp=7'b0010010;
3: disp=7'b0000110;
4: 
disp=7'b1001100;
5: disp=7'b0100100;
6: disp=7'b0100000;
7: disp=7'b0001111;
8: disp=7'b0000000;
9: disp=7'b0000100;
10: disp=7'b0001000;
11: disp=7'b1100000;
12: disp=7'b0110001;
13: disp
=7'b1000010;
14: disp=7'b0110000;
15: disp=7'b0111000;
endcase
end
endmodule