module half_sub_tb;
reg a,b;
wire d,bor;

half_sub uut(
.d(d),
.bor(bor),
.a(a),
.b(b)
);

initial begin
$dumpfile("hs.vcd");
$dumpvars(0,half_sub_tb);
a=1'b0;b=1'b0;#10;
a=1'b0;b=1'b1;#10;
a=1'b1;b=1'b0;#10;
a=1'b1;b=1'b1;#10;
end
endmodule
