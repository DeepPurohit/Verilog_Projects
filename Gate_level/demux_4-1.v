module demux_1_4(o1, o2, o3, o4, in, A, B);
	
	output o1, o2, o3, o4;
	input in, A, B;
	
	wire w1, w2;
	
	not a(w1, A);
	not b(w2, B);
	
	and p1(o1, in, w1, w2);
	and p2(o2, in, w1, B);
	and p3(o3, in, A, w2);
	and p4(o4, in, A, B);

endmodule
