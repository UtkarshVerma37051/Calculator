`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:54 02/14/2020 
// Design Name: 
// Module Name:    Final_Subtractor 
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
module Final_Subtractor(output  [7:0] diff,input [7:0] A,B,input Sign_A,Sign_B, Rst);
wire [7:0] wa;
wire [7:0] wb;
Sign_Sel sa(wa[7:0],A[7:0],Sign_A,Rst);
Sign_Sel sb(wb[7:0],B[7:0],Sign_B,Rst);
Sub_8_bit Sub(diff[7:0],wa[7:0],wb[7:0],Rst);
endmodule 