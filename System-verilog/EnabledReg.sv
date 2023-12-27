// Enabled Registers
module flopenr(input logic clk, reset, en,
                input logic [3:0] d,
                output logic [3:0] q);
    always_ff @(posedge clk, posedge reset)
        if (reset) q <= 4'b000;
        else if (en) q <= d;
endmodule

// Testbench
module flopenr_tb();
    logic [3:0] d, q;
    logic clk, reset, en;
    flopenr dut(clk, reset, en, d, q);
    initial begin
        clk = 0;
        forever 
        #5 clk = ~clk;
    end
    initial begin
        reset = 0; d = 4'b1111; en = 1;
        #5 reset = 1;
        #3 reset = 0;
        #2 en = 0;;
        #5 d = 0;
        #2 en = 1;
        #5 d = 1;
        #5 $finish;
    end
endmodule
