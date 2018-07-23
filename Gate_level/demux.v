module demux(o1, o2, in, A);
	output o1, o2;
	input in, A;
	
	wire w1;
	
	not (w1, A);
	and p1(o1, in, w1);
	and p2(o2, in, A);	
	
endmodule
