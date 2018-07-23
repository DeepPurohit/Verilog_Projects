module JK_FF_Nedge(Q, Qbar, J, K, clk, clear);

	output Q, Qbar;
	input J, K, clk, clear;
	reg Q, Qbar;
	

	always @(negedge clk or posedge clear)
		begin
			if(clear)
				begin
					Q <= 1'b0;
					Qbar <=1'b1;
				end
			else if(~J && ~K)
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
