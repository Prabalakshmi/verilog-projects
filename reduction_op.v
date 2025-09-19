module reduction_op();
  reg [4:0] x = 5'b1_1111;
  reg [8:0] y = 9'b1_0101_1110;
  reg result;
  
  initial begin
    $monitor("x=%b, y=%b, result=%b", x,y, result);
	
  end
  
  initial begin
    result= &x;
	#1 result = ~&x;
	#1 result =|y;
	#1 result =~|y;
	
  end
endmodule  