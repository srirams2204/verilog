module half_add_tb;
reg a,b;
wire s,c;

half_add uut(
.s(s),
.c(c),
.a(a),
.b(b)
);

initial begin
$dumpfile("ha.vcd");
$dumpvars(0,half_add_tb);
a=1'b0;b=1'b0;#10;
a=1'b0;b=1'b1;#10;
a=1'b1;b=1'b0;#10;
a=1'b1;b=1'b1;#10;
end
endmodule
