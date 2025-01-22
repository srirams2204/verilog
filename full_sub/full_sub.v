module full_sub(d,bor,a,b,bin);
input a,b,bin;
output d,bor;
assign d = a ^ b ^ bin;
assign bor = (~a & b) | (~(a ^ b) & bin);
endmodule
