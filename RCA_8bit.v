`include "FA.v"

module RCA_8bit(Cout,Sum,A,B,Cin);
input [7:0] A,B;
input Cin;
output Cout;
output [7:0] Sum;

wire [6:0] w;
wire [7:0] z;

xor (z[0],B[0], Cin);
xor (z[1],B[1], Cin);
xor (z[2],B[2], Cin);
xor (z[3],B[3], Cin);
xor (z[4],B[4], Cin);
xor (z[5],B[5], Cin);
xor (z[6],B[6], Cin);
xor (z[7],B[7], Cin);

FA FA0(w[0],Sum[0],A[0],z[0],Cin);
FA FA1(w[1],Sum[1],A[1],z[1],w[0]);
FA FA2(w[2],Sum[2],A[2],z[2],w[1]);
FA FA3(w[3],Sum[3],A[3],z[3],w[2]);
FA FA4(w[4],Sum[4],A[4],z[4],w[3]);
FA FA5(w[5],Sum[5],A[5],z[5],w[4]);
FA FA6(w[6],Sum[6],A[6],z[6],w[5]);
FA FA7(Cout,Sum[7],A[7],z[7],w[6]);

endmodule