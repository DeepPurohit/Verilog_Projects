module halfSubtractor(diff, borrow, a, b);
	
	output diff, borrow;
	input a,b;
	reg diff, borrow;
	
	always@(a or b)
		begin 
			if(a==0 && b==0)
				begin
					diff=0;
					borrow=0;
				end
			else if(a==0 && b==1)
				begin
					diff=1;
					borrow=1;
				end
			else if(a==1 && b==0)
				begin
					diff=1;
					borrow=0;
				end
			else 
				begin
					diff=0;
					borrow=0;
				end
		end

endmodule
