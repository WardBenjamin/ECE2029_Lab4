`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 09:14:54 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input inc,
    input dec,
    input clk,
    input reset,
    output [7:0] count
    );
    reg[7:0] current_count = 0;
    always @(posedge clk) begin
        if(reset)
            current_count <= 0;
        else if(inc)
            current_count <= count+1;
        else if(dec) 
            current_count <= count-1;
        else
            current_count <= count;
    end
    assign count = current_count;
endmodule
