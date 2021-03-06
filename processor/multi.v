//`include "df32.v"
//`include "df64.v"
`include "csa.v"
//`include "pipelinedprefix.v"


module mul(a,b,m,c,clk,cout1);

input [31:0]a,b;
wire [63:0]p[31:0];
wire [63:0]q[31:0];

input clk;
output c,cout1;
output [63:0]m;
//wire cout1;

wire [63:0]l1out[21:0];
wire [63:0]l2out[14:0];
wire [63:0]l3out[10:0];
wire [63:0]l4out[6:0];
wire [63:0]l5out[4:0];
wire [63:0]l6out[3:0];
wire [63:0]l7out[2:0];
wire [63:0]l8out[1:0];

wire [31:0]preff[4:0];
wire [31:0]pref[4:0];
wire [31:0]pref1[4:0];

//generate partial products

assign p[0][0]=a[0]&b[0];
assign p[0][1]=a[1]&b[0];
assign p[0][2]=a[2]&b[0];
assign p[0][3]=a[3]&b[0];

assign p[0][4]=a[4]&b[0];
assign p[0][5]=a[5]&b[0];
assign p[0][6]=a[6]&b[0];
assign p[0][7]=a[7]&b[0];

assign p[0][8]=a[8]&b[0];
assign p[0][9]=a[9]&b[0];
assign p[0][10]=a[10]&b[0];
assign p[0][11]=a[11]&b[0];

assign p[0][12]=a[12]&b[0];
assign p[0][13]=a[13]&b[0];
assign p[0][14]=a[14]&b[0];
assign p[0][15]=a[15]&b[0];

assign p[0][16]=a[16]&b[0];
assign p[0][17]=a[17]&b[0];
assign p[0][18]=a[18]&b[0];
assign p[0][19]=a[19]&b[0];

assign p[0][20]=a[20]&b[0];
assign p[0][21]=a[21]&b[0];
assign p[0][22]=a[22]&b[0];
assign p[0][23]=a[23]&b[0];

assign p[0][24]=a[24]&b[0];
assign p[0][25]=a[25]&b[0];
assign p[0][26]=a[26]&b[0];
assign p[0][27]=a[27]&b[0];

assign p[0][28]=a[28]&b[0];
assign p[0][29]=a[29]&b[0];
assign p[0][30]=a[30]&b[0];
assign p[0][31]=a[31]&b[0];

assign p[0][63:32]=32'd0;



//p1

assign p[1][0]=0;
assign p[1][1]=a[0]&b[1];
assign p[1][2]=a[1]&b[1];
assign p[1][3]=a[2]&b[1];

assign p[1][4]=a[3]&b[1];
assign p[1][5]=a[4]&b[1];
assign p[1][6]=a[5]&b[1];
assign p[1][7]=a[6]&b[1];

assign p[1][8]=a[7]&b[1];
assign p[1][9]=a[8]&b[1];
assign p[1][10]=a[9]&b[1];
assign p[1][11]=a[10]&b[1];

assign p[1][12]=a[11]&b[1];
assign p[1][13]=a[12]&b[1];
assign p[1][14]=a[13]&b[1];
assign p[1][15]=a[14]&b[1];

assign p[1][16]=a[15]&b[1];
assign p[1][17]=a[16]&b[1];
assign p[1][18]=a[17]&b[1];
assign p[1][19]=a[18]&b[1];

assign p[1][20]=a[19]&b[1];
assign p[1][21]=a[20]&b[1];
assign p[1][22]=a[21]&b[1];
assign p[1][23]=a[22]&b[1];

assign p[1][24]=a[23]&b[1];
assign p[1][25]=a[24]&b[1];
assign p[1][26]=a[25]&b[1];
assign p[1][27]=a[26]&b[1];

assign p[1][28]=a[27]&b[1];
assign p[1][29]=a[28]&b[1];
assign p[1][30]=a[29]&b[1];
assign p[1][31]=a[30]&b[1];

assign p[1][32]=a[31]&b[1];
assign p[1][63:33]=31'd0;


//p2

assign p[2][0]=0;
assign p[2][1]=0;
assign p[2][2]=a[0]&b[2];
assign p[2][3]=a[1]&b[2];

assign p[2][4]=a[2]&b[2];
assign p[2][5]=a[3]&b[2];
assign p[2][6]=a[4]&b[2];
assign p[2][7]=a[5]&b[2];

assign p[2][8]=a[6]&b[2];
assign p[2][9]=a[7]&b[2];
assign p[2][10]=a[8]&b[2];
assign p[2][11]=a[9]&b[2];

assign p[2][12]=a[10]&b[2];
assign p[2][13]=a[11]&b[2];
assign p[2][14]=a[12]&b[2];
assign p[2][15]=a[13]&b[2];

assign p[2][16]=a[14]&b[2];
assign p[2][17]=a[15]&b[2];
assign p[2][18]=a[16]&b[2];
assign p[2][19]=a[17]&b[2];

assign p[2][20]=a[18]&b[2];
assign p[2][21]=a[19]&b[2];
assign p[2][22]=a[20]&b[2];
assign p[2][23]=a[21]&b[2];

assign p[2][24]=a[22]&b[2];
assign p[2][25]=a[23]&b[2];
assign p[2][26]=a[24]&b[2];
assign p[2][27]=a[25]&b[2];

assign p[2][28]=a[26]&b[2];
assign p[2][29]=a[27]&b[2];
assign p[2][30]=a[28]&b[2];
assign p[2][31]=a[29]&b[2];

assign p[2][32]=a[30]&b[2];
assign p[2][33]=a[31]&b[2];
assign p[2][63:34]=30'd0;

//assign p[0]=0;
///p3

assign p[3][0]=0;
assign p[3][1]=0;
assign p[3][2]=0;
assign p[3][3]=a[0]&b[3];

assign p[3][4]=a[1]&b[3];
assign p[3][5]=a[2]&b[3];
assign p[3][6]=a[3]&b[3];
assign p[3][7]=a[4]&b[3];

assign p[3][8]=a[5]&b[3];
assign p[3][9]=a[6]&b[3];
assign p[3][10]=a[7]&b[3];
assign p[3][11]=a[8]&b[3];

assign p[3][12]=a[9]&b[3];
assign p[3][13]=a[10]&b[3];
assign p[3][14]=a[11]&b[3];
assign p[3][15]=a[12]&b[3];

assign p[3][16]=a[13]&b[3];
assign p[3][17]=a[14]&b[3];
assign p[3][18]=a[15]&b[3];
assign p[3][19]=a[16]&b[3];

assign p[3][20]=a[17]&b[3];
assign p[3][21]=a[18]&b[3];
assign p[3][22]=a[19]&b[3];
assign p[3][23]=a[20]&b[3];

assign p[3][24]=a[21]&b[3];
assign p[3][25]=a[22]&b[3];
assign p[3][26]=a[23]&b[3];
assign p[3][27]=a[24]&b[3];

assign p[3][28]=a[25]&b[3];
assign p[3][29]=a[26]&b[3];
assign p[3][30]=a[27]&b[3];
assign p[3][31]=a[28]&b[3];

assign p[3][32]=a[29]&b[3];
assign p[3][33]=a[30]&b[3];
assign p[3][34]=a[31]&b[3];
assign p[3][63:35]=29'd0;


//p4

assign p[4][0]=0;
assign p[4][1]=0;
assign p[4][2]=0;
assign p[4][3]=0;

