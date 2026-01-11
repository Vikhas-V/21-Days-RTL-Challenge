// Counter with a load
module day10 (
  input     wire          clk,
  input     wire          reset,
  input     wire          load_i,
  input     wire[3:0]     load_val_i,

  output    wire[3:0]     count_o
);

  logic[3:0] load_ff,count,next;

  // Store latest load value
  always_ff @(posedge clk)
    if (reset)
      load_ff <= 4'h0;
    else if (load_i)
      load_ff <= load_val_i;


  always_ff @(posedge clk)
    if (reset)
      count <= 4'h0;
    else
      count <= next;

  assign next = load_i ? load_val_i :
                              (count == 4'hF) ? load_ff :
                              count + 4'h1;

  assign count_o = count;

endmodule