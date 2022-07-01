`include "processor.v"

module processor_tb;

      reg clock,clk;

   processor p(clk,clock);

   initial
   begin
     clk = 1'b1;
     clock=1'b1;
    end

   always 
   begin
     #1 clk = ~clk;
     
     end
     
   
   always
   begin
   #35 clock =~clock; //alu op comes at 67th clk cycle
   end
   
   initial
   begin
     #369 $finish;
   end
   
endmodule 
