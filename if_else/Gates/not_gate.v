module not_gate(out, a);

	output out;
	reg out;
	input a;
	
	always @(a)
		begin
			if(a)
				out=!a;
			else
				out=a;
		end
	
endmodule
