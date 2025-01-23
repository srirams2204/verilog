module ripple_add4_tb();
reg [3:0] a, b;
wire [3:0] s;
wire c;

ripple_add4 uut(
.s(s), 
.c(c), 
.a(a), 
.b(b));

initial begin
$dumpfile("ra.vcd");
$dumpvars(0,ripple_add4_tb);
a = 4'b0000; b = 4'b0000; #10;
a = 4'b0001; b = 4'b0010; #10;
a = 4'b0110; b = 4'b0101; #10;
a = 4'b1111; b = 4'b1111; #10;
end
endmodule
