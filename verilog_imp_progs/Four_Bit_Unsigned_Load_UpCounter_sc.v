module Four_Bit_Unsigned_Load_UpCounter_sc(Q, in, load, clk, clear);
	
	output [3:0]Q;
	input [3:0]in;
	input load, clk, clear;
	reg [3:0]Q;
	
	always @(posedge clk or posedge clear or posedge load)
		begin
			case (clear)
				1'b0: 
						begin
							case (load)
								1'b0: Q <= Q + 1'b1;
								1'b1: Q <= in;
							endcase
						end
				1'b1: Q <= 4'b0;
			endcase
		end

endmodule
