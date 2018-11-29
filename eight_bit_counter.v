`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 09:23:46 AM
// Design Name: 
// Module Name: eight_bit_counter
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


module eight_bit_counter(
    input clk,
    input inc,
    input dec,
    input rst,
    output [6:0] seg,
    output [3:0] an
    );
    
    wire inc_out;
    wire dec_out;
    wire [7:0] count;
    
    debounce u1(clk, inc, inc_out);
    debounce u2(clk, dec, dec_out);
    counter u3(inc_out, dec_out, clk, rst, count);
    
    bcddisplay4 u4(clk, count, an, seg);
    
endmodule
