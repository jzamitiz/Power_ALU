module comp_4_bit( output A_GT_B, A_LT_B, A_EQ_B, input [3:0] a, b);

wire [7:0] w;
wire [4:0] m;
wire [2:0] n;

not (b3_not,b[3]);
not (a3_not,a[3]);
not (b2_not,b[2]);
not (a2_not,a[2]);
not (b1_not,b[1]);
not (a1_not,a[1]);
not (b0_not,b[0]);
not (a0_not,a[0]);

and (w[7], a[3], b3_not);
and (w[6], a3_not, b[3]);
and (w[5], a[2], b2_not);
and (w[4], a2_not, b[2]);
and (w[3], a[1], b1_not);
and (w[2], a1_not, b[1]);
and (w[1], a[0], b0_not);
and (w[0], a0_not, b[0]);

nor (x_out, w[7], w[6]);
nor (y_out, w[5], w[4]);
nor (z_out, w[3], w[2]);
nor (t_out, w[1], w[0]);

and (m[4],x_out,w[5]);
and (m[3],x_out,y_out);
and (m[2],m[3],w[3]);
and (m[1],m[3],z_out);
and (m[0],m[1],w[1]);

and (n[2],x_out,w[4]);
and (n[1],m[3],w[2]);
and (n[0],m[1],w[0]);

or (A_GT_B, w[7], m[4], m[2], m[0]);
or (A_LT_B, w[6], n[2], n[1], n[0]);

nor (A_EQ_B, A_GT_B, A_LT_B);

endmodule