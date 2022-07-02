module imemory(addr, d_in, rd, wr, d_out);

   input [4:0]addr;
   input [31:0]d_in;
   input rd, wr;

   output [31:0]d_out;
   reg [31:0]d_out;
   

   reg [31:0]mem[31:0];

   initial
     begin


    mem[0]=32'b10000_11111_000000000000_00000_00001;//shift r1 by r2
	mem[1]=32'b01101_11110_000000000000_00000_00001;// xor
	mem[2]=32'b1001100100;
	mem[3]=32'b0000000000;
	
	// program starts here (e^23= 1 + 23 + (23*23)*0.5)
	
	mem[4]=32'b00101_00101_000000000000_00011_00100; // add 23 and 1
	mem[5]=32'b00111_00110_000000000000_00011_00011; // mul 23 and 23
	mem[6]=32'b00111_00111_000000000000_00110_00010; // mul (23*23) and 0.5
	mem[7]=32'b00101_01000_000000000000_00111_00101; // add (23+1) and (23*23)*0.5
	
	//prog ends
	
	mem[8]=32'b0;	
	mem[9]=32'b0;	
	mem[10]=32'b0;	
	mem[11]=32'b0;	
	mem[15]=32'b0;	
	mem[12]=32'b0000000000;
	mem[13]=32'b0000000000;
	mem[14]=32'b0000000000;
	mem[15]=32'b0001000010;
	mem[16]=32'b0000110100;
	mem[17]=32'b1001100100;
	mem[18]=32'b0000000000;
	mem[19]=32'b0;
	mem[20]=32'b0;
	mem[21]=32'b0;
	mem[22]=32'b0;
	mem[23]=32'b0;	
	mem[24]=32'b0;	
	mem[25]=32'b0;	
	mem[26]=32'b0;	
	mem[27]=32'b0;	
	mem[28]=32'b0000000000;
	mem[29]=32'b0000000000;
	mem[30]=32'b0000000000;
	mem[31]=32'b0000000000;




    end // initial begin*/
   
   
   
   always @ (*)
     begin

	if(rd == 1'b1)
	  begin
	     d_out <= mem[addr];
	     //$display($time, " Reading from M%d = %b", addr, d_out);
	  end
	

	else if(wr == 1'b1)
	  begin
	     mem[addr] <= d_in;
	     //$display($time, " Writing to M%d=%b", addr, mem[addr]);
	  end
	

     end   
   
endmodule // imemory















module dmemory(addr, d_in, rd, wr, d_out);
   input[4:0] addr;
   input [31:0] d_in;
   input rd, wr;
   
   output [31:0] d_out;
   reg [31:0] 	d_out;
   
   
   reg [31:0] 	mem[31:0];
   
   initial
     begin
	mem[0]=10'b0000000000;
	mem[1]=10'b0000111000;
	mem[2]=10'b0001011100;
	mem[3]=10'b0001110100;
	mem[4]=10'b0000000000;
	mem[5]=10'b0;
	mem[6]=10'b0;
	mem[7]=10'b0;
	mem[8]=10'b0;	
	mem[9]=10'b0;	
	mem[10] = 10'd3;
	mem[11] = 10'd4;
	mem[12] = 10'd0;
	mem[13]= 10'd0;
	mem[14]= 10'd0;
	mem[15]= 10'd0;	
	mem[16]=32'b0000110100;//add r3,r2
	mem[17]=32'b1001100100;//mov r6,r2
	mem[18]=32'b0000000000;
	mem[19]=32'b0;
	mem[20]=32'b0;
	mem[21]=32'b0;
	mem[22]=32'b0;
	mem[23]=32'b0;	
	mem[24]=32'b0;	
	mem[25]=32'b0;	
	mem[26]=32'b0;	
	mem[27]=32'b0;	
	mem[28]=32'b0000000000;
	mem[29]=32'b0000000000;
	mem[30]=32'b0000000000;
	mem[31]=32'b0000000000;

     end // initial begin
   
   
   
   
   
   
   
   always @ (*)
     begin

	if(rd == 1'b1)
	  begin
	     d_out = mem[addr];
	     $display($time, " Reading from M%d=%d", addr, d_out);
	  end
	

	if(wr == 1'b1)
	  begin
	     mem[addr] = d_in;
	     $display($time, " Writing to M%d=%d", addr, mem[addr]);
	  end
	

     end

endmodule // dmemory



