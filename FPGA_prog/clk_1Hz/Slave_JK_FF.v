module Slave_JK_FF(J, K, Clear, clk, Q, Qb);

	output Q, Qb;
	input J, K, Clear, clk;
	
	wire clk_W;
    reg Q, Qb;
        
    MHz_to_1Hz ck(.clk_in(clk), .led_clk(clk_W), .Reset(Clear));
	
	always @(posedge w1 or posedge Clear)
		begin
			if(Clear)
				begin
					Q <= 1'b0;
					Qb <= 1'b1;
				end
			else
				begin
							case({J,K})
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
											Q <= ~Q;
											Qb <= ~Qb;
										end
							endcase
						end
				end
		end

endmodule
