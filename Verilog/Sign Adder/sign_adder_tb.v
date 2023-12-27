`timescale 1ns/1ps
module signed_tb();
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] sum;
    integer i;

    sign_adder uut (.a(a), .b(b), .sum(sum));
    initial begin
    $monitor("a: %b,b: %b, sum:%b", a, b, sum);
    $dumpfile("sign_adder.vcd");
    $dumpvars(0, signed_tb);
        #10;
        a = 4'h0;
        b = 4'hf;
        for(i=0; i<15; i=i+1) 
        begin          
            a = a + 4'h1 ; 
            b = b - 4'h1;
            #10;
        end
    $finish;
    end
endmodule