assign p[4][4]=a[0]&b[4];
assign p[4][5]=a[1]&b[4];
assign p[4][6]=a[2]&b[4];
assign p[4][7]=a[3]&b[4];

assign p[4][8]=a[4]&b[4];
assign p[4][9]=a[5]&b[4];
assign p[4][10]=a[6]&b[4];
assign p[4][11]=a[7]&b[4];

assign p[4][12]=a[8]&b[4];
assign p[4][13]=a[9]&b[4];
assign p[4][14]=a[10]&b[4];
assign p[4][15]=a[11]&b[4];

assign p[4][16]=a[12]&b[4];
assign p[4][17]=a[13]&b[4];
assign p[4][18]=a[14]&b[4];
assign p[4][19]=a[15]&b[4];

assign p[4][20]=a[16]&b[4];
assign p[4][21]=a[17]&b[4];
assign p[4][22]=a[18]&b[4];
assign p[4][23]=a[19]&b[4];

assign p[4][24]=a[20]&b[4];
assign p[4][25]=a[21]&b[4];
assign p[4][26]=a[22]&b[4];
assign p[4][27]=a[23]&b[4];

assign p[4][28]=a[24]&b[4];
assign p[4][29]=a[25]&b[4];
assign p[4][30]=a[26]&b[4];
assign p[4][31]=a[27]&b[4];

assign p[4][32]=a[28]&b[4];
assign p[4][33]=a[29]&b[4];
assign p[4][34]=a[30]&b[4];
assign p[4][35]=a[31]&b[4];

assign p[4][63:36]=28'd0;



//p5



assign p[5][0]=0;
assign p[5][1]=0;
assign p[5][2]=0;
assign p[5][3]=0;

assign p[5][4]=0;
assign p[5][5]=a[0]&b[5];
assign p[5][6]=a[1]&b[5];
assign p[5][7]=a[2]&b[5];

assign p[5][8]=a[3]&b[5];
assign p[5][9]=a[4]&b[5];
assign p[5][10]=a[5]&b[5];
assign p[5][11]=a[6]&b[5];

assign p[5][12]=a[7]&b[5];
assign p[5][13]=a[8]&b[5];
assign p[5][14]=a[9]&b[5];
assign p[5][15]=a[10]&b[5];

assign p[5][16]=a[11]&b[5];
assign p[5][17]=a[12]&b[5];
assign p[5][18]=a[13]&b[5];
assign p[5][19]=a[14]&b[5];

assign p[5][20]=a[15]&b[5];
assign p[5][21]=a[16]&b[5];
assign p[5][22]=a[17]&b[5];
assign p[5][23]=a[18]&b[5];

assign p[5][24]=a[19]&b[5];
assign p[5][25]=a[20]&b[5];
assign p[5][26]=a[21]&b[5];
assign p[5][27]=a[22]&b[5];

assign p[5][28]=a[23]&b[5];
assign p[5][29]=a[24]&b[5];
assign p[5][30]=a[25]&b[5];
assign p[5][31]=a[26]&b[5];


assign p[5][32]=a[27]&b[5];
assign p[5][33]=a[28]&b[5];
assign p[5][34]=a[29]&b[5];
assign p[5][35]=a[30]&b[5];

assign p[5][36]=a[31]&b[5];
assign p[5][63:37]=27'd0;



//p6

assign p[6][0]=0;
assign p[6][1]=0;
assign p[6][2]=0;
assign p[6][3]=0;

assign p[6][4]=0;
assign p[6][5]=0;
assign p[6][6]=a[0]&b[6];
assign p[6][7]=a[1]&b[6];

assign p[6][8]=a[2]&b[6];
assign p[6][9]=a[3]&b[6];
assign p[6][10]=a[4]&b[6];
assign p[6][11]=a[5]&b[6];

assign p[6][12]=a[6]&b[6];
assign p[6][13]=a[7]&b[6];
assign p[6][14]=a[8]&b[6];
assign p[6][15]=a[9]&b[6];

assign p[6][16]=a[10]&b[6];
assign p[6][17]=a[11]&b[6];
assign p[6][18]=a[12]&b[6];
assign p[6][19]=a[13]&b[6];

assign p[6][20]=a[14]&b[6];
assign p[6][21]=a[15]&b[6];
assign p[6][22]=a[16]&b[6];
assign p[6][23]=a[17]&b[6];

assign p[6][24]=a[18]&b[6];
assign p[6][25]=a[19]&b[6];
assign p[6][26]=a[20]&b[6];
assign p[6][27]=a[21]&b[6];

assign p[6][28]=a[22]&b[6];
assign p[6][29]=a[23]&b[6];
assign p[6][30]=a[24]&b[6];
assign p[6][31]=a[25]&b[6];

assign p[6][32]=a[26]&b[6];
assign p[6][33]=a[27]&b[6];
assign p[6][34]=a[28]&b[6];
assign p[6][35]=a[29]&b[6];

assign p[6][36]=a[30]&b[6];
assign p[6][37]=a[31]&b[6];
assign p[6][63:38]=26'd0;



//p7


assign p[7][6:0]=7'd0;
assign p[7][7]=a[0]&b[7];

assign p[7][8]=a[1]&b[7];
assign p[7][9]=a[2]&b[7];
assign p[7][10]=a[3]&b[7];
assign p[7][11]=a[4]&b[7];

assign p[7][12]=a[5]&b[7];
assign p[7][13]=a[6]&b[7];
assign p[7][14]=a[7]&b[7];
assign p[7][15]=a[8]&b[7];

assign p[7][16]=a[9]&b[7];
assign p[7][17]=a[10]&b[7];
assign p[7][18]=a[11]&b[7];
assign p[7][19]=a[12]&b[7];

assign p[7][20]=a[13]&b[7];
assign p[7][21]=a[14]&b[7];
assign p[7][22]=a[15]&b[7];
assign p[7][23]=a[16]&b[7];

assign p[7][24]=a[17]&b[7];
assign p[7][25]=a[18]&b[7];
assign p[7][26]=a[19]&b[7];
assign p[7][27]=a[20]&b[7];

assign p[7][28]=a[21]&b[7];
assign p[7][29]=a[22]&b[7];
assign p[7][30]=a[23]&b[7];
assign p[7][31]=a[24]&b[7];

assign p[7][32]=a[25]&b[7];
assign p[7][33]=a[26]&b[7];
assign p[7][34]=a[27]&b[7];
assign p[7][35]=a[28]&b[7];

assign p[7][36]=a[29]&b[7];
assign p[7][37]=a[30]&b[7];
assign p[7][38]=a[31]&b[7];
assign p[7][63:39]=25'd0;

//p8


assign p[8][7:0]=8'd0;

assign p[8][8]=a[0]&b[8];
assign p[8][9]=a[1]&b[8];
assign p[8][10]=a[2]&b[8];
assign p[8][11]=a[3]&b[8];

assign p[8][12]=a[4]&b[8];
assign p[8][13]=a[5]&b[8];
assign p[8][14]=a[6]&b[8];
assign p[8][15]=a[7]&b[8];

assign p[8][16]=a[8]&b[8];
assign p[8][17]=a[9]&b[8];
assign p[8][18]=a[10]&b[8];
assign p[8][19]=a[11]&b[8];

