
module xnor_8bit(output [7:0] out, input [7:0] a, b);

xnor (out[1], a[1], b[1]);
xnor (out[0], a[0], b[0]);
xnor (out[2], a[2], b[2]);
xnor (out[3], a[3], b[3]);
xnor (out[4], a[4], b[4]);
xnor (out[5], a[5], b[5]);
xnor (out[6], a[6], b[6]);
xnor (out[7], a[7], b[7]);


endmodule