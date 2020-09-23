`include "RCA_8bit.v"

module RCA_t8bit;

reg [7:0] A,B;
reg Cin;
wire Cout;
wire [7:0] Sum;

integer handle3;
integer desc3;

initial 
    begin
        handle3 = $fopen("RCA4_tb1.txt");
        #400 $finish;
    end

always 
    begin
    desc3 = handle3;
    #50 $fdisplay(desc3,"%b, %b,%b, %b%b", A, B, Cin, Cout,Sum ); 
    end

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("RCA4_tb1.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,RCA01);  // Variables that will be in vcd file

        $monitor("%d + %d + %d = %d", A, B, Cin,Sum);
		#0 	A = 8'b10010001; B = 8'b01010011; Cin = 1'b0;
		#50 A = 8'd24;        B = 8'd20;       Cin = 1'b1;
		#50 A = 8'd3;        B = 8'd0;        Cin = 1'b0;
		#50 A = 8'd7;        B = 8'd3;        Cin = 1'b1;
		#50 A = 8'd11;       B = 8'd3;        Cin = 1'b0;
		#50 A = 8'd233;      B = 8'd44;       Cin = 1'b1;
		#50 A = 8'd87;       B = 8'd20;       Cin = 1'b0;
		#50 A = 8'd99;       B = 8'd10;       Cin = 1'b1;
		#50 $finish;
     end

RCA_8bit RCA01(Cout,Sum,A,B,Cin);

endmodule