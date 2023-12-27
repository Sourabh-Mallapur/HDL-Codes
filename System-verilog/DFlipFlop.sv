// Write HdL Code For D FlipFlop 
 
module Dflipflop (input logic [3:0]d,
            input logic clk,
            output logic [3:0] q, qbar);
    always @( posedge clk ) 
    begin
        q <= d;
        qbar <= ~q;
    end
endmodule
 

// Testbench
module Dflipflop_tb();
logic clk;
logic [3:0]d, q, qbar;
dflipflop dut(clk, d, q, qbar);
    initial begin
        clk = 0;
        forever 
        #5 clk = ~clk;
    end
    initial begin
        d = 0;
        #10 d = 1;
        #10 d = 0;
        #12 d = 1;
        #8 d = 0;
    end
endmodule
