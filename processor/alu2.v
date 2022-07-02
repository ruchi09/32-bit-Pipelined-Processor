//`timescale 1ns / 1ps



`include "df64.v"
`include "shifter_rotator.v"
`include "logic_unit.v"
`include "arithmetic_unit2.v"
module alu(a,b,opcode,out,clk);

input [31:0]a,b;
input [4:0]opcode;
input clk;
output [63:0]out;
reg [63:0]out;


wire [63:0]o1[29:0];

wire [63:0]o[25:0],o2;
//wire [63:0]

assign o1[0][63:32]=32'd0;
assign o[1][63:32]=32'd0;



arithmetic_unit    au(a,b,opcode[2:0],o2,clk);
logic_unit         lu(a,b,opcode[2:0],o1[0][31:0],clk);
shifter_rotator    sh(a,opcode[1:0],b[4:0],o[0][31:0],clk);


// pipelining logic unit


df64 d00(o1[1],o1[0],clk);
df64 d01(o1[2],o1[1],clk);
df64 d02(o1[3],o1[2],clk);
df64 d03(o1[4],o1[3],clk);


df64 d04(o1[5],o1[4],clk);
df64 d05(o1[6],o1[5],clk);
df64 d06(o1[7],o1[6],clk);
df64 d07(o1[8],o1[7],clk);



df64 d08(o1[9],o1[8],clk);
df64 d09(o1[10],o1[9],clk);
df64 d010(o1[11],o1[10],clk);
df64 d011(o1[12],o1[11],clk);



df64 d012(o1[13],o1[12],clk);
df64 d013(o1[14],o1[13],clk);
df64 d014(o1[15],o1[14],clk);
df64 d015(o1[16],o1[15],clk);



df64 d016(o1[17],o1[16],clk);
df64 d017(o1[18],o1[17],clk);
df64 d018(o1[19],o1[18],clk);
df64 d019(o1[20],o1[19],clk);



df64 d020(o1[21],o1[20],clk);
df64 d021(o1[22],o1[21],clk);
df64 d022(o1[23],o1[22],clk);
df64 d023(o1[24],o1[23],clk);



df64 d024(o1[25],o1[24],clk);
df64 d025(o1[26],o1[25],clk);
df64 d026(o1[27],o1[26],clk);
df64 d027(o1[28],o1[27],clk);

df64 d028(o1[29],o1[28],clk);











//pipelining shifter_rotator

df64 d10(o[1],o[0],clk);
df64 d11(o[2],o[1],clk);
df64 d12(o[3],o[2],clk);
df64 d13(o[4],o[3],clk);

df64 d14(o[5],o[4],clk);
df64 d15(o[6],o[5],clk);
df64 d16(o[7],o[6],clk);
df64 d17(o[8],o[7],clk);

df64 d18(o[9],o[8],clk);
df64 d19(o[10],o[9],clk);
df64 d110(o[11],o[10],clk);
df64 d111(o[12],o[11],clk);

df64 d112(o[13],o[12],clk);
df64 d113(o[14],o[13],clk);
df64 d114(o[15],o[14],clk);
df64 d115(o[16],o[15],clk);

df64 d116(o[17],o[16],clk);
df64 d117(o[18],o[17],clk);
df64 d118(o[19],o[18],clk);
df64 d119(o[20],o[19],clk);

df64 d120(o[21],o[20],clk);
df64 d121(o[22],o[21],clk);
df64 d122(o[23],o[22],clk);
df64 d123(o[24],o[23],clk);
df64 d124(o[25],o[24],clk);

parameter   LOGIC = 2'b01;
parameter   SHIFT = 2'b10;
parameter   ARITH = 2'b00;
//parameter   LDSTR = 2'b11;


always @(posedge clk)
begin
    
    case(opcode[4:3])
        LOGIC: out <= o1[29]; 
        SHIFT: out <= o[25];
        ARITH: out <= o2;  
        //LDSTR: out <=o3;
                
        default: out <= 64'd0;
    endcase
end





endmodule
