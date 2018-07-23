module SR_FF_sc(Q, Qb, S, R, clk, clear);
	
	output Q, Qb;
	input S, R, clk, clear;
	reg Q, Qb;
	
		always @(posedge clear, negedge clk)
			begin
				case(clear)
					1'b0:	begin
							Q<=Q;
							Qb<=Qb;
							end
					1'b1:	begin
							Q<=0;
							Qb<=1;
							end
				endcase
			end
	always @(negedge clk)
		begin
			case({S,R})
					2'b00:
							begin
								Q<=Q;
								Qb<=Qb;
							end
					2'b01:
							begin
								Q<=0;
								Qb<=1;
							end
					2'b10:
							begin
								Q<=1;
								Qb<=0;
							end
					2'b11:
							begin
								Q<=1;
								Qb<=1;
							end
				endcase
		end
	

endmodule
