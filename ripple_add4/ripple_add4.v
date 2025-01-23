//top module
module ripple_add4(s, c, a, b);
input [3:0] a, b;// Two 4-bit inputs
output [3:0] s;
output c;
wire w1, w2, w3;
full_add fa1(s[0], w1, a[0], b[0], 1'b0);
full_add fa2(s[1], w2, a[1], b[1], w1);
full_add fa3(s[2], w3, a[2], b[2], w2);
full_add fa4(s[3], c, a[3], b[3], w3);
endmodule

//full adder module
module full_add(s,c,a,b,cin);
input a,b,cin;
output s,c;
assign s = a^b^cin;
assign c = (a & b) | (b & cin)  | (cin & a) ;
endmodule
