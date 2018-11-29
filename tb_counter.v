`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 09:31:11 AM
// Design Name: 
// Module Name: tb_counter
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


module tb_counter();
    reg inc;
    reg dec;
    reg clk;
    reg reset;
    reg i;
    wire [7:0] out;
    
    counter UT(inc, dec, clk, reset, out);
    
    initial begin
        inc = 1;
        dec = 0;
        clk = 0;
        reset = 0;
        i = 0;
        #1;
        clk = clk+1;
        #1;
        clk = clk+1;
        #1;
        clk = clk+1;
        #1;
        inc = 0;
        dec = 1;
        #1;
        clk = clk+1;
        #1;
        clk = clk+1;
        #1;
        clk = clk+1;
        #1;
        dec = 0;
        reset = 1;
        #1;
        clk = clk+1;
                                
    end

endmodule
