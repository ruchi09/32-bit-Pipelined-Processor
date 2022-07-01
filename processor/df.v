module df(q,d,c);
output q;
 input d,c;
 reg q;
 
	always @ (posedge c)
	   begin 
		 q<=d;
	   end
endmodule
