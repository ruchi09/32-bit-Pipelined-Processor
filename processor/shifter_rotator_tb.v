module shifter_rotator_tb();

reg [31:0]a;
wire [31:0]out;
reg clk;


reg [4:0]bits;
reg [1:0]op;

shifter_rotator ASDF(a,op,bits,out,clk);

/*


op=00 for right shift
op=01 for left shift
op=10 for right rotate
op=11 for left rotate


*/


initial
begin
clk=0;
op=2'b11;
end

always
begin
#1
clk=~clk;
end

initial

begin


#3
a=32'b11110000111100001111000011111111;
bits=5'b00000;
op=2'b10;


#3
a=32'b11110000111100001111000011110000;
bits=5'b01111;
op=2'b11;

/*
#3
a=32'b11000000000000000000000000000011;
bits=5'b10000;



#3
a=32'b11000000000000000000000000000011;
bits=5'b01000;


#3
a=32'b11000000000000000000000000000011;
bits=5'b00100;


#3
a=32'b11000000000000000000000000000011;
bits=5'b00010;


#3
a=32'b11000000000000000000000000000011;
bits=5'b00001;

#3
a=32'b11000000000000000000000000000011;
bits=5'b11111;


#3
a=32'b00011111111111111111111111111111;
bits=5'b00110;

*/

end



always 
begin
#50 $finish;
end 


initial
begin
$monitor($time," out=%b    a=%b   op=%b     bits=%b\n",out,a,op,bits);
end
endmodule
