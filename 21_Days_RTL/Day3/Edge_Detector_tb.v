// Simple edge detector TB

module day3_tb ();

  // Write your Testbench here...
  logic clk,rst;
  logic inp;
  logic rise,fall;
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 1'b0;
  end
  initial begin
  	rst = 1'b1;
    @(posedge clk)
    rst = 1'b0;
    @(posedge clk);
    for(int i=0;i<20;i++) begin
      inp = i%2;
      @(posedge clk);
    end
  end
  
  day3 dut(clk,rst,inp,rise,fall);

endmodule
