`include "comp_8bit.v"

module comp_8bit_t();

reg [7:0] a,b;
wire A_GT_B, A_LT_B, A_EQ_B;

comp_8bit a1(A_GT_B, A_LT_B, A_EQ_B,a,b);

initial begin

		$display("Simulation running..."); // Display info on monitor
        $dumpfile("and_t8bit.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,a1);  // Variables that will be in vcd file
        $dumpvars(1,a,b,A_GT_B, A_LT_B, A_EQ_B);  // Variables that will be in vcd file

        $display("  A       B     A_GT_B, A_LT_B, A_EQ_B");
        $monitor("%d AND %d  =  %b,      %b,    %b", a, b, A_GT_B, A_LT_B, A_EQ_B);
		#0 	a = 8'b00011110; b = 8'b00001000; 
		#50 a = 8'b00000000; b = 8'b00011110; 
		#50 a = 8'b00011110; b = 8'b00010000; 
		#50 a = 8'b00001010; b = 8'b00010100; 
		#50 a = 8'b00010000; b = 8'b00000010; 
		#50 a = 8'b00010000; b = 8'b00001000; 
		#50 a = 8'b00010000; b = 8'b00010000; 
		#50 a = 8'b00010010; b = 8'b00010010; 
		#50 $finish;
end

endmodule