// Different DFF

module day2 (
  input     logic      clk,
  input     logic      reset,

  input     logic      d_i,

  output    logic      q_norst_o,
  output    logic      q_syncrst_o,
  output    logic      q_asyncrst_o
);

  // Write your logic here...
  logic rst = 1'b0;
  assign rst=reset;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      q_asyncrst_o <= 1'b0;
    end
    else begin
      q_asyncrst_o <=d_i;
    end
  end
  always @(posedge clk) begin
    if(rst) begin
      q_syncrst_o <= 1'b0;
    end
    else begin
      q_syncrst_o <=d_i;
    end
  end
  always @(posedge clk) begin
      q_norst_o <=d_i;
  end
  

endmodule
