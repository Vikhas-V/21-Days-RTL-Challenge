module day8_tb();
	localparam BIN_W = 4, ONE_HOT_W = 16;
  // Write your Testbench here...
  logic [BIN_W-1:0] bin_i;
  logic [ONE_HOT_W-1:0] one_hot_o;
  
  day8 dut (.*);
  initial begin
    bin_i = '0;
    for(int i=0;i<16;i++) begin
      bin_i=bin_i + 1;
      #5;
    end
    
    
  end

endmodule
