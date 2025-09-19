module adder_testbench();
      reg [7:0] a =0;  // width should be same as DUT widths 
	  reg [7:0] b =0;  // inputs must be reg and outputs - wire
	  wire [8:0] sum;
	  
	  adder8bit Adder1(
	      .a(a),
		  .b(b),
		  .sum(sum)
		);
		  
	  initial begin
	    $monitor("a=%d, b=%d , sum=%d", a,b,sum);
	  end
	  
	// generate stimulus
	initial begin
	   #1;
	   a=1;
	   #1; 
	   b=10;
	   #1;
	   a=3; 
	   b=99;
	   #1;
	   a=100;b=1;
	   
	end
endmodule