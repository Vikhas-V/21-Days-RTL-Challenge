// Simple shift register
module day6(
  input     wire        clk,
  input     wire        reset,
  input     wire        x_i,      // Serial input

  output    wire[3:0]   sr_o
);

  logic [3:0] shift_reg;
  // Write your logic here...
  always @(posedge clk) begin
    if(reset) begin
      shift_reg <= '0;
    end
    else begin
      shift_reg <= {shift_reg[2:0],x_i};
    end
  end
  
  assign sr_o = shift_reg;

endmodule
