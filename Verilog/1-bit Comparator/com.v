module comp
    (
    input wire i0,i1, 
    output wire o
    );

    wire p0,p1;
    
    assign p0 = i0 & i1;
    assign p1 = ~i0 & ~i1;
    assign o = p0 | p1;
    
endmodule
    
    
   