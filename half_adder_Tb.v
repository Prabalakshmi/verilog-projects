module testbench();
  reg a;
  reg b;
  wire sum;
  wire carry;
  
  //DUT TB connection
  
  half_adder_structrual HALF_ADD(
   .a(a),
   .b(b),
   .sum(sum),
   .carry(carry)
   );

  initial begin 
     $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
	 
  end
  
  initial begin
     #1 ; a=0 ; b=0;
	 #1; a=0;b=1;
	 #1; a=1;b=0;
	 #1 ; a=1;b=1;
	 #1; a=0;b=0;
	 
  end
  
 endmodule