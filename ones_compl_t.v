`include "ones_compl.v"

module ones_compl_t();

reg [7:0] a;
wire [7:0] out;

ones_compl a0(out,a);

initial begin

  $display("Simulation running..."); // Display info on monitor
  $dumpfile("ones_compl.vcd"); // Simulation results -> GTKWave
  $dumpvars(0,a0); 
  $monitor("%b , %b", a,out);
  #0 a = 8'ha;
  #50 a = 8'h3a;
  #50 a = 8'hae;
  #50 a = 8'hff;
  #50 $finish;
end

endmodule