`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2018 07:35:18 PM
// Design Name: 
// Module Name: bcddisplay4
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


module bcddisplay4(input clk, input[7:0] sw, output[3:0] an, output[6:0] seg);
    parameter zero = 4'b0000;
    wire clk_out;
    wire [3:0] mux_out;
    wire [1:0] counter_out;
    wire [3:0] ones, tens, hundreds;
    
    binary_to_BCD u1(sw, ones, tens, hundreds);
    mux4to1 u2(ones, tens, hundreds, zero, counter_out, mux_out);
    slowclock u3(clk, clk_out);
    mycounter u4(clk_out, counter_out);
    decoder2to4 u5(counter_out, an);
    hex2seg u6(mux_out,seg);
    
endmodule
