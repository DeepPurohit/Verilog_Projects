module Eight_Bit_SISO_Shift_Reg(Q, D, clk, clear);
	
	output Q;
	input D, clk, clear;
	reg [7:0]temp;
	
	always @(posedge clk or posedge clear)
		begin
			if(clear)
				temp <= 8'b0;
			else
					temp <= {temp[6:0],D}; //conactinating temp 7 values and 1 D(data i/p) 
		end
		assign Q = temp[7]; //copying temp values to Q o/p

endmodule
