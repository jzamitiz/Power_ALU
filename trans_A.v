`include "and_8bit.v"
module trans_A(output [7:0] out, input [7:0] a);

and_8bit a_1(out, a, 8'b11111111);

endmodule