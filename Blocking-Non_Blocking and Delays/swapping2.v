module swapping2(A,B,C,D,clk);
	output A,B;
	input clk,C,D;
	reg temp;
	
			always @(posedge clk)
			begin
			A=C;
			B=D;
				 temp=D;
			    D=C;
				 C=temp;
			end

endmodule
