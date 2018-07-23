module Swapping_non_blocking(A,B,clk);
	output A,B;
	input clk;
	reg A, B;
	
	initial
		begin
			A=1;
			B=0;
		end
			always @(posedge clk)
			begin
				 A<=B;
			    B<=A;
			end

endmodule
