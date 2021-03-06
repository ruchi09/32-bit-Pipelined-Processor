
`include "memory.v"
`include "register32.v"
`include "alu2.v"

module processor(clk,clock);


input clk, clock;
//input [31:0]dout;
reg [31:0] din,a,b,a1,b1;
wire [31:0]rd1,rd2;
wire [63:0]out;
reg [31:0]outr;
wire [31:0]dout;
reg rd,wr,rrd,wrr;

reg [4:0] rsrc1,rsrc2,rdst;
reg [31:0]WData;

reg f , d , e , w, o ; 


reg [4:0]pc;      //program counter
reg [4:0]op,opcode,opcode1;    //opcode
reg [4:0]mar;   // Mem Address reg
reg [31:0]ir,ir1;   // Instruction reg



imemory memory1(mar,din,rd,wr,dout);     // Instruction mem

registers reg1(rsrc1,rsrc2,rdst, WData, rrd, wrr, rd1, rd2,clk);   

alu  alu1(a,b,opcode,out,clk);




initial 
begin 

pc = 5'd4;

f = 1 ; 
d = 0 ; 
e = 0 ; 
o=0;
w = 0 ;
rd = 1 ;
wr=0;
end 







always @(posedge clk) begin // instruction fetch
            
         if(f) begin  
        mar = pc ;
        rd=1;
        rrd=0;
        wrr=0;
         ir <= dout;  
         pc <=pc+1; 
        f = 0;
        
        w=0;
        e=0;
        
        #1 $display($time,"      INSTRUCTION FETCH Fetched IR =  %b\n",ir);
        d = 1 ;
        end 
end



always @(posedge clk) begin //decode
        
         if (d) begin 
                rd = 1 ;
                op <= ir [31:27] ;   // OPCODE 
                rdst   <= ir [26:22] ;   // RDST 
                rsrc1  <= ir [4:0]   ;   // SRC1
                rsrc2  <= ir [9:5]   ;   // SRC2
       
         
        
         e  = 0;
         d = 0;
         
         $display($time,"      INSTRUCTION DECODE (opcode)%b  (rsrc1)%d  (rsrc2)%d  (rdst)%d\n",op , rsrc1 ,rsrc2,rdst);
         w=0;
         o=1;
        
        
        end

end 

always @(posedge clk) begin //operand fetch
        
         if (o) begin 
        
            rd=0;       
            rrd<=1;

            opcode1 <= op;
            o=0;
            a1<=rd2;
            b1<=rd1; 
            
            #1             e=1;
        $display($time,"      OPERAND FETCH    (opcode)%b  \n  \t \t\t \t\trsrc1=%b\n \t\t\t\t\t rsrc2=%b    \n",opcode ,b, a);
       
        end

end



always @(posedge clk) begin //execute
        
         if (e ) begin
                 
			outr<=out;
			opcode <= opcode1;
			w = 1;
			e = 0;  
        	a <= a1; 
            b <= b1; 
        #70 $display($time,"      EXECUTE (opcode)%b  \n   \t\t \t\t   a=%b  \n    \t \t\t\t  b=%b  \n \t \t \t\t  ans=%b\n",opcode ,a, b ,out);
                
        
        end

end 

always @(posedge clk) begin //write
      
         if (w) begin 
                
               
            wrr=1;
            WData <= outr[31:0];
            rrd=0;
            w=0;
            
             
            
           #1 $display($time,"      WRITE BACK ---  R%d= %b\n\n\n\n\n",rdst,outr[31:0]);
           f=1;
                   
             
                
                
        end

end 

/*
always @(posedge clk) begin

$monitor("\n\n----------------------------------",$time,"             -------------------------------\n\n",
"INSTRUCTION FETCH Fetched IR =  %b\n",ir,
"INSTRUCTION DECODE (opcode)%b  (rsrc1)%d  (rsrc2)%d  (rdst)%d\n",op , rsrc1 ,rsrc2,rdst,
"OPERAND FETCH    (opcode)%b        \trsrc1=%b        rsrc2=%b    \n",opcode1 ,a1, b1,
"EXECUTE (opcode)%b  \n   \t\t \t\t   a=%b  \n    \t \t\t\t  b=%b  \n \t \t \t\t  ans=%b\n",opcode ,a, b ,out,
"WRITE BACK ---  R%d= %b\n\n\n\n\n",rdst,outr[31:0]);
end*/

endmodule
