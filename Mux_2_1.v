module Mux_2_1(input S0,S1,Sel,rst,output out);
assign out = ((Sel && S1) || ((!Sel) && S0))&& rst ;
endmodule 
