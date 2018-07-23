module JK_FF_CLK_Enable(Q, Qbar, J, K, clk, CE);
	
	output Q, Qbar;
	input J, K, clk, CE;
	reg Q, Qbar;
	
	always @(posedge clk or posedge CE)
		begin
			if(CE)
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
			else if(~CE)
				begin
					Q <= Q;
					Qbar <= Qbar;
				end
		end

endmodule
