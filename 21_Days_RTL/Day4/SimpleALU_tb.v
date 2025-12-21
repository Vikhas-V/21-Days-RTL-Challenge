// Simple ALU TB

module day4_tb ();

  // Write your Testbench here...
  logic [7:0]   a_i;
  logic [7:0]   b_i;
  logic [2:0]   op_i;
  logic [7:0]   alu_o;
  day4 dut(.*);
  
  initial begin
    op_i = '0;
    a_i = 8'd200;
    b_i = 8'd120;
    for(int i=0;i<8;i++) begin
      op_i=i;
      #5;
    end
  end
  

  

endmodule
