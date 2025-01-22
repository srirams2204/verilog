module full_sub_tb;
reg a,b,bin;
wire d,bor;

full_sub uut(
.d(d),
.bor(bor),
.a(a),
.b(b),
.bin(bin)
);

initial begin
$dumpfile("fs.vcd");
$dumpvars(0,full_sub_tb);
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
end
endmodule
