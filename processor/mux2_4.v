module mux2_4(i0,i1,i2,i3,s,out,c);
input [31:0]i0,i1,i2,i3;
input c;
input [1:0]s;
output [31:0]out;
wire [31:0]o;
reg [31:0]out;

wire [31:0]s1,s2;

assign s1[0]=s[0];
assign s1[1]=s[0];
assign s1[2]=s[0];
assign s1[3]=s[0];

assign s1[4]=s[0];
assign s1[5]=s[0];
assign s1[6]=s[0];
assign s1[7]=s[0];

assign s1[8]=s[0];
assign s1[9]=s[0];
assign s1[10]=s[0];
assign s1[11]=s[0];

assign s1[12]=s[0];
assign s1[13]=s[0];
assign s1[14]=s[0];
assign s1[15]=s[0];

assign s1[16]=s[0];
assign s1[17]=s[0];
assign s1[18]=s[0];
assign s1[19]=s[0];

assign s1[20]=s[0];
assign s1[21]=s[0];
assign s1[22]=s[0];
assign s1[23]=s[0];

assign s1[24]=s[0];
assign s1[25]=s[0];
assign s1[26]=s[0];
assign s1[27]=s[0];

assign s1[28]=s[0];
assign s1[29]=s[0];
assign s1[30]=s[0];
assign s1[31]=s[0];



assign s2[0]=s[1];
assign s2[1]=s[1];
assign s2[2]=s[1];
assign s2[3]=s[1];

assign s2[4]=s[1];
assign s2[5]=s[1];
assign s2[6]=s[1];
assign s2[7]=s[1];

assign s2[8]=s[1];
assign s2[9]=s[1];
assign s2[10]=s[1];
assign s2[11]=s[1];

assign s2[12]=s[1];
assign s2[13]=s[1];
assign s2[14]=s[1];
assign s2[15]=s[1];

assign s2[16]=s[1];
assign s2[17]=s[1];
assign s2[18]=s[1];
assign s2[19]=s[1];

assign s2[20]=s[1];
assign s2[21]=s[1];
assign s2[22]=s[1];
assign s2[23]=s[1];

assign s2[24]=s[1];
assign s2[25]=s[1];
assign s2[26]=s[1];
assign s2[27]=s[1];

assign s2[28]=s[1];
assign s2[29]=s[1];
assign s2[30]=s[1];
assign s2[31]=s[1];


assign o =i0 & ~s1 & ~s2 | i1 & ~s2 & s1 | i2 & s2 & ~s1  | i3 & s2 & s1;


	always @ (posedge c)
	   begin 
		 out<=o;
	   end



endmodule
