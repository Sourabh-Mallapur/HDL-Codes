module seg_2_dff (
  input  wire clk  ,
  input  wire reset,
  input  wire en   ,
  input  wire d    ,
  output reg  q
);
  reg r_reg,r_next;
  always@(posedge clk,posedge reset)
    if(reset)
      r_reg <= 1'b0;
    else
      r_reg <= r_next;

  always@*
    if(en)
      r_next = d;
    else
      r_next = r_reg;
  always@*
    q = r_reg;

endmodule