// Synchoronizer - Made up of two or more back to back flipflops 
module Sync(input logic clk, input logic d, output logic q);
logic n1;
always_ff @ (posedge clk)
    begin
        n1 <= d;
        q <= n1;
    end
endmodule

// Testbench
module Sync_tb();
logic clk, d, q;
Sync dut(clk, d, q);
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