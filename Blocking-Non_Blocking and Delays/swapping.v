module swapping(A,B,clk);
	output A,B;
	input clk;
	reg A, B, temp;
	
	initial
		begin
			A=1;
			B=0;
			end
			always @(posedge clk)
			begin
				 temp=A;
			    B=A;
				 A=temp;
			end

endmodule
