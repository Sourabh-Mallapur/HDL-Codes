
module seg_2_dff_tb;
  //Ports
  reg  clk;
  reg  reset;
  reg  en;
  reg  d;
  wire  q;

  seg_2_dff  uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .d(d),
    .q(q)
  );

always #2 clk = ! clk ;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,seg_2_dff_tb);

    clk = 0; en = 0; d = 0;
    reset = 1;

    #2 reset = 0; en = 1;
    #5 d = 1;

    #5 d = 0;
    #20 $finish;
end  

endmodule