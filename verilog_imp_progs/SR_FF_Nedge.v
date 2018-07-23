module SR_FF_Nedge(Q, Qbar, S, R, clk, clear);
	
	output Q, Qbar;
	input S, R, clk, clear;
	reg Q, Qbar;
	

	always @(posedge clk or posedge clear)
		begin
			if(clear)
				begin
					Q <= 1'b0;
					Qbar <=1'b1;
				end
			else if(~S && ~R)
				begin
					Q <= Q;
					Qbar <= ~Q;
				end
			else if(~S && R)
				begin
					Q <= S;
					Qbar <= R;
				end
			else if(S && ~R)
				begin
					Q <= S;
					Qbar <= R;
				end
			else if(S && R)
				begin
					Q <= ~Q;
					Qbar <= ~Qbar;
				end
		end

endmodule
