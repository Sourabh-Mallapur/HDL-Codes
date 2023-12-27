module rcatb();
reg [3:0]a,b;
reg cin;
wire c3;
wire [3:0]sum;
rca uut(.a(a),.b(b),.cin(cin),.c3(c3),.S(sum));
initial begin
cin=0;
a=4'b1001;b=4'b0011;#10;
cin=1;
$finish;
end
endmodule
