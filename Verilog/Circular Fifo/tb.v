
module fifo_tb;

  // Parameters
  localparam  B = 8;
  localparam  W = 4;

  //Ports
  reg clk, reset;
  reg rd,  wr;
  reg [B-1:0] w_data;
  wire empty, full;
  wire [B-1:0] r_data;

  fifo uut (
    .clk(clk),
    .reset(reset),
    .rd(rd),
    .wr(wr),
    .w_data(w_data),
    .empty(empty),
    .full(full),
    .r_data(r_data)
  );

  always #5  clk = ! clk ;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,fifo_tb);

    clk = 0;
    reset = 1;
    rd = 0; wr = 0;
    #5 reset = 0;
    // writing 1,2,3,4,5
    #5 w_data = 1; wr = 1;
    #30 w_data = 2; wr = 1;
    #10 wr = 0;
    //#10 w_data = 3; wr = 1;
    //#10 w_data = 4; wr = 1;
    //#10 w_data = 5; wr = 1;
    #30 rd = 1;    
    
    #50 $finish;

  end
  

endmodule