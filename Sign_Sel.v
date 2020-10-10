`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:47 02/10/2020 
// Design Name: 
// Module Name:    Sign_Sel 
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
module Sign_Sel(output [7:0] out,input [7:0] inp,input Sign,Rst);
wire [7:0] w1;
and(sign,Sign,Rst);
Twos_Cmplmnt tc1(w1[7:0],inp[7:0],Rst);
Mux_2_1 m0(inp[0],w1[0],sign,Rst,out[0]);
Mux_2_1 m1(inp[1],w1[1],sign,Rst,out[1]);
Mux_2_1 m2(inp[2],w1[2],sign,Rst,out[2]);
Mux_2_1 m3(inp[3],w1[3],sign,Rst,out[3]);
Mux_2_1 m4(inp[4],w1[4],sign,Rst,out[4]);
Mux_2_1 m5(inp[5],w1[5],sign,Rst,out[5]);
Mux_2_1 m6(inp[6],w1[6],sign,Rst,out[6]);
Mux_2_1 m7(inp[7],w1[7],sign,Rst,out[7]);
endmodule
