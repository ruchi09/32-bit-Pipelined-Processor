module dot(gl,gr,al,gout);

output gout;
input gl,gr,al;

assign gout=gl | al&gr;
endmodule