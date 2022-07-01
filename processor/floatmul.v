//`include "pipelinedprefix32.v"
//`include "shifter_rotator.v"
//`include "multi.v"
//`include "df32.v"
//`include "dff.v"


module floatmul(a,b,s,clk);


input [31:0]a,b;
input clk;
output [31:0]s;
wire [31:0]ex1,ex2,out1;
wire [31:0]m1,m2,e2;
wire [31:0]e[9:0];
wire [31:0]expo;
wire c,acout,mcout;
wire [63:0]m;
wire [22:0]out;
wire sign[26:0];
wire [4:0]bits;

 //sign bit

assign sign[0]=a[31]^b[31];

df k0(sign[1],sign[0],clk);
df k1(sign[2],sign[1],clk);
df k2(sign[3],sign[2],clk);
df k3(sign[4],sign[3],clk);

df k4(sign[5],sign[4],clk);
df k5(sign[6],sign[5],clk);
df k6(sign[7],sign[6],clk);
df k7(sign[8],sign[7],clk);

df k8(sign[9],sign[8],clk);
df k9(sign[10],sign[9],clk);
df k10(sign[11],sign[10],clk);
df k11(sign[12],sign[11],clk);

df k12(sign[13],sign[12],clk);
df k13(sign[14],sign[13],clk);
df k14(sign[15],sign[14],clk);
df k15(sign[16],sign[15],clk);

df k16(sign[17],sign[16],clk);
df k17(sign[18],sign[17],clk);
df k18(sign[19],sign[18],clk);
df k19(sign[20],sign[19],clk);

df k20(sign[21],sign[20],clk);
df k21(sign[22],sign[21],clk);
df k22(sign[23],sign[22],clk);
df k23(sign[24],sign[23],clk);

df k24(sign[25],sign[24],clk);
df k25(sign[26],sign[25],clk);

// preparing exponents for addition (ex1 and ex2)

assign ex1[7:0]=a[30:23];
assign ex1[31:8]=24'd0;
assign ex2[7:0]=b[30:23];
assign ex2[31:8]=24'd0;



// exponent addition

prefix32 p1(ex1,ex2,1'b0,1'b0,c,e[0],clk);
prefix32 p2(e[0],32'd127,1'b1,1'b1,acout,e[1],clk);

df32 e0(e[2],e[1],clk);
df32 e1(e[3],e[2],clk);
df32 e12(e[4],e[3],clk);
df32 e3(e[5],e[4],clk);

df32 e4(e[6],e[5],clk);
df32 e5(e[7],e[6],clk);




//preparing mantissas (m1 and m2)

assign m1[22:0]=a[22:0];
assign m1[23]=1'b1;
assign m1[31:24]=8'b00000000;
assign m2[22:0]=b[22:0];
assign m2[23]=1'b1;
assign m2[31:24]=8'b00000000;



//mantissa multiplication

mul multiply(m1,m2,m,c,clk,mcout);



//shifting if required

assign bits[0]=m[47];
assign bits[4:1]=4'b0000;
shifter_rotator rs(m[46:15],2'b00,bits,out1,clk);




// increment exponent by 1 if required

assign e2[0]=m[47];
assign e2[31:1]=31'd0;
prefix32 p3(e[7],e2,1'b0,1'b0,acout,e[8],clk);

df32 pr0(e[9],e[8],clk);
df32 pr1(expo,e[9],clk);


//preparing final result


assign s[31]=sign[26];
assign s[30:23]=expo[7:0];
assign s[22:0] =out1[30:8];


endmodule
