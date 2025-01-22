module half_sub(d,bor,a,b);
input a,b;
output d,bor;
assign d = a ^ b;
assign bor = ~a & b;
endmodule
