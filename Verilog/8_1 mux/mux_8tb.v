module mux_8tb();
reg [7:0]d;
reg[2:0]s;
wire y;
mux_8 uut(.d(d),.s(s),.y(y));

initial begin
$monitor("D=%b,S=%b,Y=%b",d,s,y);
d = 8'b10110010;
s[2]=0;s[1]=0;s[0]=0;#10;
s[2]=0;s[1]=0;s[0]=1;#10;
s[2]=0;s[1]=1;s[0]=0;#10;
s[2]=0;s[1]=1;s[0]=1;#10;
s[2]=1;s[1]=0;s[0]=0;#10;
s[2]=1;s[1]=0;s[0]=1;#10;
s[2]=1;s[1]=1;s[0]=0;#10;
s[2]=1;s[1]=1;s[0]=1;#10;
$finish;
end

endmodule
