module half_adder_structrual(
  input a,
  input b,
  output sum,
  output carry );
  
  xor XOR1(sum, a, b);
  and AND1(carry, a,b);
  
 endmodule