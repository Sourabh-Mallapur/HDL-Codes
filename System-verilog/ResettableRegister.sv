// Asynchoronous Resetable Register

module asresettableregister(input logic clk, reset, 
                            input logic [3:0]d,
                            output logic [3:0]q);
    always_ff @ (posedge clk, posedge reset)
        begin
            if (reset)
                q <= 4'b000;
            else
                q <= d;
        end
endmodule

// Testbench
module asresettableregister_tb();
    logic [3:0] d, q;
    logic clk, reset;
    asresettableregister dut(clk, reset, d, q);
    initial begin
        clk = 0;
        forever 
        #5 clk = ~clk;
    end
    initial begin
        reset = 0; d = 4'b1111;
        #5 reset = 1;
        #3 reset = 0;
        #5 d = 0;
        #5 d = 1;
    end
endmodule

// Synchoronous Resetable Register

module asresettableregister(input logic clk, reset, 
                            input logic [3:0]d,
                            output logic [3:0]q);
    always_ff @ (posedge clk)
        begin
            if (reset)
                q <= 4'b000;
            else
                q <= d;
        end
endmodule

// Testbench
module asresettableregister_tb();
    logic [3:0] d, q;
    logic clk, reset;
    asresettableregister dut(clk, reset, d, q);
    initial begin
        clk = 0;
        forever 
        #5 clk = ~clk;
    end
    initial begin
        reset = 0; d = 4'b1111;
        #5 reset = 1;
        #3 reset = 0;
        #2 reset = 0;
        #5 d = 0;
        #5 d = 1;
    end
endmodule