module day7_tb ();

  // Write your Testbench here...
  logic clk,reset;
  logic lfsr_o;
  
  always #5 clk=~clk;
  day7 dut(.*);
  
  initial begin
    clk = 1'b1;
    reset=1'b1;
    
    @(posedge clk);
    reset = 1'b0;  
    
    repeat(5)
      @(posedge clk);
    
    $finish();
  end

endmodule
