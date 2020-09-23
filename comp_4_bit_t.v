`include "comp_4_bit.v"

module comp_4_bit_t();

reg [3:0] a,b;
wire A_GT_B, A_LT_B, A_EQ_B;

comp_4_bit a1(A_GT_B, A_LT_B, A_EQ_B,a,b);

initial begin

		$display("Simulation running..."); // Display info on monitor
        $dumpfile("and_t8bit.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,a1);  // Variables that will be in vcd file
        $dumpvars(1,a,b,A_GT_B, A_LT_B, A_EQ_B);  // Variables that will be in vcd file

        $display("A      B     A_GT_B, A_LT_B, A_EQ_B");
        $monitor("%d AND %d  =  %b,      %b,    %b", a, b, A_GT_B, A_LT_B, A_EQ_B);
		#0 	a = 4'b1111; b = 4'b0100; 
		#50 a = 4'b0000; b = 4'b1111; 
		#50 a = 4'b1111; b = 4'b1000; 
		#50 a = 4'b0101; b = 4'b1010; 
		#50 a = 4'b1000; b = 4'b0001; 
		#50 a = 4'b1000; b = 4'b0100; 
		#50 a = 4'b1000; b = 4'b1000; 
		#50 a = 4'b1001; b = 4'b1001; 
		#50 $finish;
end

endmodule