module Bitwise_operator();
    reg [5:0] x=0;
	reg [5:0] y=0;
	reg [5:0] result=0;
	
	initial begin 
	  $monitor("print anyone variable changes x=%b,y=%b,result=%b" , x,y,result);
	  
	end
	
	initial begin
	  #1
	  x=6'b00_0101;
	  y=6'b11_0001;
	  result=x & y;
	  
	  #1;
	  //result = x ~& y;  reduction operators in Verilog (unary), not binary bitwise operators.
	  #1
	  result = ~(x & y);
	  #1
	  x= 6'b10_0101;
	  y=6'b01_1011;
	  result=x|y;
	  #1
	  result = ~(x|y);
	  
	  //result = x ~| y ;   reduction operators in Verilog (unary), not binary bitwise operators.
	  
	end 
endmodule
 