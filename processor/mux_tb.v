module mux_tb();

reg s;
reg a0,a1,clk;
wire out;


mux2 m(a0,a1,s,out,clk);


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
//s[2]=0;
#2
s=0;


a0=1;
a1=0;
//a2=0;
//a3=1;
//a4=1;

#2
s=1;


a0=1;
a1=0;
//a2=0;

#2
s=0;
//s[0]=1;


a0=1;
a1=0;
//a2=0;


end

always
begin
#10 $finish;
end 


initial
begin
$monitor($time," out=%b, a0=%b  clk=%b",out,a0,clk);
end

endmodule
