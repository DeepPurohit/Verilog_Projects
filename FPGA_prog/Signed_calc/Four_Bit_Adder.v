module Four_Bit_Adder(A, B, s0, s1, Result, sel, Reset);

    output [8:0]Result;
    input [3:0]A,B;
    input Reset, s0, s1;
    input [1:0]sel;
    reg [7:0]TResult;
    reg [8:0]Result;
    reg temp;
    always @(*)
        begin
            if(Reset)   //if reset then Result = 0
                begin
                    TResult <= 8'b0;
                    temp <= 1'b0;
                end
            else
                begin
                    if(sel === 2'b0) // if selected
								begin  //start
									if(s0 && ~s1)   //if A is -ve
										begin
                                            if(A>B)  // if -A and A>B
                                                begin
                                                   TResult <= B - A;  // Do B - A and temp = 1
                                                   temp <= 1'b1;
                                                end
                                            else if(A<B) //if -A and A<B
                                                 begin
													TResult <= B - A;  // Do normal minus A-B
                                                    temp <= 1'b0;  //make temp = 0
                                                 end  // -A<B condition -> End  
                                             else if(A === B)
                                                begin
                                                    TResult <= B-A;
                                                    temp <= 1'b0;  
                                                end                                                                                                                                                                                                     
                                          end    // A is -ve condition -> End
                                                    
                            else if(~s0 && s1) //if B is -ve
                                begin  
                                    if(A>B)  // if -B and A>B
                                       begin
														TResult <= A - B;  // Do A - B and temp = 0
                                          temp <= 0;
                                       end
                                    else if(A<B) //if -A and A<B
                                       begin
                                          TResult <= A - B;  // Do A-B and temp = 1;
                                          temp <= 1'b1;
                                       end
                                    else if(A === B)
                                          begin
                                             TResult <= A-B;
                                             temp <= 1'b0;  
                                          end 
                                end   //if B -ve ends                                  
                                            
                             else if(s0 && s1)   //if -A and -B
                                begin
                                   TResult <= (-A) + (-B);   //add A + B;
                                   temp <= 1'b1;
                                end                                                    
                             else if(~s0 && ~s1)
                                begin
                                   TResult <= A + B;
                                   temp <= 1'b0;
                                end
								end  //end
							else  // if not selected
								begin
									TResult <= 8'b0;
									temp <= 1'b0;
								end
                end
            Result <= {temp, TResult};
        end
    
endmodule

