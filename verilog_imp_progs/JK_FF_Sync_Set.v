module JK_FF_Sync_Set(Q, Qbar, J, K, clk, set);
	
	output Q, Qbar;
	input J, K, clk, set;
	reg Q, Qbar;
	
	always @(posedge clk)
		begin
			if(set)
				begin
					Q <= set;
					Qbar <= ~set;
				end
			else if(~J && ~K)
				begin
					Q <= Q;
					Qbar <= Qbar;
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
