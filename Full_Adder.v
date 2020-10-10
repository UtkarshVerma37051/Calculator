`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:12 11/13/2019 
// Design Name: 
// Module Name:    Full_Adder 
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
module FA(output S,Cry,input A,B,C,Rst);
Half_Adder h1(w1,w2,A,B,Rst);
Half_Adder h2(S,w3,w1,C,Rst);
or(Cry,w2,w3);
endmodule
