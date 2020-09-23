`include "nand_8bit.v"

module nand_t8bit();

reg [7:0] a,b;
wire [7:0]out;

nand_8bit a1(out,a,b);

initial begin

		$display("Simulation running..."); // Display info on monitor
        $dumpfile("nand_t8bit.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,a1);  // Variables that will be in vcd file
        $dumpvars(1,a,b,out);  // Variables that will be in vcd file

        $monitor("%b NAND %b  = %b", a, b, out);
		#0 	a = 8'b11111111; b = 8'b01001010; 
		#50 a = 8'b00000000; b = 8'b11111111; 
		#50 a = 8'b11111111; b = 8'b10000001; 
		#50 a = 8'b01010101; b = 8'b10101010; 
		#50 a = 8'b10000010; b = 8'b00011110; 
		#50 a = 8'b10000100; b = 8'b01000000; 
		#50 a = 8'b10001000; b = 8'b10000101; 
		#50 a = 8'b10010000; b = 8'b10010111; 
		#50 $finish;
end

endmodule