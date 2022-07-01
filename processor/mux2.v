module mux2(i0,i1,s,out,c);
input i0,i1,s,c;
output out;
wire o;
reg out;
assign o =i0&(~s) | i1&s;


	always @ (posedge c)
	   begin 
		 out<=o;
	   end



endmodule
