module SR_FF_Sync_Set(Q, Qbar, S, R, clk, set);
	
	output Q, Qbar;
	input S, R, clk, set;
	reg Q, Qbar;
	
	always @(posedge clk)
		begin
			if(set)
				begin
					Q <= set;
					Qbar <= ~set;
				end
			else if(~S && ~R)
				begin
					Q <= Q;
					Qbar <= Qbar;
				end
			else if((S || ~S) && (R || ~R))
				begin
					Q <= S;
					Qbar <= R;
				end
		/*	else if(S && ~R)
				begin
					Q <= S;
					Qbar <= R;
				end
			else if(S && R)
				begin
					Q <= S;
					Qbar <= R;
				end*/
		end

endmodule
