module df64(q,d,c);
output [63:0]q;
 input [63:0]d;
 input c;
 reg [63:0]q;
       

	   always @ (posedge c)
	   begin 
		 q<=d;
	   end
endmodule
