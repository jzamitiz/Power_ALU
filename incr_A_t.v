`include "incr_A.v"

module trans_A_t();

reg [7:0] a;
wire [7:0] out;

incr_A a0(out,a);

initial begin

  $display("Simulation running..."); // Display info on monitor
  $dumpfile("incr_A.vcd"); // Simulation results -> GTKWave
  $dumpvars(0,a0); 
  $monitor("%d , %d", a,out);
  #0 a = 8'ha;
  #50 a = 8'h3a;
  #50 a = 8'hae;
  #50 $finish;
end

endmodule