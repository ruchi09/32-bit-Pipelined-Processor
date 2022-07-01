module mux_tb();

reg s;
reg [31:0]a0,a1;
reg clk;
wire [31:0]out;


mux32 m(a0,a1,s,out,clk);


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
s=0;
a0=32'd11;
a1=32'd0;



#2
s=1;
a0=32'd1;
a1=32'd110;



#2
s=0;
a0=32'd12;
a1=32'd40;



end

always
begin
#10 $finish;
end 


initial
begin
$monitor($time," out=%b, a0=%b,  a1=%b,  s=%b  \n",out,a0,a1,s);
end

endmodule
