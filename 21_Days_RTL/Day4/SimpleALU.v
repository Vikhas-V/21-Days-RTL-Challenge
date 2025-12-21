// A simple ALU

module day4 (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  input     logic [2:0]   op_i,

  output    logic [7:0]   alu_o
);

  // Write your logic here...
  always_comb begin
    case (op_i)
    	3'd0: alu_o = a_i + b_i;
      3'd1: alu_o = a_i - b_i;
      3'd2: alu_o = a_i << b_i[2:0];
      3'd3: alu_o = a_i >> b_i[2:0];
      3'd4: alu_o = a_i&b_i;
      3'd5: alu_o = a_i|b_i;
      3'd6: alu_o = a_i^b_i;
      3'd7: alu_o = {7'b0, a_i == b_i};
  endcase
        end

endmodule
