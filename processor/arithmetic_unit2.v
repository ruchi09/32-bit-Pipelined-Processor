`include "pipelinedprefix.v"
`include "multi.v"
`include "floatmul.v"
`include "floatadder2.v"
//`include "shifter_rotator.v"
//`include "mux32.v"
module arithmetic_unit(a,b,opcode,out,clk);


input [31:0]a,b;
input [2:0]opcode;
input clk;
output [63:0]out;
wire [63:0]sout[3:0];
wire [63:0]s0out[25:0],s1out[11:0],s2out[4:0];
wire cout;
reg [63:0]out;
wire c;


assign sout[0][63:32]=32'd0;
assign sout[2][63:32]=32'd0;
assign sout[3][63:32]=32'd0;



prefix32    p( a,b,opcode[1],opcode[0],cout,sout[0][31:0],clk);
mul         m(a,b,sout[1],c,clk,cout1);
floatmul    f(a,b,sout[2][31:0],clk);
floatadder  fs(a,b,1'b0,sout[3][31:0],clk);


parameter ADD   = 3'b000;
parameter SUB   = 3'b001;
parameter ADDWC = 3'b010;
parameter SUBWB = 3'b011;
parameter MUL   = 3'b100;
parameter FMUL  = 3'b111;
parameter FADD  = 3'b101;



df64 a1(s0out[0],sout[0],clk);
df64 a2(s0out[1],s0out[0],clk);
df64 a3(s0out[2],s0out[1],clk);
df64 a4(s0out[3],s0out[2],clk);

df64 a5(s0out[4],s0out[3],clk);
df64 a6(s0out[5],s0out[4],clk);
df64 a7(s0out[6],s0out[5],clk);
df64 a8(s0out[7],s0out[6],clk);

df64 a9(s0out[8],s0out[7],clk);
df64 a10(s0out[9],s0out[8],clk);
df64 a11(s0out[10],s0out[9],clk);
df64 a12(s0out[11],s0out[10],clk);

df64 a13(s0out[12],s0out[11],clk);
df64 a14(s0out[13],s0out[12],clk);
df64 a15(s0out[14],s0out[13],clk);
df64 a16(s0out[15],s0out[14],clk);

df64 a17(s0out[16],s0out[15],clk);
df64 a18(s0out[17],s0out[16],clk);
df64 a19(s0out[18],s0out[17],clk);
df64 a20(s0out[19],s0out[18],clk);

df64 a21(s0out[20],s0out[19],clk);
df64 a22(s0out[21],s0out[20],clk);
df64 a23(s0out[22],s0out[21],clk);
df64 a24(s0out[23],s0out[22],clk);

df64 a25(s0out[24],s0out[23],clk);
df64 a26(s0out[25],s0out[24],clk);




// Pipelining for mul


df64 b1(s1out[0],sout[1],clk);
df64 b2(s1out[1],s1out[0],clk);
df64 b3(s1out[2],s1out[1],clk);
df64 b4(s1out[3],s1out[2],clk);

df64 b5(s1out[4],s1out[3],clk);
df64 b6(s1out[5],s1out[4],clk);
df64 b7(s1out[6],s1out[5],clk);
df64 b8(s1out[7],s1out[6],clk);

df64 b9(s1out[8],s1out[7],clk);
df64 b10(s1out[9],s1out[8],clk);
df64 b11(s1out[10],s1out[9],clk);
df64 b12(s1out[11],s1out[10],clk);


// pipelining for float mul
df64 c1(s2out[0],sout[2],clk);
df64 c2(s2out[1],s2out[0],clk);
df64 c3(s2out[2],s2out[1],clk);
df64 c4(s2out[3],s2out[2],clk);
df64 c5(s2out[4],s2out[3],clk);



 always @(posedge clk)
    begin
    
    case(opcode)
        ADD    : out <= s0out[25]; //Addition
        SUB    : out <= s0out[25]; //Substrction
        ADDWC  : out <= s0out[25]; //Addition with carry
        SUBWB  : out <= s0out[25]; //Substraction with borrow
        MUL    : out <= s1out[11]; //multiplier        //39 clk cycles
        FMUL   : out <= s2out[4]; //float multiplier  //57 clk cycles
        FADD   : out <= sout[3]; //float adder       //65 clk cycles
        default: out <= 64'd0;
    endcase
end




endmodule
