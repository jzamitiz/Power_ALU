`include "comp_4_bit.v"

module comp_8bit(output A_GT_B, A_LT_B, A_EQ_B, input [7:0] a, b);

comp_4_bit a1(x_out, y_out, z_out,a[7:4],b[7:4]);
comp_4_bit a2(m_out, n_out, r_out,a[3:0],b[3:0]);

and (gt_out, z_out, m_out);
and (lt_out, z_out, n_out);

or (A_GT_B, x_out, gt_out);
or (A_LT_B, y_out, lt_out);
and (A_EQ_B, z_out,r_out);

endmodule