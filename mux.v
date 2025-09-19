module mux(
  input PB0,
  input [2:0] comp_out,
  input [3:0] prod_out,
  output reg [3:0]result
  );

  always @(*) begin
    if(PB0==1'b0) begin
	   result={1'b0, comp_out};
	   end
	
	else begin
	   result=prod_out;
        
	end
      end
	
endmodule