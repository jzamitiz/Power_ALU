`include "trans_A.v"
`include "incr_A.v"
`include "RCA_8bit.v"
`include "decre_A.v"
`include "ones_compl.v"
`include "nand_8bit.v"
`include "or_8bit.v"
`include "nor_8bit.v"
`include "xor_8bit.v"
`include "xnor_8bit.v"
`include "comp_8bit.v"
`include "mux16_to_1.v"

module ALU8_bit(
    output [7:0] ALUout,
    output OF, 
    input [7:0] a,b, 
    input [3:0] OpCode);
    wire [7:0] trans_out,incr_out,RCA_out,decre_out,ones_out,and_out,nand_out,
               or_out,nor_out,xor_out,xnor_out,A_GT_B,A_LT_B,A_EQ_B,z;

    trans_A m0(trans_out,a);
    incr_A m1(incr_out,a);
    RCA_8bit m2(OF, RCA_out,a,b,OpCode[0]);
    decre_A m3(decre_out,a);
    ones_compl m4(ones_out,a);
    and_8bit m5(and_out,a,b);
    nand_8bit m6(nand_out,a,b);
    or_8bit m7(or_out,a,b);
    nor_8bit m8(nor_out,a,b);
    xor_8bit m9(xor_out,a,b);
    xnor_8bit m10(xnor_out,a,b);
    comp_8bit m11(A_GT_B, A_LT_B, A_EQ_B, a, b);

    mux16_to_1 m12(ALUout,trans_out,incr_out,RCA_out,RCA_out,decre_out,ones_out,and_out,
                   nand_out,or_out,nor_out,xor_out,xnor_out,A_GT_B,A_LT_B,A_EQ_B,8'bzzzzzzzz,OpCode);


endmodule