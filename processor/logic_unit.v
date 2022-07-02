`include "mux32.v"
//`include "dff.v"
`include "df32.v"
`include "mux2_4.v"


module logic_unit(a,b,op,out,clk);

input [31:0]a,b;
input [2:0]op;
input clk;
output [31:0]out;

wire [2:0]op1;
wire opc;
wire [31:0]a1,b1;
wire [31:0]o[5:0];
//reg [31:0]out;

df32 d1(a1,a,clk);
df32 d2(b1,b,clk);
dff  d3(op1[0],op1[1],op[0],op[1],clk);
df   d4(op1[2],op[2],clk);


assign o[0] = a1 & b1;
assign o[1] = a1 | b1;
assign o[2] = a1 ^ b1;
assign o[3] = a1;
 

mux2_4 m1(o[0],o[1],o[2],o[3],op1[2:1],o[4],clk);
df   d5(opc,op1[0],clk);

assign o[5]= ~o[4];

mux32 m2(o[5],o[4],opc,out,clk);

endmodule
