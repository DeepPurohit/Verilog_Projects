module fullSubtractor(diff, borrow, a, b, c);

	
	output diff, borrow;
	input a, b, c;
	
	reg diff,borrow;
	
	always @(a or b or c)
		begin
			
			if(a==0 && b==0 && c==0)
				begin
					diff=0;
					borrow=0;
				end
			
			else if(a==0 && b==0 && c==1)
				begin
					diff=1;
					borrow=1;
				end
				
			else if(a==0 && b==1 && c==0)
				begin
					diff=1;
					borrow=1;
				end
			
			else if(a==0 && b==1 && c==1)
				begin
					diff=0;
					borrow=1;
				end
				
			else if(a==1 && b==0 && c==0)
				begin
					diff=1;
					borrow=0;
				end
				
			else if(a==1 && b==0 && c==1)
				begin
					diff=0;
					borrow=0;
				end
				
			else if(a==1 && b==1 && c==0)
				begin
					diff=0;
					borrow=0;
				end
			
			else
				begin
					diff=1;
					borrow=1;
				end
		end
	
endmodule
