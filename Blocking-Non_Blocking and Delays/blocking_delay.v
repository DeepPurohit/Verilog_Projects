module blocking_delay(out_and, out_or, out_not, a,b,c,d,e);

	input a,b,c,d,e;
	output out_and, out_or, out_not;
	
	//reg initialisation
	reg out_and, out_or, out_not;
	//loop block
	always @(*)
	begin
	  #5 out_and = a&&b;
	  #5 out_or = c||d;
	  #5 out_not = !e;
	end
endmodule
