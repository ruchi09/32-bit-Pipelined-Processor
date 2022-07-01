module imemory_tb();

reg [31:0]y;
reg clk,cin,rd,wr;
reg [4:0]x;
wire [31:0]s;


imemory m(x,y,rd,wr,s);


initial
begin
clk=0;
rd=1;
wr=0;	
end

always
begin
#1
clk=~clk;
end


initial
begin

#2
//x=32'b1_01111111_11000000000000000000000;
y=32'b1_01111111_10000000000000000000000;
//cin=1;
x=5'b0;

#2
x=5'b0;
rd=0;wr=1;
y=32'b1_01111111_11010000000000000000000;

/*
#2
x=32'b0_10000001_11000000000000000000000;
y=32'b1_01111111_10100000000000000000000;
*/

end


always 
begin
#100 $finish;
end 



initial
begin
$monitor($time," x= %b ,  y=%b ,  s=%b \n",x,y,s);
end



endmodule
