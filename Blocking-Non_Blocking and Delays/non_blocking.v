module non_blocking(out_and, out_or, out_not, a,b,c,d,e);
	input a,b,c,d,e;
	output out_and, out_or, out_not;
	
	reg out_and, out_or, out_not;
	
	always@(*)
	begin
		out_and = #6 a&&b;
		out_or = #4 c||d;
		out_not = #2 !c;
	end
endmodule
