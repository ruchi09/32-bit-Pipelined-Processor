module registers(rs1, rs2, ws, wd, rf, wf, rd1, rd2);

   input [4:0] rs1, rs2, ws;
   input rf, wf;
   input [31:0] wd;

   output [31:0] rd1, rd2;
       reg [31:0] 	rd1, rd2;
   
       reg [31:0]    register[31:0];

   integer 	i;
 /*  
   initial
     begin
    register[0] = 32'b11110000111100001111000011110000;
    register[1] = 32'b00000000000000000000000000000100;
    
    //data for program
    
    register[2] = 32'b0_01111110_00000000000000000000000; // .5
    register[3] = 32'b0_10000011_01110000000000000000000; //23
    register[4] = 32'b0_01111111_00000000000000000000000; //1
    
    
    register[5] = 32'b0;
    register[6] = 32'b0;
    register[7] = 32'b0;
	
    register[8] =	32'h8;
    register[9] =	32'h9;
    register[10] =	32'h10;
    register[11] =  32'h11;
    register[12] =	32'h12;
    register[13] =	32'h13;
    register[14] =	32'h14;
    register[15] =	32'h15;
    
    register[16] =	32'h16;
    register[17] =	32'h17;
    register[18] =	32'h18;
    register[19] =	32'h19;
    register[20] =	32'h20;
    register[21] =	32'h21;
    register[22] =	32'h22;
    register[23] =	32'h23;
    
    register[24] =	32'h24;
    register[25] =	32'h25;
    register[26] =	32'h26;
    register[27] =	32'h27;
    register[28] =	32'h28;
    register[29] =	32'h29;
    register[30] =	32'h30;
    register[31] =	32'h31;
    


	
	
	
	

     end // initial begin*/
   
	

   always @ (*)
     begin

	
	if(wf == 1'b1)
	  begin
	         register[ws] = wd;
	     //$display($time, " Writing into the     register R%b=%b", ws,     register[ws]);
	  end

	if(rf == 1'b1)
	  begin
	     rd1 =     register[rs1];
	     rd2 =     register[rs2];
	    // #1 $display($time, " Reading from the     regs R%d=%d, R%d=%d",rs1,rd1,rs2,rd2);
	     
	  end
	
	

     end // always @ (*)

endmodule //     registers
 
