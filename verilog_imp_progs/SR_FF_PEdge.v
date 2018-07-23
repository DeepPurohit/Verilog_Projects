module SR_FF_PEdge(Q, Qbar, S, R, clk);
	
	output Q, Qbar;
	input S, R, clk;
	
	reg Q, Qbar;
	
	always @(posedge clk)
		begin
			if(~S && ~R)
				begin
					Q <= Q;
					Qbar <= ~Q;
				end
			else if(~S && R)
				begin
					Q <= 1'b0;
					Qbar <= 1'b1;
				end
			else if(S && ~R)
				begin
					Q <= 1'b1;
					Qbar <= 1'b0;
				end
			else if(S && R)
				begin
					Q <= 1'b1;
					Qbar <= 1'b1;
				end
		end

endmodule
