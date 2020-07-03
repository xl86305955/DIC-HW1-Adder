module FA(src1, src2, cin, sum, cout);

input src1;
input src2;
input cin;

output sum;
output cout;

assign sum = src1 ^ src2 ^ cin;
assign cout = (src1&cin) | (src2&cin) | (src1&src2);


endmodule