assign p[8][20]=a[12]&b[8];
assign p[8][21]=a[13]&b[8];
assign p[8][22]=a[14]&b[8];
assign p[8][23]=a[15]&b[8];

assign p[8][24]=a[16]&b[8];
assign p[8][25]=a[17]&b[8];
assign p[8][26]=a[18]&b[8];
assign p[8][27]=a[19]&b[8];

assign p[8][28]=a[20]&b[8];
assign p[8][29]=a[21]&b[8];
assign p[8][30]=a[22]&b[8];
assign p[8][31]=a[23]&b[8];

assign p[8][32]=a[24]&b[8];
assign p[8][33]=a[25]&b[8];
assign p[8][34]=a[26]&b[8];
assign p[8][35]=a[27]&b[8];

assign p[8][36]=a[28]&b[8];
assign p[8][37]=a[29]&b[8];
assign p[8][38]=a[30]&b[8];
assign p[8][39]=a[31]&b[8];

assign p[8][63:40]=24'd0;


//p9

assign p[9][8:0]=9'd0;
assign p[9][9]=a[0]&b[9];
assign p[9][10]=a[1]&b[9];
assign p[9][11]=a[2]&b[9];

assign p[9][12]=a[3]&b[9];
assign p[9][13]=a[4]&b[9];
assign p[9][14]=a[5]&b[9];
assign p[9][15]=a[6]&b[9];

assign p[9][16]=a[7]&b[9];
assign p[9][17]=a[8]&b[9];
assign p[9][18]=a[9]&b[9];
assign p[9][19]=a[10]&b[9];

assign p[9][20]=a[11]&b[9];
assign p[9][21]=a[12]&b[9];
assign p[9][22]=a[13]&b[9];
assign p[9][23]=a[14]&b[9];

assign p[9][24]=a[15]&b[9];
assign p[9][25]=a[16]&b[9];
assign p[9][26]=a[17]&b[9];
assign p[9][27]=a[18]&b[9];

assign p[9][28]=a[19]&b[9];
assign p[9][29]=a[20]&b[9];
assign p[9][30]=a[21]&b[9];
assign p[9][31]=a[22]&b[9];

assign p[9][32]=a[23]&b[9];
assign p[9][33]=a[24]&b[9];
assign p[9][34]=a[25]&b[9];
assign p[9][35]=a[26]&b[9];

assign p[9][36]=a[27]&b[9];
assign p[9][37]=a[28]&b[9];
assign p[9][38]=a[29]&b[9];
assign p[9][39]=a[30]&b[9];

assign p[9][40]=a[31]&b[9];
assign p[9][63:41]=23'd0;


//p10


assign p[10][9:0]=10'd0;
assign p[10][10]=a[0]&b[10];
assign p[10][11]=a[1]&b[10];

assign p[10][12]=a[2]&b[10];
assign p[10][13]=a[3]&b[10];
assign p[10][14]=a[4]&b[10];
assign p[10][15]=a[5]&b[10];

assign p[10][16]=a[6]&b[10];
assign p[10][17]=a[7]&b[10];
assign p[10][18]=a[8]&b[10];
assign p[10][19]=a[9]&b[10];

assign p[10][20]=a[10]&b[10];
assign p[10][21]=a[11]&b[10];
assign p[10][22]=a[12]&b[10];
assign p[10][23]=a[13]&b[10];

assign p[10][24]=a[14]&b[10];
assign p[10][25]=a[15]&b[10];
assign p[10][26]=a[16]&b[10];
assign p[10][27]=a[17]&b[10];

assign p[10][28]=a[18]&b[10];
assign p[10][29]=a[19]&b[10];
assign p[10][30]=a[20]&b[10];
assign p[10][31]=a[21]&b[10];


assign p[10][32]=a[22]&b[10];
assign p[10][33]=a[23]&b[10];
assign p[10][34]=a[24]&b[10];
assign p[10][35]=a[25]&b[10];

assign p[10][36]=a[26]&b[10];
assign p[10][37]=a[27]&b[10];
assign p[10][38]=a[28]&b[10];
assign p[10][39]=a[29]&b[10];

assign p[10][40]=a[30]&b[10];
assign p[10][41]=a[31]&b[10];
assign p[10][63:42]=22'd0;


//p11


assign p[11][10:0]=11'd0;
assign p[11][11]=a[0]&b[11];

assign p[11][12]=a[1]&b[11];
assign p[11][13]=a[2]&b[11];
assign p[11][14]=a[3]&b[11];
assign p[11][15]=a[4]&b[11];

assign p[11][16]=a[5]&b[11];
assign p[11][17]=a[6]&b[11];
assign p[11][18]=a[7]&b[11];
assign p[11][19]=a[8]&b[11];

assign p[11][20]=a[9]&b[11];
assign p[11][21]=a[10]&b[11];
assign p[11][22]=a[11]&b[11];
assign p[11][23]=a[12]&b[11];

assign p[11][24]=a[13]&b[11];
assign p[11][25]=a[14]&b[11];
assign p[11][26]=a[15]&b[11];
assign p[11][27]=a[16]&b[11];

assign p[11][28]=a[17]&b[11];
assign p[11][29]=a[18]&b[11];
assign p[11][30]=a[19]&b[11];
assign p[11][31]=a[20]&b[11];


assign p[11][32]=a[21]&b[11];
assign p[11][33]=a[22]&b[11];
assign p[11][34]=a[23]&b[11];
assign p[11][35]=a[24]&b[11];

assign p[11][36]=a[25]&b[11];
assign p[11][37]=a[26]&b[11];
assign p[11][38]=a[27]&b[11];
assign p[11][39]=a[28]&b[11];

assign p[11][40]=a[29]&b[11];
assign p[11][41]=a[30]&b[11];
assign p[11][42]=a[31]&b[11];
assign p[11][63:43]=21'd0;



//p12


assign p[12][11:0]=12'd0;

assign p[12][12]=a[0]&b[12];
assign p[12][13]=a[1]&b[12];
assign p[12][14]=a[2]&b[12];
assign p[12][15]=a[3]&b[12];

assign p[12][16]=a[4]&b[12];
assign p[12][17]=a[5]&b[12];
assign p[12][18]=a[6]&b[12];
assign p[12][19]=a[7]&b[12];

assign p[12][20]=a[8]&b[12];
assign p[12][21]=a[9]&b[12];
assign p[12][22]=a[10]&b[12];
assign p[12][23]=a[11]&b[12];

assign p[12][24]=a[12]&b[12];
assign p[12][25]=a[13]&b[12];
assign p[12][26]=a[14]&b[12];
assign p[12][27]=a[15]&b[12];

assign p[12][28]=a[16]&b[12];
assign p[12][29]=a[17]&b[12];
assign p[12][30]=a[18]&b[12];
assign p[12][31]=a[19]&b[12];

assign p[12][32]=a[20]&b[12];
assign p[12][33]=a[21]&b[12];
assign p[12][34]=a[22]&b[12];
assign p[12][35]=a[23]&b[12];

assign p[12][36]=a[24]&b[12];
assign p[12][37]=a[25]&b[12];
assign p[12][38]=a[26]&b[12];
assign p[12][39]=a[27]&b[12];

assign p[12][40]=a[28]&b[12];
assign p[12][41]=a[29]&b[12];
assign p[12][42]=a[30]&b[12];
assign p[12][43]=a[31]&b[12];
assign p[12][63:44]=20'd0;


//p13

