`include "floatadder2.v"

module floatadder_tb();

reg [31:0]x,y;
reg clk,cin;
wire [31:0]s;


floatadder add32(x,y,cin,s,clk);


initial
begin
clk=0;
cin=1;	
end

always
begin
#1
clk=~clk;
end


initial
begin
/*
#2
x=32'b0_01111111_00000000000000000000000;
y=32'b0_10000011_01110000000000000000000;


#2
x=32'b0_01111111_00000000000000000000000;
y=32'b0_10000011_11110000000000000000000;
*/
#2
x=32'b0_01111111_10000000000000000000000;
y=32'b0_10000011_01110000000000000000000;
//cin=1;


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
