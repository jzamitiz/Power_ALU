`include "mux16_to_1.v"

module mux16_to_1_t();

reg [7:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
reg [3:0] sel;
wire [7:0]out;

mux16_to_1 o1(out,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,sel);

initial begin

		$display("Simulation running..."); // Display info on monitor
        $dumpfile("mux16_to_1.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,o1);  // Variables that will be in vcd file
        //$dumpvars(1,a,b,out);  // Variables that will be in vcd file

        $monitor("%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, --> %d, %d",a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,sel,out);
		#0 	a = 8'd23; b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h0; 
		#50 a = 8'd0;  b = 8'd02; c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h1; 
		#50 a = 8'd0;  b = 8'd0;  c = 8'd03; d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h2; 
		#50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd04; e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h3; 
		#50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd05; f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h4; 
		#50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd06; g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h5; 
		#50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd07; h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h6; 
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd08; i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h7;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd09; j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h8;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd10; k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'h9;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd11; l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'ha;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd12; m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'hb;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd13; n = 8'd0;  o = 8'd0;  p = 8'd0;   sel = 4'hc;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd14; o = 8'd0;  p = 8'd0;   sel = 4'hd;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd15; p = 8'd0;   sel = 4'he;
        #50 a = 8'd0;  b = 8'd0;  c = 8'd0;  d = 8'd0;  e = 8'd0;  f = 8'd0;  g = 8'd0;  h = 8'd0;  i = 8'd0;  j = 8'd0;  k = 8'd0;  l = 8'd0;  m = 8'd0;  n = 8'd0;  o = 8'd0;  p = 8'd16;  sel = 4'hf; 
		#50 $finish;
end

endmodule