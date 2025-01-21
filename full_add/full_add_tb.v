module full_add_tb;
reg a,b,cin;
wire s,c;

full_add uut(
.s(s),
.c(c),
.a(a),
.b(b),
.cin(cin)
);

initial begin
$dumpfile("fa.vcd");
$dumpvars(0,full_add_tb);
a=0;b=0;cin=0;#10;
a=0;b=0;cin=1;#10;
a=0;b=1;cin=0;#10;
a=0;b=1;cin=1;#10;
a=1;b=0;cin=0;#10;
a=1;b=0;cin=1;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=1;#10;
end
endmodule
