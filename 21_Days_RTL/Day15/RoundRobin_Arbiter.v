// Round robin arbiter

module day15 (
  input     wire        clk,
  input     wire        reset,

  input     wire[3:0]   req_i,
  output    logic[3:0]  gnt_o
);

  // Write your logic here...
  logic [3:0] pointer;
  logic [3:0] granted;
  bit [3:0] i;
  
  always @(posedge clk) begin
    if(reset) begin
      granted <= '0;
      pointer <= '0;
    end
    else begin
      for(i=0;i<4;i=i+1) begin
        case((pointer+i)%4)
          'd0: if(req_i[0]) begin
            granted <= 4'b0001; pointer <= 4'd1;
          end
          'd1: if(req_i[1]) begin
            granted <= 4'b0010; pointer <= 4'd2;
          end
          'd2: if(req_i[2]) begin
            granted <= 4'b0100; pointer <= 4'd3;
          end
          'd3: if(req_i[3]) begin
            granted <= 4'b1000; pointer <= 4'd0;
          end
        endcase
      end
    end
    	
  end
  
  
  assign gnt_o = granted;
  

endmodule