assign p[13][12:0]=13'd0;
assign p[13][13]=a[0]&b[13];
assign p[13][14]=a[1]&b[13];
assign p[13][15]=a[2]&b[13];

assign p[13][16]=a[3]&b[13];
assign p[13][17]=a[4]&b[13];
assign p[13][18]=a[5]&b[13];
assign p[13][19]=a[6]&b[13];

assign p[13][20]=a[7]&b[13];
assign p[13][21]=a[8]&b[13];
assign p[13][22]=a[9]&b[13];
assign p[13][23]=a[10]&b[13];

assign p[13][24]=a[11]&b[13];
assign p[13][25]=a[12]&b[13];
assign p[13][26]=a[13]&b[13];
assign p[13][27]=a[14]&b[13];

assign p[13][28]=a[15]&b[13];
assign p[13][29]=a[16]&b[13];
assign p[13][30]=a[17]&b[13];
assign p[13][31]=a[18]&b[13];

assign p[13][32]=a[19]&b[13];
assign p[13][33]=a[20]&b[13];
assign p[13][34]=a[21]&b[13];
assign p[13][35]=a[22]&b[13];

assign p[13][36]=a[23]&b[13];
assign p[13][37]=a[24]&b[13];
assign p[13][38]=a[25]&b[13];
assign p[13][39]=a[26]&b[13];

assign p[13][40]=a[27]&b[13];
assign p[13][41]=a[28]&b[13];
assign p[13][42]=a[29]&b[13];
assign p[13][43]=a[30]&b[13];

assign p[13][44]=a[31]&b[13];
assign p[13][63:45]=19'd0;



//p14


assign p[14][13:0]=14'd0;
assign p[14][14]=a[0]&b[14];
assign p[14][15]=a[1]&b[14];

assign p[14][16]=a[2]&b[14];
assign p[14][17]=a[3]&b[14];
assign p[14][18]=a[4]&b[14];
assign p[14][19]=a[5]&b[14];

assign p[14][20]=a[6]&b[14];
assign p[14][21]=a[7]&b[14];
assign p[14][22]=a[8]&b[14];
assign p[14][23]=a[9]&b[14];

assign p[14][24]=a[10]&b[14];
assign p[14][25]=a[11]&b[14];
assign p[14][26]=a[12]&b[14];
assign p[14][27]=a[13]&b[14];

assign p[14][28]=a[14]&b[14];
assign p[14][29]=a[15]&b[14];
assign p[14][30]=a[16]&b[14];
assign p[14][31]=a[17]&b[14];

assign p[14][32]=a[18]&b[14];
assign p[14][33]=a[19]&b[14];
assign p[14][34]=a[20]&b[14];
assign p[14][35]=a[21]&b[14];

assign p[14][36]=a[22]&b[14];
assign p[14][37]=a[23]&b[14];
assign p[14][38]=a[24]&b[14];
assign p[14][39]=a[25]&b[14];

assign p[14][40]=a[26]&b[14];
assign p[14][41]=a[27]&b[14];
assign p[14][42]=a[28]&b[14];
assign p[14][43]=a[29]&b[14];

assign p[14][44]=a[30]&b[14];
assign p[14][45]=a[31]&b[14];
assign p[14][63:46]=18'd0;






//p15



assign p[15][14:0]=15'd0;
assign p[15][15]=a[0]&b[15];

assign p[15][16]=a[1]&b[15];
assign p[15][17]=a[2]&b[15];
assign p[15][18]=a[3]&b[15];
assign p[15][19]=a[4]&b[15];

assign p[15][20]=a[5]&b[15];
assign p[15][21]=a[6]&b[15];
assign p[15][22]=a[7]&b[15];
assign p[15][23]=a[8]&b[15];

assign p[15][24]=a[9]&b[15];
assign p[15][25]=a[10]&b[15];
assign p[15][26]=a[11]&b[15];
assign p[15][27]=a[12]&b[15];

assign p[15][28]=a[13]&b[15];
assign p[15][29]=a[14]&b[15];
assign p[15][30]=a[15]&b[15];
assign p[15][31]=a[16]&b[15];

assign p[15][32]=a[17]&b[15];
assign p[15][33]=a[18]&b[15];
assign p[15][34]=a[19]&b[15];
assign p[15][35]=a[20]&b[15];

assign p[15][36]=a[21]&b[15];
assign p[15][37]=a[22]&b[15];
assign p[15][38]=a[23]&b[15];
assign p[15][39]=a[24]&b[15];

assign p[15][40]=a[25]&b[15];
assign p[15][41]=a[26]&b[15];
assign p[15][42]=a[27]&b[15];
assign p[15][43]=a[28]&b[15];

assign p[15][44]=a[29]&b[15];
assign p[15][45]=a[30]&b[15];
assign p[15][46]=a[31]&b[15];
assign p[15][63:47]=17'd0;




//p16



assign p[16][15:0]=16'd0;

assign p[16][16]=a[0]&b[16];
assign p[16][17]=a[1]&b[16];
assign p[16][18]=a[2]&b[16];
assign p[16][19]=a[3]&b[16];

assign p[16][20]=a[4]&b[16];
assign p[16][21]=a[5]&b[16];
assign p[16][22]=a[6]&b[16];
assign p[16][23]=a[7]&b[16];

assign p[16][24]=a[8]&b[16];
assign p[16][25]=a[9]&b[16];
assign p[16][26]=a[10]&b[16];
assign p[16][27]=a[11]&b[16];

assign p[16][28]=a[12]&b[16];
assign p[16][29]=a[13]&b[16];
assign p[16][30]=a[14]&b[16];
assign p[16][31]=a[15]&b[16];

assign p[16][32]=a[16]&b[16];
assign p[16][33]=a[17]&b[16];
assign p[16][34]=a[18]&b[16];
assign p[16][35]=a[19]&b[16];

assign p[16][36]=a[20]&b[16];
assign p[16][37]=a[21]&b[16];
assign p[16][38]=a[22]&b[16];
assign p[16][39]=a[23]&b[16];

assign p[16][40]=a[24]&b[16];
assign p[16][41]=a[25]&b[16];
assign p[16][42]=a[26]&b[16];
assign p[16][43]=a[27]&b[16];

assign p[16][44]=a[28]&b[16];
assign p[16][45]=a[29]&b[16];
assign p[16][46]=a[30]&b[16];
assign p[16][47]=a[31]&b[16];

assign p[16][63:48]=16'd0;






//p17



assign p[17][16:0]=17'd0;
assign p[17][17]=a[0]&b[17];
assign p[17][18]=a[1]&b[17];
assign p[17][19]=a[2]&b[17];

assign p[17][20]=a[3]&b[17];
assign p[17][21]=a[4]&b[17];
assign p[17][22]=a[5]&b[17];
assign p[17][23]=a[6]&b[17];

assign p[17][24]=a[7]&b[17];
assign p[17][25]=a[8]&b[17];
assign p[17][26]=a[9]&b[17];
assign p[17][27]=a[10]&b[17];

assign p[17][28]=a[11]&b[17];
assign p[17][29]=a[12]&b[17];
assign p[17][30]=a[13]&b[17];
assign p[17][31]=a[14]&b[17];

assign p[17][32]=a[15]&b[17];
assign p[17][33]=a[16]&b[17];
assign p[17][34]=a[17]&b[17];
assign p[17][35]=a[18]&b[17];

