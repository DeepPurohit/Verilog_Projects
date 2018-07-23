module SR_FF(S, R, Clear, clk, Q, Qb);

	output Q, Qb;
	input S, R, Clear, clk;
	
	wire w1;
	reg Q, Qb;
	
	MHz_to_1Hz ck(.clk_in(clk), .led_clk(w1), .Reset(Clear));
	
	always @(posedge w1 or posedge Clear)
		begin
			if(Clear)
				begin
					Q <= 1'b0;
					Qb <= 1'b1;
				end
			else
				begin
							case({S,R})
								2'b00: 
										begin
											Q <= Q;
											Qb <= Qb;
										end
								2'b01: 
										begin
											Q <= 1'b0;
											Qb <= 1'b1;
										end
								2'b10: 
										begin
											Q <= 1'b1;
											Qb <= 1'b0;
										end
								2'b11: 
										begin
											Q <= 1'b1;
											Qb <= 1'b1;
										end
							endcase
						end
		end

endmodule

