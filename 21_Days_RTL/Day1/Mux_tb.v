// A simple TB for mux

module day1_tb ();

  // Write your Testbench here...
  logic [7:0] a,b,c;
  logic sel;
  initial begin
    sel=1'b0;
    a=8'hFF;
    b=8'hAA;
    #10
    sel=1'b1;
  end
  
  day1 test(a,b,sel,c);

endmodule
