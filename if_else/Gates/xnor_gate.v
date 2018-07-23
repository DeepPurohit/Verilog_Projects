module xnor_gate(out, a, b);
	
	output out;
	input a,b;
	
	reg out;
	always @(a or b)
		begin
			if(!a && !b)
				out=1;
			else if(!a && b)
				out=0;
			else if(a && !b)
				out=0;
			else
				out=1;
		end

endmodule
