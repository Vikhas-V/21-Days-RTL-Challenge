// DFF TB

module day2_tb ();

  // Write your Testbench here...
  logic clk;
  logic rst;
  logic di;
  
  logic qn;
  logic qa;
  logic qs;
  
  day2 tb (clk,rst,di,qn,qs,qa);
  
  initial begin 
    clk = 1'b0;
  end
  always #5 clk = ~clk;
  initial begin
    rst = 1'b1;
    di = 1'b0;
    @(posedge clk);
    rst = 1'b0;
    @(posedge clk);
    di = 1'b1;
    @(posedge clk);
    @(posedge clk);
    rst=1'b1;
    @(posedge clk);
    rst=1'b0;
  end

endmodule
