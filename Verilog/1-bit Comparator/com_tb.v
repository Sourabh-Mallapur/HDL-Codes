`timescale 1ns/1ps
module com_tb();
    reg i0,i1;
    wire o;
    
comp uut(.i0(i0), .i1(i1), .o(o));

    initial begin
    $monitor("i0: %b,i1: %b, out:%b", i0, i1, o);
	$dumpfile("com.vcd");
	$dumpvars(0, com_tb);
    
    i0 = 0; i1 = 0;
    #10;
    i0 = 1; i1 = 0;
    #10;
    i0 = 0; i1 = 1;
    #10;
    i0 = 1; i1 = 1;
    #10;
        
    end
    
endmodule