`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:18:54 02/14/2020 
// Design Name: 
// Module Name:    Decoder_2_4 
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
module Decoder_2_4(output [3:0] out,input [1:0] s,input En);
not(s0b,s[0]);
not(s1b,s[1]);
and(w1,s0b,s1b);
and(out[0],w1,En);
and(w2,s[0],s1b);
and(out[1],w2,En);
and(w3,s0b,s[1]);
and(out[2],w3,En);
and(w4,s[0],s[1]);
and(out[3],w4,En);
endmodule
