`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2018 07:17:55 PM
// Design Name: 
// Module Name: one_bit_full_adder
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


module one_bit_full_adder(
    input A,
    input B,
    input C_IN,
    output SUM,
    output C_OUT
    );
assign SUM = (A & (~B) & (~C_IN)) | ((~A) & (~B) & C_IN) | (A & B & C_IN) | ((~A) & B & (~C_IN));
assign C_OUT = (B & C_IN) | (A & C_IN) | (A & B);
endmodule
