module SR_Latch(Q, Qbar, S, R, En);

	output Q, Qbar;
	input S, R, En;
	reg Q, Qbar;
	
	always @(*)
	begin
		if(En)
			begin
				 if(~S & ~R)
					begin
						Q <= Q;
						Qbar <= Qbar;
					end
				else if(~S & R)
					begin
						Q <= S;
						Qbar <= R;
					end
				else if(S & ~R)
					begin
						Q <= S;
						Qbar <= R;
					end
				else if(S & R)
					begin
						Q <= ~S;
						Qbar <= ~R;
					end
			end
		
		else if(~En)
			begin
				Q <= Q;
				Qbar <= Qbar;
			end
	end
endmodule
