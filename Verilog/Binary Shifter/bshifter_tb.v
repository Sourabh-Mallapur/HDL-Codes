`timescale 1ns / 1ps
module bshifter_tb();
    
    reg [7:0] a;
    reg [2:0] amt;
    wire [7:0] y;
    
    bshifter uut(.a(a),.amt(amt),.y(y));

    initial begin
    $monitor("amt: %d, a: %b, y: %b",amt,a,y);     

        $dumpfile("bshifter.vcd");
        $dumpvars(0, bshifter_tb);
        
        amt = 0;   
        a = 8'b1101_0110;
        #10; amt = 1;
        #10; amt = 3;
        #10; amt = 7; #10;        
      
    $finish;
    end

endmodule
