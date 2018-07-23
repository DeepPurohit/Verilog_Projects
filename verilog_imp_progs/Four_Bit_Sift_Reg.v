module Four_Bit_Sift_Reg_PISO(Qout, in, clk, CE, set, load);
	
	output Qout;
	input [3:0]in;
	input clk, CE, set, load;
	reg Qout;
	reg [3:0]i;
	
	always @(posedge clk or posedge set or posedge CE)
		begin
			if(set)
				begin
					Qout <= 1'b1;
				end
			else
				begin
					if(CE)
						begin
							if(load)
								i <= in;
							else
								begin
									Qout <= i[0];
									i <= i >> 1'b1;
								end
						end
					else
						Qout <= Qout;
				end
		end

endmodule
