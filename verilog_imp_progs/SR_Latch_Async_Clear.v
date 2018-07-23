module SR_Latch_Async_Clear(Q, Qbar, S, R, En, clear);

	output Q, Qbar;
	input S, R, En, clear;
	reg Q, Qbar;
	
	always @(posedge clear)
		begin
		case(clear)
			1'b0:	begin
						Q <= Q;
						Qbar <= Qbar;
					end
			1'b1:	begin
						Q <= 1'b0;
						Qbar <= 1'b1;
					end
		endcase
		case (En)
				1'b0:
						begin
							Q <= Q;
						Qbar <= Qbar;
						end
				1'b1:
						case({S,R})
							2'b0: begin
										Q <= Q;
										Qbar <= Qbar;
									end
							2'b01: begin
										Q <= 1'b0;
										Qbar <= 1'b1;
									end
							2'b10: begin
										Q <= 1'b1;
										Qbar <= 1'b0;
									end
							2'b11: begin
										Q <= 1'b1;
										Qbar <= 1'b1;
									end
						endcase
			endcase
		end
	
endmodule
