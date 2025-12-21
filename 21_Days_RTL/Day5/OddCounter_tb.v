// Simple TB

module day5_tb ();

  // Write your Testbench here...
 
  logic        clk,
  logic        reset,
  logic[7:0]  cnt_o;
  day5 dut (.*);

	initial
    clk = 1'b0;
  
  always #5 clk = ~clk;
  
  initial begin
    reset = 1'b1;
    @(posedge clk)
    reset = 1'b0;
    
    for (int i=0; i<128; i++)
      @(posedge clk);
    
  end

endmodule
