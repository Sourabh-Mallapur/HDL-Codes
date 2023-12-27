module mux_2(input wire a,b,s,output wire y);
wire n1,n2;
and a1(n1,~s,a);
and a2(n2,s,b);
or a3(y,n1,n2);
endmodule

module mux_4(input wire[3:0]d,input wire [1:0]s,output wire e);
wire l0,l1;
mux_2 m1(.a(d[0]),.b(d[1]),.s(s[0]),.y(l0));
mux_2 m2(.a(d[2]),.b(d[3]),.s(s[0]),.y(l1));
mux_2 m3(.a(l0),.b(l1),.s(s[1]),.y(e));
endmodule

module mux_8(input wire [7:0]d,input wire [2:0]s, output wire y);
wire p0,p1;
mux_4 m1(.d(d[3:0]),.s(s[1:0]),.e(p0));
mux_4 m2(.d(d[7:4]),.s(s[1:0]),.e(p1));
mux_2 m3(.a(p0),.b(p1),.s(s[2]),.y(y));
endmodule
