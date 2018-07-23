module Swapping2_blocking(A,B,clk);
	output A,B;
	input clk;
	reg A, B;
	
		always @(clk)
			begin
				A=B;
				B=A;
			end

endmodule
