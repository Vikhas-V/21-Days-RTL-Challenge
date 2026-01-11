// LFSR
module day7 (
  input     wire      clk,
  input     wire      reset,

  output    wire[3:0] lfsr_o
);

  // Write your logic here...
  logic [3:0] register;
  
  always @(posedge clk) begin
    if(reset)
      register <= '0;
    else begin
      register <= {register[2:0], register[3] ^ register[2]};
    end
  end
  
  assign lfsr_o = register;
endmodule
