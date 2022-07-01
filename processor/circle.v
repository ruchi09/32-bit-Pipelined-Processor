module circle(gl,gr,al,ar,gout,aout);

output gout,aout;
input gl,gr,al,ar;

assign gout=gl | al&gr;
assign aout= al & ar;

endmodule