assign p[17][36]=a[19]&b[17];
assign p[17][37]=a[20]&b[17];
assign p[17][38]=a[21]&b[17];
assign p[17][39]=a[22]&b[17];

assign p[17][40]=a[23]&b[17];
assign p[17][41]=a[24]&b[17];
assign p[17][42]=a[25]&b[17];
assign p[17][43]=a[26]&b[17];

assign p[17][44]=a[27]&b[17];
assign p[17][45]=a[28]&b[17];
assign p[17][46]=a[29]&b[17];
assign p[17][47]=a[30]&b[17];

assign p[17][48]=a[31]&b[17];
assign p[17][63:49]=15'd0;





//p18



assign p[18][17:0]=18'd0;
assign p[18][18]=a[0]&b[18];
assign p[18][19]=a[1]&b[18];

assign p[18][20]=a[2]&b[18];
assign p[18][21]=a[3]&b[18];
assign p[18][22]=a[4]&b[18];
assign p[18][23]=a[5]&b[18];

assign p[18][24]=a[6]&b[18];
assign p[18][25]=a[7]&b[18];
assign p[18][26]=a[8]&b[18];
assign p[18][27]=a[9]&b[18];

assign p[18][28]=a[10]&b[18];
assign p[18][29]=a[11]&b[18];
assign p[18][30]=a[12]&b[18];
assign p[18][31]=a[13]&b[18];

assign p[18][32]=a[14]&b[18];
assign p[18][33]=a[15]&b[18];
assign p[18][34]=a[16]&b[18];
assign p[18][35]=a[17]&b[18];

assign p[18][36]=a[18]&b[18];
assign p[18][37]=a[19]&b[18];
assign p[18][38]=a[20]&b[18];
assign p[18][39]=a[21]&b[18];

assign p[18][40]=a[22]&b[18];
assign p[18][41]=a[23]&b[18];
assign p[18][42]=a[24]&b[18];
assign p[18][43]=a[25]&b[18];

assign p[18][44]=a[26]&b[18];
assign p[18][45]=a[27]&b[18];
assign p[18][46]=a[28]&b[18];
assign p[18][47]=a[29]&b[18];

assign p[18][48]=a[30]&b[18];
assign p[18][49]=a[31]&b[18];
assign p[18][63:50]=14'd0;






//p19


assign p[19][18:0]=19'd0;
assign p[19][19]=a[0]&b[19];

assign p[19][20]=a[1]&b[19];
assign p[19][21]=a[2]&b[19];
assign p[19][22]=a[3]&b[19];
assign p[19][23]=a[4]&b[19];

assign p[19][24]=a[5]&b[19];
assign p[19][25]=a[6]&b[19];
assign p[19][26]=a[7]&b[19];
assign p[19][27]=a[8]&b[19];

assign p[19][28]=a[9]&b[19];
assign p[19][29]=a[10]&b[19];
assign p[19][30]=a[11]&b[19];
assign p[19][31]=a[12]&b[19];

assign p[19][32]=a[13]&b[19];
assign p[19][33]=a[14]&b[19];
assign p[19][34]=a[15]&b[19];
assign p[19][35]=a[16]&b[19];

assign p[19][36]=a[17]&b[19];
assign p[19][37]=a[18]&b[19];
assign p[19][38]=a[19]&b[19];
assign p[19][39]=a[20]&b[19];

assign p[19][40]=a[21]&b[19];
assign p[19][41]=a[22]&b[19];
assign p[19][42]=a[23]&b[19];
assign p[19][43]=a[24]&b[19];

assign p[19][44]=a[25]&b[19];
assign p[19][45]=a[26]&b[19];
assign p[19][46]=a[27]&b[19];
assign p[19][47]=a[28]&b[19];

assign p[19][48]=a[29]&b[19];
assign p[19][49]=a[30]&b[19];
assign p[19][50]=a[31]&b[19];
assign p[19][63:51]=13'd0;


//p20


assign p[20][19:0]=20'b0;

assign p[20][20]=a[0]&b[20];
assign p[20][21]=a[1]&b[20];
assign p[20][22]=a[2]&b[20];
assign p[20][23]=a[3]&b[20];

assign p[20][24]=a[4]&b[20];
assign p[20][25]=a[5]&b[20];
assign p[20][26]=a[6]&b[20];
assign p[20][27]=a[7]&b[20];

assign p[20][28]=a[8]&b[20];
assign p[20][29]=a[9]&b[20];
assign p[20][30]=a[10]&b[20];
assign p[20][31]=a[11]&b[20];

assign p[20][32]=a[12]&b[20];
assign p[20][33]=a[13]&b[20];
assign p[20][34]=a[14]&b[20];
assign p[20][35]=a[15]&b[20];

assign p[20][36]=a[16]&b[20];
assign p[20][37]=a[17]&b[20];
assign p[20][38]=a[18]&b[20];
assign p[20][39]=a[19]&b[20];

assign p[20][40]=a[20]&b[20];
assign p[20][41]=a[21]&b[20];
assign p[20][42]=a[22]&b[20];
assign p[20][43]=a[23]&b[20];

assign p[20][44]=a[24]&b[20];
assign p[20][45]=a[25]&b[20];
assign p[20][46]=a[26]&b[20];
assign p[20][47]=a[27]&b[20];

assign p[20][48]=a[28]&b[20];
assign p[20][49]=a[29]&b[20];
assign p[20][50]=a[30]&b[20];
assign p[20][51]=a[31]&b[20];

assign p[20][63:52]=12'd0;





//p21



assign p[21][20:0]=21'd0;
assign p[21][21]=a[0]&b[21];
assign p[21][22]=a[1]&b[21];
assign p[21][23]=a[2]&b[21];

assign p[21][24]=a[3]&b[21];
assign p[21][25]=a[4]&b[21];
assign p[21][26]=a[5]&b[21];
assign p[21][27]=a[6]&b[21];

assign p[21][28]=a[7]&b[21];
assign p[21][29]=a[8]&b[21];
assign p[21][30]=a[9]&b[21];
assign p[21][31]=a[10]&b[21];

assign p[21][32]=a[11]&b[21];
assign p[21][33]=a[12]&b[21];
assign p[21][34]=a[13]&b[21];
assign p[21][35]=a[14]&b[21];

assign p[21][36]=a[15]&b[21];
assign p[21][37]=a[16]&b[21];
assign p[21][38]=a[17]&b[21];
assign p[21][39]=a[18]&b[21];

assign p[21][40]=a[19]&b[21];
assign p[21][41]=a[20]&b[21];
assign p[21][42]=a[21]&b[21];
assign p[21][43]=a[22]&b[21];

assign p[21][44]=a[23]&b[21];
assign p[21][45]=a[24]&b[21];
assign p[21][46]=a[25]&b[21];
assign p[21][47]=a[26]&b[21];

assign p[21][48]=a[27]&b[21];
assign p[21][49]=a[28]&b[21];
assign p[21][50]=a[29]&b[21];
assign p[21][51]=a[30]&b[21];

assign p[21][52]=a[31]&b[21];
assign p[21][63:53]=11'd0;






//p22


assign p[22][21:0]=22'd0;
assign p[22][22]=a[0]&b[22];
assign p[22][23]=a[1]&b[22];

assign p[22][24]=a[2]&b[22];
assign p[22][25]=a[3]&b[22];
assign p[22][26]=a[4]&b[22];
assign p[22][27]=a[5]&b[22];

