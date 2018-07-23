module FourBit_Unsigned_UpCounter_CE(Q, clk, clear, CE);
	
	output [3:0]Q;
	input clk, clear, CE;
	reg [3:0]Q;
	
	always @(posedge clk or posedge clear or posedge CE)
		begin
			case (clear)
				1'b0:
						begin
							case (CE)
								1'b0: Q <= Q;
								1'b1:Q <= Q+1;
							endcase
						end
				1'b1: Q <= 4'b0;
			endcase
		end

endmodule
