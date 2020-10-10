`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:06 11/13/2019 
// Design Name: 
// Module Name:    Adder_8_Bit 
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
module Adder_8_Bit(output [7:0] S,output Cry,input [7:0] A,B,input Rst);
Adr4Bit A1(S[3:0],C0,A[3:0],B[3:0],Rst);
FA f0(S[4],C1,A[4],B[4],C0,Rst);
FA f1(S[5],C2,A[5],B[5],C1,Rst);
FA f2(S[6],C3,A[6],B[6],C2,Rst);
FA f3(S[7],Cry,A[7],B[7],C3,Rst);
endmodule 