module Divider(A, B, Q, s0, s1, sel, reset);
    
    output [8:0]Q;
    input [3:0]A, B;
    input s0, s1, reset;
    input [1:0]sel;
    
    reg [7:0]Qr;
    reg [8:0]Q;
    
    always @(*)
        begin
			if(reset)
				begin
					Q <= 9'b0;
				end
			else
			    begin
			         if(sel === 2'b10)
                        begin
                            if((s0 && ~s1) || (~s0 && s1))
										begin
                                Qr <= A/B;
										  Q <= ((~Qr)+1);
										 end
  
                            else
                                Q <={0, A/B};
                        end
                     else
                        begin
                            Q <= 9'b0;
                        end
                 end
		  //Q <= {temp, Qr};
        end
endmodule
