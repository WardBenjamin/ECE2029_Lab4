`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2018 07:18:27 PM
// Design Name: 
// Module Name: four_add
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


module four_add(
    input [3:0] A,
    input [3:0] B,
    output [3:0] SUM,
    output OF_S,
    output C_MSB,
    output [6:0] SEGMENTS,
    output [3:0] AN
    );
    
    wire [3:0] C_OUT;
    one_bit_full_adder U0(A[0], B[0],        0, SUM[0], C_OUT[0]);
    one_bit_full_adder U1(A[1], B[1], C_OUT[0], SUM[1], C_OUT[1]);
    one_bit_full_adder U2(A[2], B[2], C_OUT[1], SUM[2], C_OUT[2]);
    one_bit_full_adder U3(A[3], B[3], C_OUT[2], SUM[3], C_OUT[3]);
    hex2seg(SUM[3], SUM[2], SUM[1], SUM[0], SEGMENTS[0], SEGMENTS[1],SEGMENTS[2],SEGMENTS[3],SEGMENTS[4],SEGMENTS[5],SEGMENTS[6], AN[0], AN[1], AN[2], AN[3]);
    
    assign OF_S = (A[3] & (~B[3]) & C_OUT[3]) | (A[3] & B[3] & (~C_OUT[3]));
    assign C_MSB = C_OUT[3];
endmodule