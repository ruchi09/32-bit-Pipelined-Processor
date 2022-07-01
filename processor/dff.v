module dff(q,q2,d,d2,c);
output q,q2;
 input d,c,d2;
 reg q,q2;
 
	always @ (posedge c)
	   begin 
		 q<=d;
	     q2<=d2;
	   end
endmodule