assign p[22][28]=a[6]&b[22];
assign p[22][29]=a[7]&b[22];
assign p[22][30]=a[8]&b[22];
assign p[22][31]=a[9]&b[22];

assign p[22][32]=a[10]&b[22];
assign p[22][33]=a[11]&b[22];
assign p[22][34]=a[12]&b[22];
assign p[22][35]=a[13]&b[22];

assign p[22][36]=a[14]&b[22];
assign p[22][37]=a[15]&b[22];
assign p[22][38]=a[16]&b[22];
assign p[22][39]=a[17]&b[22];

assign p[22][40]=a[18]&b[22];
assign p[22][41]=a[19]&b[22];
assign p[22][42]=a[20]&b[22];
assign p[22][43]=a[21]&b[22];

assign p[22][44]=a[22]&b[22];
assign p[22][45]=a[23]&b[22];
assign p[22][46]=a[24]&b[22];
assign p[22][47]=a[25]&b[22];

assign p[22][48]=a[26]&b[22];
assign p[22][49]=a[27]&b[22];
assign p[22][50]=a[28]&b[22];
assign p[22][51]=a[29]&b[22];

assign p[22][52]=a[30]&b[22];
assign p[22][53]=a[31]&b[22];
assign p[22][63:54]=10'd0;





//p23



assign p[23][22:0]=23'd0;
assign p[23][23]=a[0]&b[23];

assign p[23][24]=a[1]&b[23];
assign p[23][25]=a[2]&b[23];
assign p[23][26]=a[3]&b[23];
assign p[23][27]=a[4]&b[23];

assign p[23][28]=a[5]&b[23];
assign p[23][29]=a[6]&b[23];
assign p[23][30]=a[7]&b[23];
assign p[23][31]=a[8]&b[23];

assign p[23][32]=a[9]&b[23];
assign p[23][33]=a[10]&b[23];
assign p[23][34]=a[11]&b[23];
assign p[23][35]=a[12]&b[23];

assign p[23][36]=a[13]&b[23];
assign p[23][37]=a[14]&b[23];
assign p[23][38]=a[15]&b[23];
assign p[23][39]=a[16]&b[23];

assign p[23][40]=a[17]&b[23];
assign p[23][41]=a[18]&b[23];
assign p[23][42]=a[19]&b[23];
assign p[23][43]=a[20]&b[23];

assign p[23][44]=a[21]&b[23];
assign p[23][45]=a[22]&b[23];
assign p[23][46]=a[23]&b[23];
assign p[23][47]=a[24]&b[23];

assign p[23][48]=a[25]&b[23];
assign p[23][49]=a[26]&b[23];
assign p[23][50]=a[27]&b[23];
assign p[23][51]=a[28]&b[23];

assign p[23][52]=a[29]&b[23];
assign p[23][53]=a[30]&b[23];
assign p[23][54]=a[31]&b[23];
assign p[23][63:55]=9'd0;





//p24


assign p[24][23:0]=24'd0;

assign p[24][24]=a[0]&b[24];
assign p[24][25]=a[1]&b[24];
assign p[24][26]=a[2]&b[24];
assign p[24][27]=a[3]&b[24];

assign p[24][28]=a[4]&b[24];
assign p[24][29]=a[5]&b[24];
assign p[24][30]=a[6]&b[24];
assign p[24][31]=a[7]&b[24];

assign p[24][32]=a[8]&b[24];
assign p[24][33]=a[9]&b[24];
assign p[24][34]=a[10]&b[24];
assign p[24][35]=a[11]&b[24];

assign p[24][36]=a[12]&b[24];
assign p[24][37]=a[13]&b[24];
assign p[24][38]=a[14]&b[24];
assign p[24][39]=a[15]&b[24];

assign p[24][40]=a[16]&b[24];
assign p[24][41]=a[17]&b[24];
assign p[24][42]=a[18]&b[24];
assign p[24][43]=a[19]&b[24];

assign p[24][44]=a[20]&b[24];
assign p[24][45]=a[21]&b[24];
assign p[24][46]=a[22]&b[24];
assign p[24][47]=a[23]&b[24];

assign p[24][48]=a[24]&b[24];
assign p[24][49]=a[25]&b[24];
assign p[24][50]=a[26]&b[24];
assign p[24][51]=a[27]&b[24];

assign p[24][52]=a[28]&b[24];
assign p[24][53]=a[29]&b[24];
assign p[24][54]=a[30]&b[24];
assign p[24][55]=a[31]&b[24];

assign p[24][63:56]=8'd0;




//p25



assign p[25][24:0]=25'd0;
assign p[25][25]=a[0]&b[25];
assign p[25][26]=a[1]&b[25];
assign p[25][27]=a[2]&b[25];

assign p[25][28]=a[3]&b[25];
assign p[25][29]=a[4]&b[25];
assign p[25][30]=a[5]&b[25];
assign p[25][31]=a[6]&b[25];

assign p[25][32]=a[7]&b[25];
assign p[25][33]=a[8]&b[25];
assign p[25][34]=a[9]&b[25];
assign p[25][35]=a[10]&b[25];

assign p[25][36]=a[11]&b[25];
assign p[25][37]=a[12]&b[25];
assign p[25][38]=a[13]&b[25];
assign p[25][39]=a[14]&b[25];

assign p[25][40]=a[15]&b[25];
assign p[25][41]=a[16]&b[25];
assign p[25][42]=a[17]&b[25];
assign p[25][43]=a[18]&b[25];

assign p[25][44]=a[19]&b[25];
assign p[25][45]=a[20]&b[25];
assign p[25][46]=a[21]&b[25];
assign p[25][47]=a[22]&b[25];

assign p[25][48]=a[23]&b[25];
assign p[25][49]=a[24]&b[25];
assign p[25][50]=a[25]&b[25];
assign p[25][51]=a[26]&b[25];

assign p[25][52]=a[27]&b[25];
assign p[25][53]=a[28]&b[25];
assign p[25][54]=a[29]&b[25];
assign p[25][55]=a[30]&b[25];

assign p[25][56]=a[31]&b[25];
assign p[25][63:57]=7'd0;





//p26



assign p[26][25:0]=26'd0;
assign p[26][26]=a[0]&b[26];
assign p[26][27]=a[1]&b[26];

assign p[26][28]=a[2]&b[26];
assign p[26][29]=a[3]&b[26];
assign p[26][30]=a[4]&b[26];
assign p[26][31]=a[5]&b[26];


assign p[26][32]=a[6]&b[26];
assign p[26][33]=a[7]&b[26];
assign p[26][34]=a[8]&b[26];
assign p[26][35]=a[9]&b[26];

assign p[26][36]=a[10]&b[26];
assign p[26][37]=a[11]&b[26];
assign p[26][38]=a[12]&b[26];
assign p[26][39]=a[13]&b[26];

assign p[26][40]=a[14]&b[26];
assign p[26][41]=a[15]&b[26];
assign p[26][42]=a[16]&b[26];
assign p[26][43]=a[17]&b[26];

assign p[26][44]=a[18]&b[26];
assign p[26][45]=a[19]&b[26];
assign p[26][46]=a[20]&b[26];
assign p[26][47]=a[21]&b[26];

assign p[26][48]=a[22]&b[26];
assign p[26][49]=a[23]&b[26];
assign p[26][50]=a[24]&b[26];
assign p[26][51]=a[25]&b[26];

