
module nand_8bit(output [7:0] out, input [7:0] a, b);

nand (out[0], a[0], b[0]);
nand (out[1], a[1], b[1]);
nand (out[2], a[2], b[2]);
nand (out[3], a[3], b[3]);
nand (out[4], a[4], b[4]);
nand (out[5], a[5], b[5]);
nand (out[6], a[6], b[6]);
nand (out[7], a[7], b[7]);


endmodule