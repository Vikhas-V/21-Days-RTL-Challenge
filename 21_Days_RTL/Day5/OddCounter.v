// Odd counter

module day5 (
  input     wire        clk,
  input     wire        reset,

  output    logic[7:0]  cnt_o
);

  // Write your logic here...
  logic[7:0] temp;
  always @(posedge clk) begin
    if(reset)
      temp <= 8'h01;
    else
      temp <= temp + 2;
  end
  
  assign cnt_o = temp;

endmodule
