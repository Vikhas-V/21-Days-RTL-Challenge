module day9_tb ();
	localparam VEC_W = 4;
  // Write your Testbench here...

  logic [VEC_W-1:0] bin_i;
  logic [VEC_W-1:0] gray_o;
  
  day9 dut(.*);
  initial begin
    bin_i = '0;
    
    for(int i=0;i<(1'b1<<VEC_W);i++) begin
      bin_i = bin_i + 1;
    end
  end
  
endmodule
