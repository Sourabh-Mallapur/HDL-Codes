// Write HDL Code For JK FlipFlop
 
//  Truth Table
// ---------------------
// | J | K |  q  | clk |
// | 0 | 0 |qprev|  0  |
// | 1 | 0 |  1  |  1  |
// | 0 | 1 |  0  |  1  |
// | 0 | 0 | ~q  |  1  |
// ---------------------

module JK (input logic clk, J, K,
           output logic q);
    always_ff @( posedge clk ) 
    case ({J,K})
        2'b00 : q <= 1'b0;
        2'b10 : q <= 1'b1;
        2'b11 : q <= ~q;
    endcase
endmodule
 

// Testbench
module JK_tb();
logic clk, J, K, q;
JK dut(clk, J, K, q);
    initial begin
        clk = 0;
        forever 
        #5 clk = ~clk;
    end
    initial begin 
        J = 0; K = 0;
        #10 J = 0; K = 1;
        #10 J = 1; K = 0;
        #10 J = 1; K = 1;
        #10 $finish
    end
endmodule
