module CSA_tb();


reg [31:0]a,b,cin;
wire [31:0]cout,s;
reg clk;




CSA csa1(a,b,cin,cout,s,clk);

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
/*
#2
a=32'd23;
bits=5'd1;
c=0;


#2
a=32'd99;
b=32'd100;
c=0;


#2
a=32'd55;
b=32'd44;
c=0;


#2
a=32'd9;
b=32'd1;
c=0;

*/

#2
a=32'b00000000000000001111000011110000;
b=32'b00001111000011110000111100001111;
cin=32'b00000000000000000000000000000000;

#2
a=32'b01111111111111111111111111111111;
b=32'b00000000000000000000000000000000;
cin=32'b00000000000000000000000000000000;





end



always 
begin
#25 $finish;
end 


initial
begin
$monitor($time,"\n%b, %b, %b, %b, %b, %b\n",cout,s,a,b,cin,clk);
end


endmodule
