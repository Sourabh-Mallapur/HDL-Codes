module fulladd(input wire a,b,cin,output wire cout,sum);
wire p1,p2,p3;
xor x1(p1,a,b);
xor x2(sum,p1,cin);
and a1(p2,p1,cin);
and a2(p3,a,b);
or(cout,p2,p3);
endmodule

module rca(input wire [3:0]a,b,input wire cin,output wire c3,output wire [3:0]S);
wire c0,c1,c2;
fulladd f1(.a(a[0]),.b(b[0]),.cin(cin),.cout(c0),.sum(S[0]));
fulladd f2(.a(a[1]),.b(b[1]),.cin(c0),.cout(c1),.sum(S[1]));
fulladd f3(.a(a[2]),.b(b[2]),.cin(c1),.cout(c2),.sum(S[2]));
fulladd f4(.a(a[3]),.b(b[3]),.cin(c2),.cout(c3),.sum(S[3]));
endmodule
