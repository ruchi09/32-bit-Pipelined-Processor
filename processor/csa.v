module CSA(a,b,cin,cout,s,clk);

input [63:0]a,b,cin;
output [63:0]cout;
output [63:0]s;
input clk;
reg [63:0]cout;
reg [63:0]s;

wire [63:0]s1;
wire [63:0]c1;

assign s1=a^b^cin;
assign c1[63:1]=a&b | b&cin | cin&a;
assign c1[0]=0;

always @ (posedge clk)
	   begin 
		 cout<=c1;
         s<=s1;
	   end

endmodule
