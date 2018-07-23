module SR_FF_V2(Q, Qbar, S, R, CLK);
	
	output Q, Qbar;
	input S, R, CLK;
	
	wire w1, w2;
	
	nand g1(w1, S, CLK);
	nand g2(Q, w1, Qbar);
	nand g3(w2, R, CLK);
	nand g4(Qbar, Q, w2);
	
endmodule
