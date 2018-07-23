module JK_FF(Q, Qbar, Clear, CLK, J, K);
	
	output Q, Qbar;
	input Clear, CLK, J, K;
	
	wire w1, w2, w3, w4;
	
	nand g1(w1, J, CLK, Qbar);
	not (w2, Clear);
	or (w3, w2, w1);
	nand g2(Q, w3, Qbar);
	nand g3(w4, K, CLK, Q);
	nand g4(Qbar, w4, Clear, Q);

endmodule
