// Full adder with Combinational logic with intermediate prpagate and generate logic
module fulladder(input logic a, b, cin,
                output logic s, cout);
    logic p, g;
    always_comb 
    begin
       p = a ^ b;
       g = a & b;
    
       s = p ^ cin;
       cout = (p & cin) | g;
     
    end
endmodule