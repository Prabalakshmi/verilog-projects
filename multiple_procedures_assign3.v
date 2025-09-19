module multiple_procedure();
  reg x= 1'b0;
  reg y= 1'b1;
  reg z;
  
  // procedure_1
  always @(z) begin
      $display ("\n\t x=%b, y=%b, z=%b", x,y,z);
  end
  
  //procedure_2
  initial begin
      #2;
	  z=x^y;
	  #10;
	  //y=0;
	  z=x|y;
	  #10;
	  z=~z;
	  #10;
  end
endmodule