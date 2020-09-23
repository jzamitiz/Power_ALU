
module nor_8bit(output [7:0] out, input [7:0] a, b);

nor (out[1], a[1], b[1]);
nor (out[0], a[0], b[0]);
nor (out[2], a[2], b[2]);
nor (out[3], a[3], b[3]);
nor (out[4], a[4], b[4]);
nor (out[5], a[5], b[5]);
nor (out[6], a[6], b[6]);
nor (out[7], a[7], b[7]);


endmodule