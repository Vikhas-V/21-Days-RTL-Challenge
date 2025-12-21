 // An edge detector

module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    wire    rising_edge_o,
  output    wire    falling_edge_o
);

  // Write your logic here...
  logic temp;
  always @(posedge clk or posedge reset) begin
    if(reset)
      temp <= '0;
    else 
      temp <= a_i;
  end
  
    assign rising_edge_o = ~temp & a_i;
    assign falling_edge_o = ~a_i & temp;

endmodule
