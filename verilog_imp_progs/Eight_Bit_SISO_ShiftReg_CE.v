module Eight_Bit_SISO_ShiftReg_CE(Qout, Din, clk, clear, CE);
	
	output Qout;
	input Din, clk, clear, CE;
	reg [7:0]temp;
	reg Qout;
	
	always @(posedge clk or posedge clear or posedge CE)	
		begin
			if(clear)
				temp <= 8'b0;
			else
				begin
					if(CE)
							temp <= {temp[6:0],Din};
					else
							temp <= temp;
					Qout = temp[7];
				end
		end
endmodule
