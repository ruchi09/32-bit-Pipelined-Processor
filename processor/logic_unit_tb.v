module logic_unit_tb();


reg [31:0]a,b;
reg clk;
reg [2:0]op;

wire [31:0]out;

logic_unit a1(a,b,op,out,clk);

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
b=32'b00001111000011110000111100001111;
op=3'b110;


#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b001;


#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b010;

#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b011;

#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b100;

#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b101;

#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b110;


#2
a=32'b11110000111100001111000011110000;
b=32'b00001111000011110000111100001111;
op=3'b111;

end


initial
begin
#30 $finish;
end

initial
begin
$monitor($time," a=%b,   b=%b,   op=%b,   out=%b ",a,b,op,out);
end

endmodule