assign p[26][52]=a[26]&b[26];
assign p[26][53]=a[27]&b[26];
assign p[26][54]=a[28]&b[26];
assign p[26][55]=a[29]&b[26];

assign p[26][56]=a[30]&b[26];
assign p[26][57]=a[31]&b[26];
assign p[26][63:58]=6'd0;







//p27


assign p[27][26:0]=27'd0;
assign p[27][27]=a[0]&b[27];

assign p[27][28]=a[1]&b[27];
assign p[27][29]=a[2]&b[27];
assign p[27][30]=a[3]&b[27];
assign p[27][31]=a[4]&b[27];

assign p[27][32]=a[5]&b[27];
assign p[27][33]=a[6]&b[27];
assign p[27][34]=a[7]&b[27];
assign p[27][35]=a[8]&b[27];

assign p[27][36]=a[9]&b[27];
assign p[27][37]=a[10]&b[27];
assign p[27][38]=a[11]&b[27];
assign p[27][39]=a[12]&b[27];

assign p[27][40]=a[13]&b[27];
assign p[27][41]=a[14]&b[27];
assign p[27][42]=a[15]&b[27];
assign p[27][43]=a[16]&b[27];

assign p[27][44]=a[17]&b[27];
assign p[27][45]=a[18]&b[27];
assign p[27][46]=a[19]&b[27];
assign p[27][47]=a[20]&b[27];

assign p[27][48]=a[21]&b[27];
assign p[27][49]=a[22]&b[27];
assign p[27][50]=a[23]&b[27];
assign p[27][51]=a[24]&b[27];

assign p[27][52]=a[25]&b[27];
assign p[27][53]=a[26]&b[27];
assign p[27][54]=a[27]&b[27];
assign p[27][55]=a[28]&b[27];

assign p[27][56]=a[29]&b[27];
assign p[27][57]=a[30]&b[27];
assign p[27][58]=a[31]&b[27];
assign p[27][63:59]=5'd0;




//p28


assign p[28][27:0]=28'd0;

assign p[28][28]=a[0]&b[28];
assign p[28][29]=a[1]&b[28];
assign p[28][30]=a[2]&b[28];
assign p[28][31]=a[3]&b[28];

assign p[28][32]=a[4]&b[28];
assign p[28][33]=a[5]&b[28];
assign p[28][34]=a[6]&b[28];
assign p[28][35]=a[7]&b[28];

assign p[28][36]=a[8]&b[28];
assign p[28][37]=a[9]&b[28];
assign p[28][38]=a[10]&b[28];
assign p[28][39]=a[11]&b[28];

assign p[28][40]=a[12]&b[28];
assign p[28][41]=a[13]&b[28];
assign p[28][42]=a[14]&b[28];
assign p[28][43]=a[15]&b[28];

assign p[28][44]=a[16]&b[28];
assign p[28][45]=a[17]&b[28];
assign p[28][46]=a[18]&b[28];
assign p[28][47]=a[19]&b[28];

assign p[28][48]=a[20]&b[28];
assign p[28][49]=a[21]&b[28];
assign p[28][50]=a[22]&b[28];
assign p[28][51]=a[23]&b[28];

assign p[28][52]=a[24]&b[28];
assign p[28][53]=a[25]&b[28];
assign p[28][54]=a[26]&b[28];
assign p[28][55]=a[27]&b[28];

assign p[28][56]=a[28]&b[28];
assign p[28][57]=a[29]&b[28];
assign p[28][58]=a[30]&b[28];
assign p[28][59]=a[31]&b[28];

assign p[28][63:60]=4'd0;





//p29



assign p[29][28:0]=29'd0;
assign p[29][29]=a[0]&b[29];
assign p[29][30]=a[1]&b[29];
assign p[29][31]=a[2]&b[29];

assign p[29][32]=a[3]&b[29];
assign p[29][33]=a[4]&b[29];
assign p[29][34]=a[5]&b[29];
assign p[29][35]=a[6]&b[29];

assign p[29][36]=a[7]&b[29];
assign p[29][37]=a[8]&b[29];
assign p[29][38]=a[9]&b[29];
assign p[29][39]=a[10]&b[29];

assign p[29][40]=a[11]&b[29];
assign p[29][41]=a[12]&b[29];
assign p[29][42]=a[13]&b[29];
assign p[29][43]=a[14]&b[29];

assign p[29][44]=a[15]&b[29];
assign p[29][45]=a[16]&b[29];
assign p[29][46]=a[17]&b[29];
assign p[29][47]=a[18]&b[29];

assign p[29][48]=a[19]&b[29];
assign p[29][49]=a[20]&b[29];
assign p[29][50]=a[21]&b[29];
assign p[29][51]=a[22]&b[29];

assign p[29][52]=a[23]&b[29];
assign p[29][53]=a[24]&b[29];
assign p[29][54]=a[25]&b[29];
assign p[29][55]=a[26]&b[29];

assign p[29][56]=a[27]&b[29];
assign p[29][57]=a[28]&b[29];
assign p[29][58]=a[29]&b[29];
assign p[29][59]=a[30]&b[29];

assign p[29][60]=a[31]&b[29];
assign p[29][63:61]=3'd0;





//p30


assign p[30][29:0]=30'd0;
assign p[30][30]=a[0]&b[30];
assign p[30][31]=a[1]&b[30];

assign p[30][32]=a[2]&b[30];
assign p[30][33]=a[3]&b[30];
assign p[30][34]=a[4]&b[30];
assign p[30][35]=a[5]&b[30];

assign p[30][36]=a[6]&b[30];
assign p[30][37]=a[7]&b[30];
assign p[30][38]=a[7]&b[30];
assign p[30][39]=a[9]&b[30];

assign p[30][40]=a[10]&b[30];
assign p[30][41]=a[11]&b[30];
assign p[30][42]=a[12]&b[30];
assign p[30][43]=a[13]&b[30];

assign p[30][44]=a[14]&b[30];
assign p[30][45]=a[15]&b[30];
assign p[30][46]=a[16]&b[30];
assign p[30][47]=a[17]&b[30];

assign p[30][48]=a[18]&b[30];
assign p[30][49]=a[19]&b[30];
assign p[30][50]=a[20]&b[30];
assign p[30][51]=a[21]&b[30];

assign p[30][52]=a[22]&b[30];
assign p[30][53]=a[23]&b[30];
assign p[30][54]=a[24]&b[30];
assign p[30][55]=a[25]&b[30];

assign p[30][56]=a[26]&b[30];
assign p[30][57]=a[27]&b[30];
assign p[30][58]=a[28]&b[30];
assign p[30][59]=a[29]&b[30];

assign p[30][60]=a[30]&b[30];
assign p[30][61]=a[31]&b[30];
assign p[30][63:62]=2'd0;




//p31

assign p[31][30:0]=0;
assign p[31][31]=a[0]&b[31];

assign p[31][32]=a[1]&b[31];
assign p[31][33]=a[2]&b[31];
assign p[31][34]=a[3]&b[31];
assign p[31][35]=a[4]&b[31];

assign p[31][36]=a[5]&b[31];
assign p[31][37]=a[6]&b[31];
assign p[31][38]=a[7]&b[31];
assign p[31][39]=a[8]&b[31];

assign p[31][40]=a[9]&b[31];
assign p[31][41]=a[10]&b[31];
assign p[31][42]=a[11]&b[31];
assign p[31][43]=a[12]&b[31];

