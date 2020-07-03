//`include "FA.v"
module AS(sel, A, B, S, O);
input [3:0] A, B;
input sel;
output [3:0] S;
output O;

wire [ 3:0] b; 

wire s0;
wire s1;
wire s2;
wire s3;

wire c0;
wire c1;
wire c2;
wire c3;
wire c4;

assign b = sel ? ~B + 1 : B;
assign c0 = 0;


FA fa0(A[0], b[0], c0, s0, c1);
FA fa1(A[1], b[1], c1, s1, c2);
FA fa2(A[2], b[2], c2, s2, c3);
FA fa3(A[3], b[3], c3, s3, c4);

assign S = {s3, s2, s1, s0};
assign O = sel == 1 && B == 4'b1000 ? s3 : c3 ^ c4;


endmodule


