module df_tb();

reg clk,b;


wire c;

df p(c,b,clk);
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

b=1'b0;

#2
b=1'b1;

#2
b=1'b0;

#2
b=1'b1;


#2
b=1'b0;

#2
b=1'b1;

end


always 
begin
#10000 $finish;
end 


initial
begin
$monitor($time,"%b,%b,%b",c,b,clk);
end
endmodule
