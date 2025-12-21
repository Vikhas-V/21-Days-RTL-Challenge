module day6_tb ();

  // Write your Testbench here...
	logic clk,reset,x_i;
  logic sr_o;
  
  day6 dut (.*);
  always #5 clk = ~clk;
  
  initial begin
    clk=1'b1;
    reset =1'b1;
   	
    @(posedge clk);
    
    reset=1'b0;
    
    @(posedge clk);
    
    for(int i=0;i<8;i++) begin
      x_i = $random%2;
      @(posedge clk);
    end
    
    $finish();
  end
  
endmodule
