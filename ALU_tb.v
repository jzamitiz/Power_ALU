`include "ALU8_bit.v"

module ALU_tb();

reg [7:0] a,b;
reg [3:0] OpCode;
wire [7:0] ALUout;
wire OF;

ALU8_bit a0(ALUout,OF,a,b,OpCode);

initial begin

		$display("Simulation running..."); // Display info on monitor
        $dumpfile("ALU8_bit.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,a0);  // Variables that will be in vcd file
        $dumpvars(1,ALUout,OF,a,b,OpCode);  // Variables that will be in vcd file

        $monitor("%b, %b, --> %b, %b",a,b,OpCode,ALUout);
		#0 	a = 8'h23;   b = 8'h0;     OpCode = 4'h0; $display("transfer");
		#50 a = 8'h2;    b = 8'h0;     OpCode = 4'h1; $display("increment");
		#50 a = 8'h2;    b = 8'h3;     OpCode = 4'h2; $display("add");
		#50 a = 8'h7;    b = 8'h3;     OpCode = 4'h3; $display("subtract");
		#50 a = 8'h8;    b = 8'h0;     OpCode = 4'h4; $display("decrement");
		#50 a = 8'hff;   b = 8'h0;     OpCode = 4'h5; $display("ones complement");
		#50 a = 8'h81;   b = 8'hff;    OpCode = 4'h6; $display("and");
        #50 a = 8'h34;   b = 8'h11;    OpCode = 4'h7; $display("nand");
        #50 a = 8'hf0;   b = 8'h55;    OpCode = 4'h8; $display("or");
        #50 a = 8'h11;   b = 8'h0;     OpCode = 4'h9; $display("nor");
        #50 a = 8'h12;   b = 8'h10;    OpCode = 4'ha; $display("xor");
        #50 a = 8'h13;   b = 8'h9;     OpCode = 4'hb; $display("xnor");
        #50 a = 8'h14;   b = 8'h5;     OpCode = 4'hc; $display("A > B");
        #50 a = 8'h16;   b = 8'hce;    OpCode = 4'hd; $display("A < B");
        #50 a = 8'hfe;   b = 8'hfe;    OpCode = 4'he; $display("A = B");
        #50 a = 8'he5;   b = 8'h56;    OpCode = 4'hf; $display("HighZ");
		#50 $finish;
end

endmodule