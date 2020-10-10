`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:35:58 02/14/2020 
// Design Name: 
// Module Name:    Calculator 
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
module Calculator(output [7:0] out,R,input [7:0] A,B,input [1:0] Sel,input Sign_A,Sign_B,Rst);
wire [3:0] dout;
wire [7:0] fadd,fsub,fmul1,Q;
Decoder_2_4 D(dout[3:0],Sel[1:0],Rst);
Final_Adder Fa(fadd[7:0],A[7:0],B[7:0],Sign_A,Sign_B,dout[0]);
Final_Subtractor Fs(fsub[7:0],A[7:0],B[7:0],Sign_A,Sign_B,dout[1]);
Final_Mul Fm(fmul1[7:0],A[7:0],B[7:0],Sign_A,Sign_B,dout[2]);
Final_div Dv(Q[7:0],R[7:0],A[7:0],B[7:0],Sign_A,Sign_B,dout[3]);
or(w0,fadd[0],fsub[0]);
or(w8,w0,fmul1[0]);
or(out[0],w8,Q[0]);


or(w1,fadd[1],fsub[1]);
or(w9,w1,fmul1[1]);
or(out[1],w9,Q[1]);

or(w2,fadd[2],fsub[2]);
or(w10,w2,fmul1[2]);
or(out[2],w10,Q[2]);

or(w3,fadd[3],fsub[3]);
or(w11,w3,fmul1[3]);
or(out[3],w11,Q[3]);



or(w4,fadd[4],fsub[4]);
or(w12,w4,fmul1[4]);
or(out[4],w12,Q[4]);


or(w5,fadd[5],fsub[5]);
or(w13,w5,fmul1[5]);
or(out[5],w13,Q[5]);


or(w6,fadd[6],fsub[6]);
or(w14,w6,fmul1[6]);
or(out[6],w14,Q[6]);


or(w7,fadd[7],fsub[7]);
or(w15,w7,fmul1[7]);
or(out[7],w15,Q[7]);

endmodule 