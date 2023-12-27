// DLatch Code
module DLatch(input logic clk, input logic [3:0]d, output logic [3:0] q);
always_latch 
    if (clk)
    q <= d;
endmodule

// Testbench
module DLatch_tb();
logic clk, d, q;
Sync DLatch(clk, d, q);
initial begin 
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin 
    d = 1; 
    #10 d = 0;
    #10 d = 1;
    #13 d = 0;
    #10 d = 1;
    #7 d = 0;
end
endmodule