module SR_FF(Q, Qbar, S, R, CLK, Clear);
	
	output Q, Qbar;
	input S, R, CLK, Clear;
	
	wire w1, w2, w3, w4, w5;
	
	nand g1(w1, S, CLK);
	not (w2, Clear);
	or (w3, w2, w1);
	nand g2(Q, w3, Qbar);
	nand g3(w4, R, CLK);
	nand g4(Qbar, Clear, Q, w4);
	
endmodule
