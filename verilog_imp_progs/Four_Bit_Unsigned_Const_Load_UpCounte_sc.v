module Four_Bit_Unsigned_Const_Load_UpCounte_sc(Q, load, clk, clear);
	
	output [3:0]Q;
	input load, clk, clear;
	reg [3:0]Q, val;
		
	always @(posedge clk or posedge clear or posedge load)
		begin
			assign val = 4'b0100;

			case (clear)
				1'b0: 
						begin
							case (load)
								1'b0: Q <= Q + 1'b1;
								1'b1: Q <= val;
							endcase
						end
				1'b1: Q <= 4'b0;
			endcase
		end
endmodule
