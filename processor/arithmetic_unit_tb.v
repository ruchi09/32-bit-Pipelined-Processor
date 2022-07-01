`include "arithmetic_unit2.v"

module arithmetic_unit_tb();

reg [31:0]a,b;
reg clk;
reg [2:0]op;

wire [63:0]out;

arithmetic_unit   aq(a,b,op,out,clk);


initial
begin
clk=0;

end


always
begin
#1 clk=~clk;
end


initial
begin
/*
#2
a=32'b11110000111100001111000011111111;
b=32'b00001111000011110000111100000000;
op=3'b000;




#2
a=32'b1_01111111_11000000000000000000000;  //1.1
b=32'b1_01111111_10000000000000000000000;   //1.11 ans =10.101 
op=3'b111;
/*

#2
a=32'd11111;
b=32'd10;
op=3'b100;





#2
a=32'b0_01111111_00000000000000000000000;
b=32'b0_10000011_01110000000000000000000;
op=3'b101;
*/


#2
a=32'b1_01111111_11000000000000000000000;  //1.1
b=32'b1_01111111_10000000000000000000000;   //1.11 ans =11.01 
op=3'b111;
/*
#2
a=32'd23;
b=32'd11;
op=111;
/*
#2
a=32'd23;
b=32'd11;
op=001;


#2
a=32'd23;
b=32'd11;
op=010;


#2
a=32'd23;
b=32'd11;
op=011;

*/

end


initial
begin
#400 $finish;
end

initial
begin
$monitor($time," a=%b,   b=%b,   op=%b,   out=%b ",a,b,op,out[31:0]);
end

endmodule
