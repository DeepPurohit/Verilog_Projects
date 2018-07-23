module Four_Bit_Multiplier(A, B, s0, s1, Result, sel, Reset);

	output [8:0]Result;
	input [3:0]A,B;
	input [1:0]sel;
	input s0, s1, Reset;
	
	reg temp;
	reg [7:0]TResult;
	reg [8:0]Result;
	
	always @(*)
		begin
			if(Reset)
				begin
					TResult <= 8'b0;
					temp <= 1'b0;
				end
			else
				begin
					if(sel === 2'b01)
					   begin
					       temp <= s0^s1;
                           if(temp)
                              begin
                                 if(~s0 && s1)
                                     TResult <= A*(-B);
                                 else if(s0 && ~s1)
                                      TResult <= (-A)*B;
                              end
                            else if(~temp)
                                 TResult <= A*B;
					   end
					 
					 else
					   begin
					       TResult <= 8'b0;
                           temp <= 1'b0;
					   end
				end
			Result <= {temp, TResult};
		end
	
endmodule

