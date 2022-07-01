module dff_tb();

reg a,clk,b;


wire s;
wire c;

dff p(c,s,a,b,clk);
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
a=1'b1;
b=1'b0;

#2
a=1'b0;
b=1'b1;

end


always 
begin
#100 $finish;
end 

initial
begin
$monitor($time,"\n%b\n,%b\n,%b\n,%b\n,%b\n",c,s,a,b,clk);
end
endmodule
