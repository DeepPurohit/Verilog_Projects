module JK_FF_V2(Q, Qbar, CLK, J, K);
	
	output Q, Qbar;
	input CLK, J, K;
	
	wire w1, w2;
	
	nand g1(w1, J, CLK, Qbar);
	nand g2(Q, w1, Qbar);
	nand g3(w2, K, CLK, Q);
	nand g4(Qbar, w2, Q);

endmodule