assign p[31][44]=a[13]&b[31];
assign p[31][45]=a[14]&b[31];
assign p[31][46]=a[15]&b[31];
assign p[31][47]=a[16]&b[31];

assign p[31][48]=a[17]&b[31];
assign p[31][49]=a[18]&b[31];
assign p[31][50]=a[19]&b[31];
assign p[31][51]=a[20]&b[31];

assign p[31][52]=a[21]&b[31];
assign p[31][53]=a[22]&b[31];
assign p[31][54]=a[23]&b[31];
assign p[31][55]=a[24]&b[31];

assign p[31][56]=a[25]&b[31];
assign p[31][57]=a[26]&b[31];
assign p[31][58]=a[27]&b[31];
assign p[31][59]=a[28]&b[31];

assign p[31][60]=a[29]&b[31];
assign p[31][61]=a[30]&b[31];
assign p[31][62]=a[31]&b[31];
assign p[31][63]=0;


//ff

df64 a1(q[0],p[0],clk);
df64 a2(q[1],p[1],clk);
df64 a3(q[2],p[2],clk);
df64 a4(q[3],p[3],clk);

df64 a5(q[4],p[4],clk);
df64 a6(q[5],p[5],clk);
df64 a7(q[6],p[6],clk);
df64 a8(q[7],p[7],clk);

df64 a9(q[8],p[8],clk);
df64 a10(q[9],p[9],clk);
df64 a11(q[10],p[10],clk);
df64 a12(q[11],p[11],clk);

df64 a13(q[12],p[12],clk);
df64 a14(q[13],p[13],clk);
df64 a15(q[14],p[14],clk);
df64 a16(q[15],p[15],clk);

df64 a17(q[16],p[16],clk);
df64 a18(q[17],p[17],clk);
df64 a19(q[18],p[18],clk);
df64 a20(q[19],p[19],clk);

df64 a21(q[20],p[20],clk);
df64 a22(q[21],p[21],clk);
df64 a23(q[22],p[22],clk);
df64 a24(q[23],p[23],clk);

df64 a25(q[24],p[24],clk);
df64 a26(q[25],p[25],clk);
df64 a27(q[26],p[26],clk);
df64 a28(q[27],p[27],clk);

df64 a29(q[28],p[28],clk);
df64 a30(q[29],p[29],clk);
df64 a31(q[30],p[30],clk);
df64 a32(q[31],p[31],clk);


// Adding partial Products


//LEVEL 1

CSA csa09(q[31],q[30],q[29],l1out[21],l1out[20],clk);
CSA csa08(q[28],q[27],q[26],l1out[19],l1out[18],clk);
CSA csa07(q[25],q[24],q[23],l1out[17],l1out[16],clk);
CSA csa06(q[22],q[21],q[20],l1out[15],l1out[14],clk);

CSA csa05(q[19],q[18],q[17],l1out[13],l1out[12],clk);
CSA csa04(q[16],q[15],q[14],l1out[11],l1out[10],clk);
CSA csa03(q[13],q[12],q[11],l1out[9],l1out[8],clk);
CSA csa02(q[10],q[9],q[8],l1out[7],l1out[6],clk);

CSA csa01(q[7],q[6],q[5],l1out[5],l1out[4],clk);
CSA csa00(q[4],q[3],q[2],l1out[3],l1out[2],clk);
df64 ds01(l1out[1],q[1],clk);
df64 ds00(l1out[0],q[0],clk);







// LEVEL 2

CSA csa16(l1out[21],l1out[20],l1out[19],l2out[14],l2out[13],clk);
CSA csa15(l1out[18],l1out[17],l1out[16],l2out[12],l2out[11],clk);
CSA csa14(l1out[15],l1out[14],l1out[13],l2out[10],l2out[9],clk);
CSA csa13(l1out[12],l1out[11],l1out[10],l2out[8],l2out[7],clk);

CSA csa12(l1out[9],l1out[8],l1out[7],l2out[6],l2out[5],clk);
CSA csa11(l1out[6],l1out[5],l1out[4],l2out[4],l2out[3],clk);
CSA csa10(l1out[3],l1out[2],l1out[1],l2out[2],l2out[1],clk);
df64 ds20(l2out[0],l1out[0],clk);


//LEVEL 3

CSA csa24(l2out[14],l2out[13],l2out[12],l3out[9],l3out[8],clk);
CSA csa23(l2out[11],l2out[10],l2out[9],l3out[7],l3out[6],clk);
CSA csa22(l2out[8],l2out[7],l2out[6],l3out[5],l3out[4],clk);
CSA csa21(l2out[5],l2out[4],l2out[3],l3out[3],l3out[2],clk);

CSA csa20(l2out[2],l2out[1],l2out[0],l3out[1],l3out[0],clk);


//LEVEL 4


CSA csa32(l3out[9],l3out[8],l3out[7],l4out[6],l4out[5],clk);
CSA csa31(l3out[6],l3out[5],l3out[4],l4out[4],l4out[3],clk);
CSA csa30(l3out[3],l3out[2],l3out[1],l4out[2],l4out[1],clk);
df64 ds30(l4out[0],l3out[0],clk);

//LEVEL 5


CSA csa42(l4out[6],l4out[5],l4out[4],l5out[4],l5out[3],clk);
CSA csa41(l4out[3],l4out[2],l4out[1],l5out[2],l5out[1],clk);
df64 ds40(l5out[0],l4out[0],clk);


//LEVEL 6

CSA csa51(l5out[4],l5out[3],l5out[2],l6out[3],l6out[2],clk);
df64 ds50(l6out[1],l5out[1],clk);
df64 ds51(l6out[0],l5out[0],clk);




// LEVEL 7

CSA csa61(l6out[1],l6out[3],l6out[2],l7out[1],l7out[2],clk);
df64 ds60(l7out[0],l6out[0],clk);






// LEVEL 8

CSA csa71(l7out[2],l7out[1],l7out[0],l8out[1],l8out[0],clk);


//assign m=l1out[6];

//df64 ajdnj(m,l8out[1],clk);



//LEVEL 9

prefix32  pre(l8out[1][31:0],l8out[0][31:0],1'b0,1'b0,cout1,pref1[0],clk);

df32      ff1(pref[0],l8out[1][63:32],clk);
df32      ff2(pref[1],pref[0],clk);
df32      ff3(pref[2],pref[1],clk);
df32      ff4(pref[3],pref[2],clk);
df32      ff5(pref[4],pref[3],clk);

df32      f1(preff[0],l8out[0][63:32],clk);
df32      f2(preff[1],preff[0],clk);
df32      f3(preff[2],preff[1],clk);
df32      f4(preff[3],preff[2],clk);
df32      f5(preff[4],preff[3],clk);


prefix32  pre1(preff[4],pref[4],cout1,1'b0,c,m[63:32],clk);



df32      ff02(pref1[1],pref1[0],clk);
df32      ff03(pref1[2],pref1[1],clk);
df32      ff04(pref1[3],pref1[2],clk);
df32      ff05(pref1[4],pref1[3],clk);
df32      ff06(m[31:0],pref1[4],clk);



//prefix32  pre(l8out[1][31:0],l8out[0][31:0],0,cout1,m[31:0]);
//prefix32  pre1(l8out[1][63:32],l8out[0][63:32],cout1,c,m[63:32]);



endmodule
