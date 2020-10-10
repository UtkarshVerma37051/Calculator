`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:38:18 02/14/2020 
// Design Name: 
// Module Name:    Sub_8_bit 
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
module Sub_8_bit(output [7:0] diff,input [7:0] A,B,input Rst);
wire [7:0] w1;
Twos_Cmplmnt tc1(w1[7:0],B[7:0],Rst);
Adder_8_Bit A1(diff[7:0],cry,w1[7:0],A[7:0],Rst);
endmodule
