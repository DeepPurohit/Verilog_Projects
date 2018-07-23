module Up_Down_Mode_Counter(Q, clk, clear, mode);
	
	output [3:0]Q;
	input clk, mode, clear;
	
	reg [3:0]Q;
	
	always @(negedge clk or posedge clear)
		begin
			if(clear)
				Q <= 4'b0;
			else if(mode)
				begin
					Q<=4'b1111;
					Q<= Q-1;
				end
			else if(!mode)
				begin		
					Q<=4'b0000;
					Q<= Q+1;
				end
		end

endmodule
