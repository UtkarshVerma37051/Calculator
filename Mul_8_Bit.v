`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:36:04 02/14/2020 
// Design Name: 
// Module Name:    Mul_8_Bit 
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
module Mul_8_Bit(output [15:0] out,input [7:0] A,B,input Rst);
wire [7:0] wm0,wm1,wm2,wm3,wm4,wm5,wm6,wm7;
wire [7:0] wa0,wa1,wa2,wa3,wa4,wa5;
wire [7:0] w0,w1,w2,w3,w4,w5,w6;
Mul_8x1 M0(wm0[7:0],A[7:0],B[0],Rst);										//1 multiplier                                      
Mul_8x1 M1(wm1[7:0],A[7:0],B[1],Rst);										//2 multiplier
assign out[0]=wm0[0]; 															
assign w0[6:0]=wm0[7:1];														//wires of 1 multiplier
assign w0[7]=0;
Adder_8_Bit A0(wa0[7:0],Cry0,w0[7:0],wm1[7:0],Rst);					//1 Adder
Mul_8x1 M2(wm2[7:0],A[7:0],B[2],Rst);									   //3 multiplier
assign out[1]=wa0[0];
assign w1[6:0]=wa0[7:1];														//wires of 1 adder
assign w1[7]=Cry0;
Adder_8_Bit A1(wa1[7:0],Cry1,w1[7:0],wm2[7:0],Rst);					//2 Adder
Mul_8x1 M3(wm3[7:0],A[7:0],B[3],Rst);									   //4 multiplier
assign out[2]=wa1[0];
assign w2[6:0]=wa1[7:1];														//wires of 2 adder
assign w2[7]=Cry1;
Adder_8_Bit A2(wa2[7:0],Cry2,w2[7:0],wm3[7:0],Rst);					//3 Adder
Mul_8x1 M4(wm4[7:0],A[7:0],B[4],Rst);									   //5 multiplier
assign out[3]=wa2[0];
assign w3[6:0]=wa2[7:1];														//wires of 3 adder
assign w3[7]=Cry2;
Adder_8_Bit A3(wa3[7:0],Cry3,w3[7:0],wm4[7:0],Rst);					//4 Adder
Mul_8x1 M5(wm5[7:0],A[7:0],B[5],Rst);									   //6 multiplier
assign out[4]=wa3[0];
assign w4[6:0]=wa3[7:1];														//wires of 4 adder
assign w4[7]=Cry3;
Adder_8_Bit A4(wa4[7:0],Cry4,w4[7:0],wm5[7:0],Rst);					//5 Adder
Mul_8x1 M6(wm6[7:0],A[7:0],B[6],Rst);									   //7 multiplier
assign out[5]=wa4[0];
assign w5[6:0]=wa4[7:1];														//wires of 5 adder
assign w5[7]=Cry4;
Adder_8_Bit A5(wa5[7:0],Cry5,w5[7:0],wm6[7:0],Rst);					//6 Adder
Mul_8x1 M7(wm7[7:0],A[7:0],B[7],Rst);									   //8 multiplier
assign out[6]=wa5[0];
assign w6[6:0]=wa5[7:1];														//wires of 6 adder
assign w6[7]=Cry5;
Adder_8_Bit A6(out[14:7],out[15],w6[7:0],wm7[7:0],Rst);					//7 Adder
endmodule 