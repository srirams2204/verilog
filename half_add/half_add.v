module half_add(s,c,a,b);
input a,b;
output s,c;
xor x1(s,a,b);
and a1(c,a,b);
endmodule
