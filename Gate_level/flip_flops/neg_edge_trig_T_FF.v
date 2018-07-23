module neg_edge_trig_T_FF(Q, Qbar, clk, clear);
	
	output Q, Qbar;
	input clk, clear;
	wire w1;
	
	not (w1, Q);
	neg_edge_trigger_D_FF d0(Q, Qbar, w1, clk, clear);

endmodule
