module JK_FF_PEdge(Q, Qbar, J, K, clk);
	
	output Q, Qbar;
	input J, K, clk;
	reg Q, Qbar;
	

	always @(posedge clk)
		begin
			if(~J && ~K)
				begin
					Q <= Q;
					Qbar <= ~Q;
				end
			else if(~J && K)
				begin
					Q <= J;
					Qbar <= K;
				end
			else if(J && ~K)
				begin
					Q <= J;
					Qbar <= K;
				end
			else if(J && K)
				begin
					Q <= ~Q;
					Qbar <= ~Qbar;
				end
		end
	
endmodule
