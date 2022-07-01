module alu_tb();


reg [31:0]a,b;
reg clk;
reg [4:0]op;

wire [63:0]out;

alu a1(a,b,op,out,clk);

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

#2
a=32'b11110000111100001111000011111111;
b=32'b00001111000011110000111100000011;
op=5'b01000;

/*
#100
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=5'b10001;
*/

end


initial
begin
#1000 $finish;
end

initial
begin
$monitor($time," a=%b,   b=%b,   op=%b,   out=%b ",a,b,op,out[31:0]);
end

endmodule
