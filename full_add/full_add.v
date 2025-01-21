module full_add(s,c,a,b,cin);
input a,b,cin;
output s,c;
assign s = a^b^cin;
assign c = (a & b) | (b & cin)  | (cin & a) ;
endmodule
