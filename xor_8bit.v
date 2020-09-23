
module xor_8bit(output [7:0] out, input [7:0] a, b);

xor (out[1], a[1], b[1]);
xor (out[0], a[0], b[0]);
xor (out[2], a[2], b[2]);
xor (out[3], a[3], b[3]);
xor (out[4], a[4], b[4]);
xor (out[5], a[5], b[5]);
xor (out[6], a[6], b[6]);
xor (out[7], a[7], b[7]);


endmodule