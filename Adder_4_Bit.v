`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:51:59 11/13/2019 
// Design Name: 
// Module Name:    Adder_4_Bit 
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
module Adr4Bit(output [3:0] S,output Cry,input [3:0] A,B,input Rst);
Half_Adder H1(S[0],C0,A[0],B[0],Rst);
FA f1(S[1],C1,A[1],B[1],C0,Rst);
FA f2(S[2],C2,A[2],B[2],C1,Rst);
FA f3(S[3],Cry,A[3],B[3],C2,Rst);
endmodule 
