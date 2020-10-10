`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:53 02/10/2020 
// Design Name: 
// Module Name:    Final_Adder 
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
module Final_Adder(output [7:0] out,input [7:0] a,b,input Sign_A,Sign_B,Rst);
wire [7:0] wa;
wire [7:0] wb;
Sign_Sel sa(wa[7:0],a[7:0],Sign_A,Rst);
Sign_Sel sb(wb[7:0],b[7:0],Sign_B,Rst);
Adder_8_Bit A1(out[7:0],Cry,wa[7:0],wb[7:0],Rst);
endmodule 