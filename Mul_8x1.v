`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:01:21 02/14/2020 
// Design Name: 
// Module Name:    Mul_8x1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mul_8x1(output [7:0] prdct,input [7:0] A,input B,Rst);
wire [7:0] wa;
and(wa[0],A[0],Rst);
and(wa[1],A[1],Rst);
and(wa[2],A[2],Rst);
and(wa[3],A[3],Rst);
and(wa[4],A[4],Rst);
and(wa[5],A[5],Rst);
and(wa[6],A[6],Rst);
and(wa[7],A[7],Rst);
and(prdct[0],wa[0],B);
and(prdct[1],wa[1],B);
and(prdct[2],wa[2],B);
and(prdct[3],wa[3],B);
and(prdct[4],wa[4],B);
and(prdct[5],wa[5],B);
and(prdct[6],wa[6],B);
and(prdct[7],wa[7],B);
endmodule
