//`include "df.v"
`include "dff.v"
`include "dot.v"
`include "circle.v"


module prefix32( x,y,cin,m,cout,sout,clk);

input cin,clk,m;
input [31:0]x,y;
output cout;
output [31:0]sout;

wire [31:0]p,g,a,p1f,p2f,p3f,p4f,p5f,y1;

wire [15:0]l1gout,l2gout,l3gout,l4gout,l5gout,l1goutf,l2goutf,l3goutf,l4goutf,l5goutf,gf,af;
wire [14:0]l1aout,l1aoutf;
wire [13:0]l2aout,l2aoutf;
wire [11:0]l3aout,l3aoutf;
wire [7:0]l4aout,l4aoutf,g2f,a2f,l1gout2f,l2gout2f,l3gout2f,l4gout2f;
wire [6:0]l1aout2f;
wire [5:0]l2aout2f,l3aout2f;
wire [4:0]cf;
wire [3:0]l1gout3f,l2gout3f,g3f,a3f,l3gout3f;
wire [2:0]l2gout4f,l1aout3f;
wire [1:0]g4f,a4f,l2aout4f,l2aout3f,l1gout4f;
wire c,l1gout5f,l1aout4f;




 assign y1[0]= m^y[0];
 assign y1[1]= m^y[1];
 assign y1[2]= m^y[2];
 assign y1[3]= m^y[3];
 
 assign y1[4]= m^y[4];
 assign y1[5]= m^y[5];
 assign y1[6]= m^y[6];
 assign y1[7]= m^y[7];
 
 assign y1[8]= m^y[8];
 assign y1[9]= m^y[9];
 assign y1[10]= m^y[10];
 assign y1[11]= m^y[11];
 
 assign y1[12]= m^y[12];
 assign y1[13]= m^y[13];
 assign y1[14]= m^y[14];
 assign y1[15]= m^y[15];
 
 assign y1[16]= m^y[16];
 assign y1[17]= m^y[17];
 assign y1[18]= m^y[18];
 assign y1[19]= m^y[19];
 
 assign y1[20]= m^y[20];
 assign y1[21]= m^y[21];
 assign y1[22]= m^y[22];
 assign y1[23]= m^y[23];
 
 assign y1[24]= m^y[24];
 assign y1[25]= m^y[25];
 assign y1[26]= m^y[26];
 assign y1[27]= m^y[27];
 
 assign y1[28]= m^y[28];
 assign y1[29]= m^y[29];
 assign y1[30]= m^y[30];
 assign y1[31]= m^y[31];










assign p=x^y1;
assign g=x&y1;
assign a=p | g;


// LEVEL 1
dot d11(g[0],cin,a[0],l1gout[0]);
circle c11(g[2],g[1],a[2],a[1],l1gout[1],l1aout[0]);
circle c12(g[4],g[3],a[4],a[3],l1gout[2],l1aout[1]);
circle c13(g[6],g[5],a[6],a[5],l1gout[3],l1aout[2]);


circle c14(g[8],g[7],a[8],a[7],l1gout[4],l1aout[3]);
circle c15(g[10],g[9],a[10],a[9],l1gout[5],l1aout[4]);
circle c16(g[12],g[11],a[12],a[11],l1gout[6],l1aout[5]);
circle c17(g[14],g[13],a[14],a[13],l1gout[7],l1aout[6]);

circle c18(g[16],g[15],a[16],a[15],l1gout[8],l1aout[7]);
circle c19(g[18],g[17],a[18],a[17],l1gout[9],l1aout[8]);
circle c110(g[20],g[19],a[20],a[19],l1gout[10],l1aout[9]);
circle c111(g[22],g[21],a[22],a[21],l1gout[11],l1aout[10]);


circle c112(g[24],g[23],a[24],a[23],l1gout[12],l1aout[11]);
circle c113(g[26],g[25],a[26],a[25],l1gout[13],l1aout[12]);
circle c114(g[28],g[27],a[28],a[27],l1gout[14],l1aout[13]);
circle c115(g[30],g[29],a[30],a[29],l1gout[15],l1aout[14]);


//LEVEL 1 FF

dff dfp10(p1f[0],cf[0],p[0],cin,clk);
df  dfp11(p1f[1],p[1],clk);
df  dfp12(p1f[2],p[2],clk);
df  dfp13(p1f[3],p[3],clk);

df  dfp14(p1f[4],p[4],clk);
df  dfp15(p1f[5],p[5],clk);
df  dfp16(p1f[6],p[6],clk);
df  dfp17(p1f[7],p[7],clk);

df  dfp18(p1f[8],p[8],clk);
df  dfp19(p1f[9],p[9],clk);
df  dfp110(p1f[10],p[10],clk);
df  dfp111(p1f[11],p[11],clk);

df  dfp112(p1f[12],p[12],clk);
df  dfp113(p1f[13],p[13],clk);
df  dfp114(p1f[14],p[14],clk);
df  dfp115(p1f[15],p[15],clk);

df  dfp116(p1f[16],p[16],clk);
df  dfp117(p1f[17],p[17],clk);
df  dfp118(p1f[18],p[18],clk);
df  dfp119(p1f[19],p[19],clk);

df  dfp120(p1f[20],p[20],clk);
df  dfp121(p1f[21],p[21],clk);
df  dfp122(p1f[22],p[22],clk);
df  dfp123(p1f[23],p[23],clk);

df  dfp124(p1f[24],p[24],clk);
df  dfp125(p1f[25],p[25],clk);
df  dfp126(p1f[26],p[26],clk);
df  dfp127(p1f[27],p[27],clk);

df  dfp128(p1f[28],p[28],clk);
df  dfp129(p1f[29],p[29],clk);
df  dfp130(p1f[30],p[30],clk);
df  dfp131(p1f[31],p[31],clk);




df  df10(l1goutf[0],l1gout[0],clk);
dff df11(gf[0],af[0],g[1],a[1],clk);
dff df12(l1goutf[1],l1aoutf[0],l1gout[1],l1aout[0],clk);
dff df13(gf[1],af[1],g[3],a[3],clk);

dff df14(l1goutf[2],l1aoutf[1],l1gout[2],l1aout[1],clk);
dff df15(gf[2],af[2],g[5],a[5],clk);
dff df16(l1goutf[3],l1aoutf[2],l1gout[3],l1aout[2],clk);
dff df17(gf[3],af[3],g[7],a[7],clk);

dff df18(l1goutf[4],l1aoutf[3],l1gout[4],l1aout[3],clk);
dff df19(gf[4],af[4],g[9],a[9],clk);
dff df110(l1goutf[5],l1aoutf[4],l1gout[5],l1aout[4],clk);
dff df111(gf[5],af[5],g[11],a[11],clk);

dff df112(l1goutf[6],l1aoutf[5],l1gout[6],l1aout[5],clk);
dff df113(gf[6],af[6],g[13],a[13],clk);
dff df114(l1goutf[7],l1aoutf[6],l1gout[7],l1aout[6],clk);
dff df115(gf[7],af[7],g[15],a[15],clk);

dff df116(l1goutf[8],l1aoutf[7],l1gout[8],l1aout[7],clk);
dff df117(gf[8],af[8],g[17],a[17],clk);
dff df118(l1goutf[9],l1aoutf[8],l1gout[9],l1aout[8],clk);
dff df119(gf[9],af[9],g[19],a[19],clk);

dff df120(l1goutf[10],l1aoutf[9],l1gout[10],l1aout[9],clk);
dff df121(gf[10],af[10],g[21],a[21],clk);
dff df122(l1goutf[11],l1aoutf[10],l1gout[11],l1aout[10],clk);
dff df123(gf[11],af[11],g[23],a[23],clk);

dff df124(l1goutf[12],l1aoutf[11],l1gout[12],l1aout[11],clk);
dff df125(gf[12],af[12],g[25],a[25],clk);
dff df126(l1goutf[13],l1aoutf[12],l1gout[13],l1aout[12],clk);
dff d2127(gf[13],af[13],g[27],a[27],clk);

dff df128(l1goutf[14],l1aoutf[13],l1gout[14],l1aout[13],clk);
dff df129(gf[14],af[14],g[29],a[29],clk);
dff df130(l1goutf[15],l1aoutf[14],l1gout[15],l1aout[14],clk);
dff df131(gf[15],af[15],g[31],a[31],clk);




//LEVEL 2

dot d21(gf[0],l1goutf[0],af[0],l2gout[0]);
dot d22(l1goutf[1],l1goutf[0],l1aoutf[0],l2gout[1]);
circle c21(gf[2],l1goutf[2],af[2],l1aoutf[1],l2gout[2],l2aout[0]);
circle c22(l1goutf[3],l1goutf[2],l1aoutf[2],l1aoutf[1],l2gout[3],l2aout[1]);

circle c23(gf[4],l1goutf[4],af[4],l1aoutf[3],l2gout[4],l2aout[2]);
circle c24(l1goutf[5],l1goutf[4],l1aoutf[4],l1aoutf[3],l2gout[5],l2aout[3]);
circle c25(gf[6],l1goutf[6],af[6],l1aoutf[5],l2gout[6],l2aout[4]);
circle c26(l1goutf[7],l1goutf[6],l1aoutf[6],l1aoutf[5],l2gout[7],l2aout[5]);

circle c27(gf[8],l1goutf[8],af[8],l1aoutf[7],l2gout[8],l2aout[6]);
circle c28(l1goutf[9],l1goutf[8],l1aoutf[8],l1aoutf[7],l2gout[9],l2aout[7]);
circle c29(gf[10],l1goutf[10],af[10],l1aoutf[9],l2gout[10],l2aout[8]);
circle c210(l1goutf[11],l1goutf[10],l1aoutf[10],l1aoutf[9],l2gout[11],l2aout[9]);

circle c211(gf[12],l1goutf[12],af[12],l1aoutf[11],l2gout[12],l2aout[10]);
circle c212(l1goutf[13],l1goutf[12],l1aoutf[12],l1aoutf[11],l2gout[13],l2aout[11]);
circle c213(gf[14],l1goutf[14],af[14],l1aoutf[13],l2gout[14],l2aout[12]);
circle c214(l1goutf[15],l1goutf[14],l1aoutf[14],l1aoutf[13],l2gout[15],l2aout[13]);



//LEVEL 2  FF



df  df20(l1gout2f[0],l1goutf[0],clk);
df  df21(l2goutf[0],l2gout[0],clk);
df  df22(l2goutf[1],l2gout[1],clk);
dff df23(g2f[0],a2f[0],gf[1],af[1],clk);

dff df24(l1gout2f[1],l1aout2f[0],l1goutf[2],l1aoutf[1],clk);
dff df25(l2goutf[2],l2aoutf[0],l2gout[2],l2aout[0],clk);
dff df26(l2goutf[3],l2aoutf[1],l2gout[3],l2aout[1],clk);
dff df27(g2f[1],a2f[1],gf[3],af[3],clk);

dff df28(l1gout2f[2],l1aout2f[1],l1goutf[4],l1aoutf[3],clk);
dff df29(l2goutf[4],l2aoutf[2],l2gout[4],l2aout[2],clk);
dff df210(l2goutf[5],l2aoutf[3],l2gout[5],l2aout[3],clk);
dff df211(g2f[2],a2f[2],gf[5],af[5],clk);

dff df212(l1gout2f[3],l1aout2f[2],l1goutf[6],l1aoutf[5],clk);
dff df213(l2goutf[6],l2aoutf[4],l2gout[6],l2aout[4],clk);
dff df214(l2goutf[7],l2aoutf[5],l2gout[7],l2aout[5],clk);
dff df215(g2f[3],a2f[3],gf[7],af[7],clk);

dff df216(l1gout2f[4],l1aout2f[3],l1goutf[8],l1aoutf[7],clk);
dff df217(l2goutf[8],l2aoutf[6],l2gout[8],l2aout[6],clk);
dff df218(l2goutf[9],l2aoutf[7],l2gout[9],l2aout[7],clk);
dff df219(g2f[4],a2f[4],gf[9],af[9],clk);

dff df220(l1gout2f[5],l1aout2f[4],l1goutf[10],l1aoutf[9],clk);
dff df221(l2goutf[10],l2aoutf[8],l2gout[10],l2aout[8],clk);
dff df222(l2goutf[11],l2aoutf[9],l2gout[11],l2aout[9],clk);
dff df223(g2f[5],a2f[5],gf[11],af[11],clk);

dff df224(l1gout2f[6],l1aout2f[5],l1goutf[12],l1aoutf[11],clk);
dff df225(l2goutf[12],l2aoutf[10],l2gout[12],l2aout[10],clk);
dff df226(l2goutf[13],l2aoutf[11],l2gout[13],l2aout[11],clk);
dff df227(g2f[6],a2f[6],gf[13],af[13],clk);

dff df228(l1gout2f[7],l1aout2f[6],l1goutf[14],l1aoutf[13],clk);
dff df229(l2goutf[14],l2aoutf[12],l2gout[14],l2aout[12],clk);
dff df230(l2goutf[15],l2aoutf[13],l2gout[15],l2aout[13],clk);
dff df231(g2f[7],a2f[7],gf[15],af[15],clk);







dff dfp20(p2f[0],cf[1],p1f[0],cf[0],clk);
df  dfp21(p2f[1],p1f[1],clk);
df  dfp22(p2f[2],p1f[2],clk);
df  dfp23(p2f[3],p1f[3],clk);

df  dfp24(p2f[4],p1f[4],clk);
df  dfp25(p2f[5],p1f[5],clk);
df  dfp26(p2f[6],p1f[6],clk);
df  dfp27(p2f[7],p1f[7],clk);

df  dfp28(p2f[8],p1f[8],clk);
df  dfp29(p2f[9],p1f[9],clk);
df  dfp210(p2f[10],p1f[10],clk);
df  dfp211(p2f[11],p1f[11],clk);

df  dfp212(p2f[12],p1f[12],clk);
df  dfp213(p2f[13],p1f[13],clk);
df  dfp214(p2f[14],p1f[14],clk);
df  dfp215(p2f[15],p1f[15],clk);

df  dfp216(p2f[16],p1f[16],clk);
df  dfp217(p2f[17],p1f[17],clk);
df  dfp218(p2f[18],p1f[18],clk);
df  dfp219(p2f[19],p1f[19],clk);

df  dfp220(p2f[20],p1f[20],clk);
df  dfp221(p2f[21],p1f[21],clk);
df  dfp222(p2f[22],p1f[22],clk);
df  dfp223(p2f[23],p1f[23],clk);

df  dfp224(p2f[24],p1f[24],clk);
df  dfp225(p2f[25],p1f[25],clk);
df  dfp226(p2f[26],p1f[26],clk);
df  dfp227(p2f[27],p1f[27],clk);

df  dfp228(p2f[28],p1f[28],clk);
df  dfp229(p2f[29],p1f[29],clk);
df  dfp230(p2f[30],p1f[30],clk);
df  dfp231(p2f[31],p1f[31],clk);



//LEVEL 3

dot d31(g2f[0],l2goutf[1],a2f[0],l3gout[0]);
dot d32(l1gout2f[1],l2goutf[1],l1aout2f[0],l3gout[1]);
dot d33(l2goutf[2],l2goutf[1],l2aoutf[0],l3gout[2]);
dot d34(l2goutf[3],l2goutf[1],l2aoutf[1],l3gout[3]);

circle c31(g2f[2],l2goutf[5],a2f[2],l2aoutf[3],l3gout[4],l3aout[0]);
circle c32(l1gout2f[3],l2goutf[5],l1aout2f[2],l2aoutf[3],l3gout[5],l3aout[1]);
circle c33(l2goutf[6],l2goutf[5],l2aoutf[4],l2aoutf[3],l3gout[6],l3aout[2]);
circle c34(l2goutf[7],l2goutf[5],l2aoutf[5],l2aoutf[3],l3gout[7],l3aout[3]);

circle c35(g2f[4],l2goutf[9],a2f[4],l2aoutf[7],l3gout[8],l3aout[4]);
circle c36(l1gout2f[5],l2goutf[9],l1aout2f[4],l2aoutf[7],l3gout[9],l3aout[5]);
circle c37(l2goutf[10],l2goutf[9],l2aoutf[8],l2aoutf[7],l3gout[10],l3aout[6]);
circle c38(l2goutf[11],l2goutf[9],l2aoutf[9],l2aoutf[7],l3gout[11],l3aout[7]);

circle c39(g2f[6],l2goutf[13],a2f[6],l2aoutf[11],l3gout[12],l3aout[8]);
circle c310(l1gout2f[7],l2goutf[13],l1aout2f[6],l2aoutf[11],l3gout[13],l3aout[9]);
circle c311(l2goutf[14],l2goutf[13],l2aoutf[12],l2aoutf[11],l3gout[14],l3aout[10]);
circle c312(l2goutf[15],l2goutf[13],l2aoutf[13],l2aoutf[11],l3gout[15],l3aout[11]);



//LEVEL 3  FF

df  df30(l1gout3f[0],l1gout2f[0],clk);
df  df31(l2gout2f[0],l2goutf[0],clk);
df  df32(l2gout2f[1],l2goutf[1],clk);
df  df33(l3goutf[0],l3gout[0],clk);

df  df34(l3goutf[1],l3gout[1],clk);
df  df35(l3goutf[2],l3gout[2],clk);
df  df36(l3goutf[3],l3gout[3],clk);
dff df37(g3f[0],a3f[0],g2f[1],a2f[1],clk);

dff df38(l1gout3f[1],l1aout3f[0],l1gout2f[2],l1aout2f[1],clk);
dff df39(l2gout2f[2],l2aout2f[0],l2goutf[4],l2aoutf[2],clk);
dff df310(l2gout2f[3],l2aout2f[1],l2goutf[5],l2aoutf[3],clk);
dff df311(l3goutf[4],l3aoutf[0],l3gout[4],l3aout[0],clk);

dff df312(l3goutf[5],l3aoutf[1],l3gout[5],l3aout[1],clk);
dff df313(l3goutf[6],l3aoutf[2],l3gout[6],l3aout[2],clk);
dff df314(l3goutf[7],l3aoutf[3],l3gout[7],l3aout[3],clk);
dff df315(g3f[1],a3f[1],g2f[3],a2f[3],clk);
//
dff df316(l1gout3f[2],l1aout3f[1],l1gout2f[4],l1aout2f[3],clk);
dff df317(l2gout2f[4],l2aout2f[2],l2goutf[8],l2aoutf[6],clk);
dff df318(l2gout2f[5],l2aout2f[3],l2goutf[9],l2aoutf[7],clk);
dff df319(l3goutf[8],l3aoutf[4],l3gout[8],l3aout[4],clk);

dff df320(l3goutf[9],l3aoutf[5],l3gout[9],l3aout[5],clk);
dff df321(l3goutf[10],l3aoutf[6],l3gout[10],l3aout[6],clk);
dff df322(l3goutf[11],l3aoutf[7],l3gout[11],l3aout[7],clk);
dff df323(g3f[2],a3f[2],g2f[5],a2f[5],clk);
//
dff df324(l1gout3f[3],l1aout3f[2],l1gout2f[6],l1aout2f[5],clk);
dff df325(l2gout2f[6],l2aout2f[4],l2goutf[12],l2aoutf[10],clk);
dff df326(l2gout2f[7],l2aout2f[5],l2goutf[13],l2aoutf[11],clk);
dff df327(l3goutf[12],l3aoutf[8],l3gout[12],l3aout[8],clk);

dff df328(l3goutf[13],l3aoutf[9],l3gout[13],l3aout[9],clk);
dff df329(l3goutf[14],l3aoutf[10],l3gout[14],l3aout[10],clk);
dff df330(l3goutf[15],l3aoutf[11],l3gout[15],l3aout[11],clk);
dff df331(g3f[3],a3f[3],g2f[7],a2f[7],clk);







dff dfp30(p3f[0],cf[2],p2f[0],cf[1],clk);
df  dfp31(p3f[1],p2f[1],clk);
df  dfp32(p3f[2],p2f[2],clk);
df  dfp33(p3f[3],p2f[3],clk);

df  dfp34(p3f[4],p2f[4],clk);
df  dfp35(p3f[5],p2f[5],clk);
df  dfp36(p3f[6],p2f[6],clk);
df  dfp37(p3f[7],p2f[7],clk);

df  dfp38(p3f[8],p2f[8],clk);
df  dfp39(p3f[9],p2f[9],clk);
df  dfp310(p3f[10],p2f[10],clk);
df  dfp311(p3f[11],p2f[11],clk);

df  dfp312(p3f[12],p2f[12],clk);
df  dfp313(p3f[13],p2f[13],clk);
df  dfp314(p3f[14],p2f[14],clk);
df  dfp315(p3f[15],p2f[15],clk);

df  dfp316(p3f[16],p2f[16],clk);
df  dfp317(p3f[17],p2f[17],clk);
df  dfp318(p3f[18],p2f[18],clk);
df  dfp319(p3f[19],p2f[19],clk);

df  dfp320(p3f[20],p2f[20],clk);
df  dfp321(p3f[21],p2f[21],clk);
df  dfp322(p3f[22],p2f[22],clk);
df  dfp323(p3f[23],p2f[23],clk);

df  dfp324(p3f[24],p2f[24],clk);
df  dfp325(p3f[25],p2f[25],clk);
df  dfp326(p3f[26],p2f[26],clk);
df  dfp327(p3f[27],p2f[27],clk);

df  dfp328(p3f[28],p2f[28],clk);
df  dfp329(p3f[29],p2f[29],clk);
df  dfp330(p3f[30],p2f[30],clk);
df  dfp331(p3f[31],p2f[31],clk);








//LEVEL 4

dot d41(g3f[0],l3goutf[3],a3f[0],l4gout[0]);
dot d42(l1gout3f[1],l3goutf[3],l1aout3f[0],l4gout[1]);
dot d43(l2gout2f[2],l3goutf[3],l2aout2f[0],l4gout[2]);
dot d44(l2gout2f[3],l3goutf[3],l2aout2f[1],l4gout[3]);

dot d45(l3goutf[4],l3goutf[3],l3aoutf[0],l4gout[4]);
dot d46(l3goutf[5],l3goutf[3],l3aoutf[1],l4gout[5]);
dot d47(l3goutf[6],l3goutf[3],l3aoutf[2],l4gout[6]);
dot d48(l3goutf[7],l3goutf[3],l3aoutf[3],l4gout[7]);


circle c41(g3f[2],l3goutf[11],a3f[2],l3aoutf[7],l4gout[8],l4aout[0]);
circle c42(l1gout3f[3],l3goutf[11],l1aout3f[2],l3aoutf[7],l4gout[9],l4aout[1]);
circle c43(l2gout2f[6],l3goutf[11],l2aout2f[4],l3aoutf[7],l4gout[10],l4aout[2]);
circle c44(l2gout2f[7],l3goutf[11],l2aout2f[5],l3aoutf[7],l4gout[11],l4aout[3]);

circle c45(l3goutf[12],l3goutf[11],l3aoutf[8],l3aoutf[7],l4gout[12],l4aout[4]);
circle c46(l3goutf[13],l3goutf[11],l3aoutf[9],l3aoutf[7],l4gout[13],l4aout[5]);
circle c47(l3goutf[14],l3goutf[11],l3aoutf[10],l3aoutf[7],l4gout[14],l4aout[6]);
circle c48(l3goutf[15],l3goutf[11],l3aoutf[11],l3aoutf[7],l4gout[15],l4aout[7]);




//LEVEL 4  FF


df  df40(l1gout4f[0],l1gout3f[0],clk);
df  df41(l2gout3f[0],l2gout2f[0],clk);
df  df42(l2gout3f[1],l2gout2f[1],clk);
df  df43(l3gout2f[0],l3goutf[0],clk);

df  df44(l3gout2f[1],l3goutf[1],clk);
df  df45(l3gout2f[2],l3goutf[2],clk);
df  df46(l3gout2f[3],l3goutf[3],clk);
df  df47(l4goutf[0],l4gout[0],clk);

df  df48 (l4goutf[1],l4gout[1],clk);
df  df49 (l4goutf[2],l4gout[2],clk);
df  df410(l4goutf[3],l4gout[3],clk);
df  df411(l4goutf[4],l4gout[4],clk);

df  df412(l4goutf[5],l4gout[5],clk);
df  df413(l4goutf[6],l4gout[6],clk);
df  df414(l4goutf[7],l4gout[7],clk);
dff df415(g4f[0],a4f[0],g3f[1],a3f[1],clk);

dff df416(l1gout4f[1],l1aout4f,l1gout3f[2],l1aout3f[1],clk);
dff df417(l2gout3f[2],l2aout3f[0],l2gout2f[4],l2aout2f[2],clk);
dff df418(l2gout3f[3],l2aout3f[1],l2gout2f[5],l2aout2f[3],clk);
dff df419(l3gout2f[4],l3aout2f[0],l3goutf[8],l3aoutf[4],clk);

dff df420(l3gout2f[5],l3aout2f[1],l3goutf[9], l3aoutf[5],clk);
dff df421(l3gout2f[6],l3aout2f[2],l3goutf[10],l3aoutf[6],clk);
dff df422(l3gout2f[7],l3aout2f[3],l3goutf[11],l3aoutf[7],clk);
dff df423(l4goutf[8],l4aoutf[0],l4gout[8],l4aout[0],clk);

dff df424(l4goutf[9],l4aoutf[1],l4gout[9],l4aout[1],clk);
dff df425(l4goutf[10],l4aoutf[2],l4gout[10],l4aout[2],clk);
dff df426(l4goutf[11],l4aoutf[3],l4gout[11],l4aout[3],clk);
dff df427(l4goutf[12],l4aoutf[4],l4gout[12],l4aout[4],clk);

dff df428(l4goutf[13],l4aoutf[5],l4gout[13],l4aout[5],clk);
dff df429(l4goutf[14],l4aoutf[6],l4gout[14],l4aout[6],clk);
dff df430(l4goutf[15],l4aoutf[7],l4gout[15],l4aout[7],clk);
dff df431(g4f[1],a4f[1],g3f[3],a3f[3],clk);







dff dfp40(p4f[0],cf[3],p3f[0],cf[2],clk);
df  dfp41(p4f[1],p3f[1],clk);
df  dfp42(p4f[2],p3f[2],clk);
df  dfp43(p4f[3],p3f[3],clk);

df  dfp44(p4f[4],p3f[4],clk);
df  dfp45(p4f[5],p3f[5],clk);
df  dfp46(p4f[6],p3f[6],clk);
df  dfp47(p4f[7],p3f[7],clk);

df  dfp48(p4f[8],p3f[8],clk);
df  dfp49(p4f[9],p3f[9],clk);
df  dfp410(p4f[10],p3f[10],clk);
df  dfp411(p4f[11],p3f[11],clk);

df  dfp412(p4f[12],p3f[12],clk);
df  dfp413(p4f[13],p3f[13],clk);
df  dfp414(p4f[14],p3f[14],clk);
df  dfp415(p4f[15],p3f[15],clk);

df  dfp416(p4f[16],p3f[16],clk);
df  dfp417(p4f[17],p3f[17],clk);
df  dfp418(p4f[18],p3f[18],clk);
df  dfp419(p4f[19],p3f[19],clk);

df  dfp420(p4f[20],p3f[20],clk);
df  dfp421(p4f[21],p3f[21],clk);
df  dfp422(p4f[22],p3f[22],clk);
df  dfp423(p4f[23],p3f[23],clk);

df  dfp424(p4f[24],p3f[24],clk);
df  dfp425(p4f[25],p3f[25],clk);
df  dfp426(p4f[26],p3f[26],clk);
df  dfp427(p4f[27],p3f[27],clk);

df  dfp428(p4f[28],p3f[28],clk);
df  dfp429(p4f[29],p3f[29],clk);
df  dfp430(p4f[30],p3f[30],clk);
df  dfp431(p4f[31],p3f[31],clk);









//  LEVEL 5

dot d51(g4f[0],l4goutf[7],a4f[0],l5gout[0]);
dot d52(l1gout4f[1],l4goutf[7],l1aout4f,l5gout[1]);
dot d53(l2gout3f[2],l4goutf[7],l2aout3f[0],l5gout[2]);
dot d54(l2gout3f[3],l4goutf[7],l2aout3f[1],l5gout[3]);

dot d55(l3gout2f[4],l4goutf[7],l3aout2f[0],l5gout[4]);
dot d56(l3gout2f[5],l4goutf[7],l3aout2f[1],l5gout[5]);
dot d57(l3gout2f[6],l4goutf[7],l3aout2f[2],l5gout[6]);
dot d58(l3gout2f[7],l4goutf[7],l3aout2f[3],l5gout[7]);

dot d59(l4goutf[8],l4goutf[7],l4aoutf[0],l5gout[8]);
dot d510(l4goutf[9],l4goutf[7],l4aoutf[1],l5gout[9]);
dot d511(l4goutf[10],l4goutf[7],l4aoutf[2],l5gout[10]);
dot d512(l4goutf[11],l4goutf[7],l4aoutf[3],l5gout[11]);

dot d513(l4goutf[12],l4goutf[7],l4aoutf[4],l5gout[12]);
dot d514(l4goutf[13],l4goutf[7],l4aoutf[5],l5gout[13]);
dot d515(l4goutf[14],l4goutf[7],l4aoutf[6],l5gout[14]);
dot d516(l4goutf[15],l4goutf[7],l4aoutf[7],l5gout[15]);







//LEVEL 5  FF

df  df50(l1gout5f,l1gout4f[0],clk);
df  df51(l2gout4f[0],l2gout3f[0],clk);
df  df52(l2gout4f[1],l2gout3f[1],clk);
df  df53(l3gout3f[0],l3gout2f[0],clk);

df  df54(l3gout3f[1],l3gout2f[1],clk);
df  df55(l3gout3f[2],l3gout2f[2],clk);
df  df56(l3gout3f[3],l3gout2f[3],clk);
df  df57(l4gout2f[0],l4goutf[0],clk);

df df58 (l4gout2f[1],l4goutf[1],clk);
df df59 (l4gout2f[2],l4goutf[2],clk);
df df510(l4gout2f[3],l4goutf[3],clk);
df df511(l4gout2f[4],l4goutf[4],clk);

df df512(l4gout2f[5],l4goutf[5],clk);
df df513(l4gout2f[6],l4goutf[6],clk);
df df514(l4gout2f[7],l4goutf[7],clk);
df df515(l5goutf[0],l5gout[0],clk);

df df516(l5goutf[1],l5gout[1],clk);
df df517(l5goutf[2],l5gout[2],clk);
df df518(l5goutf[3],l5gout[3],clk);
df df519(l5goutf[4],l5gout[4],clk);

df df520(l5goutf[5],l5gout[5],clk);
df df521(l5goutf[6],l5gout[6],clk);
df df522(l5goutf[7],l5gout[7],clk);
df df523(l5goutf[8],l5gout[8],clk);

df df524(l5goutf[9], l5gout[9],clk);
df df525(l5goutf[10],l5gout[10],clk);
df df526(l5goutf[11],l5gout[11],clk);
df df527(l5goutf[12],l5gout[12],clk);

df df528(l5goutf[13],l5gout[13],clk);
df df529(l5goutf[14],l5gout[14],clk);
df df530(l5goutf[15],l5gout[15],clk);
//df df531(cout,c,clk);







dff dfp50(p5f[0],cf[4],p4f[0],cf[3],clk);
df  dfp51(p5f[1],p4f[1],clk);
df  dfp52(p5f[2],p4f[2],clk);
df  dfp53(p5f[3],p4f[3],clk);

df  dfp54(p5f[4],p4f[4],clk);
df  dfp55(p5f[5],p4f[5],clk);
df  dfp56(p5f[6],p4f[6],clk);
df  dfp57(p5f[7],p4f[7],clk);

df  dfp58(p5f[8],p4f[8],clk);
df  dfp59(p5f[9],p4f[9],clk);
df  dfp510(p5f[10],p4f[10],clk);
df  dfp511(p5f[11],p4f[11],clk);

df  dfp512(p5f[12],p4f[12],clk);
df  dfp513(p5f[13],p4f[13],clk);
df  dfp514(p5f[14],p4f[14],clk);
df  dfp515(p5f[15],p4f[15],clk);

df  dfp516(p5f[16],p4f[16],clk);
df  dfp517(p5f[17],p4f[17],clk);
df  dfp518(p5f[18],p4f[18],clk);
df  dfp519(p5f[19],p4f[19],clk);

df  dfp520(p5f[20],p4f[20],clk);
df  dfp521(p5f[21],p4f[21],clk);
df  dfp522(p5f[22],p4f[22],clk);
df  dfp523(p5f[23],p4f[23],clk);

df  dfp524(p5f[24],p4f[24],clk);
df  dfp525(p5f[25],p4f[25],clk);
df  dfp526(p5f[26],p4f[26],clk);
df  dfp527(p5f[27],p4f[27],clk);

df  dfp528(p5f[28],p4f[28],clk);
df  dfp529(p5f[29],p4f[29],clk);
df  dfp530(p5f[30],p4f[30],clk);
df  dfp531(p5f[31],p4f[31],clk);



// COUT

dot cout1(g4f[1],l5goutf[15],a4f[1],cout);


assign sout[0]= cf[4]^p5f[0];
assign sout[1]= l1gout5f^p5f[1];
assign sout[2]= l2gout4f[0]^p5f[2];
assign sout[3]= l2gout4f[1]^p5f[3];

assign sout[4]= l3gout3f[0]^p5f[4];
assign sout[5]= l3gout3f[1]^p5f[5];
assign sout[6]= l3gout3f[2]^p5f[6];
assign sout[7]= l3gout3f[3]^p5f[7];

assign sout[8]= l4gout2f[0]^p5f[8];
assign sout[9]= l4gout2f[1]^p5f[9];
assign sout[10]= l4gout2f[2]^p5f[10];
assign sout[11]= l4gout2f[3]^p5f[11];

assign sout[12]= l4gout2f[4]^p5f[12];
assign sout[13]= l4gout2f[5]^p5f[13];
assign sout[14]= l4gout2f[6]^p5f[14];
assign sout[15]= l4gout2f[7]^p5f[15];

assign sout[16]= l5goutf[0]^p5f[16];
assign sout[17]= l5goutf[1]^p5f[17];
assign sout[18]= l5goutf[2]^p5f[18];
assign sout[19]= l5goutf[3]^p5f[19];

assign sout[20]= l5goutf[4]^p5f[20];
assign sout[21]= l5goutf[5]^p5f[21];
assign sout[22]= l5goutf[6]^p5f[22];
assign sout[23]= l5goutf[7]^p5f[23];

assign sout[24]= l5goutf[8]^p5f[24];
assign sout[25]= l5goutf[9]^p5f[25];
assign sout[26]= l5goutf[10]^p5f[26];
assign sout[27]= l5goutf[11]^p5f[27];

assign sout[28]= l5goutf[12]^p5f[28];
assign sout[29]= l5goutf[13]^p5f[29];
assign sout[30]= l5goutf[14]^p5f[30];
assign sout[31]= l5goutf[15]^p5f[31];




endmodule
