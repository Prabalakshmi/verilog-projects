//DataType exaple
module sum_product();
  integer a,b, sum_tot;
  real x,y,prod_tot;
  
  initial begin
     a=3;
	 b=9;
	 sum_tot= a + b;
	 $display("\n\t a = %0d, b = %0d, sum = %0d" , a ,b, sum_tot);
	 
	 x=99.6;
	 y=-33.4;
	 prod_tot = x * y;
	 $display("\n\t x = %0.2f, y = %0.2f, prod_tot = %0.2f" , x,y, prod_tot);
  end
endmodule