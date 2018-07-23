module Four_Bit_Signed_UpCounter(Q, clk, reset);
	
	output signed [3:0]Q;
	input clk, reset;
	reg signed [3:0]Q;
	
	/*initial
		Q = 4'b1001;
	*/
	always @(posedge clk or posedge reset)
		begin
			case (reset)
				1'b0: 
						/*begin
							if(Q == 4'b0111)
								Q <= 4'b1001;
							else*/
								Q <= Q + 1;
						//end
				1'b1: Q <= 4'b0;
			endcase
		end

endmodule
