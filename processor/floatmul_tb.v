`include "floatmul.v"

module floatmul_tb();

reg [31:0]x,y;
reg clk;
wire [31:0]s;

floatmul mul32(x,y,s,clk);


initial
begin
clk=0;
end

always
begin
#1
clk=~clk;
end


initial
begin

#2
x=32'b1_01111111_11000000000000000000000;
y=32'b1_01111111_10000000000000000000000;



#2
x=32'b1_01111111_11100000000000000000000;
y=32'b1_01111111_11010000000000000000000;



#2
x=32'b0_10000001_11000000000000000000000;
y=32'b1_01111111_10100000000000000000000;



end


always 
begin
#100 $finish;
end 



initial
begin
$monitor($time," x= %b ,  y=%b ,  ans=%b\n",x,y,s);
end



endmodule
