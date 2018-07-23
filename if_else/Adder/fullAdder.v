module fullAdder(sum, carry, a, b, c);
	
	output sum, carry;
	input a, b, c;
	
	reg sum,carry;
	
	always @(a or b or c)
		begin
			
			if(a==0 && b==0 && c==0)
				begin
					sum=0;
					carry=0;
				end
			
			else if(a==0 && b==0 && c==1)
				begin
					sum=1;
					carry=0;
				end
				
			else if(a==0 && b==1 && c==0)
				begin
					sum=1;
					carry=0;
				end
			
			else if(a==0 && b==1 && c==1)
				begin
					sum=0;
					carry=1;
				end
				
			else if(a==1 && b==0 && c==0)
				begin
					sum=1;
					carry=0;
				end
				
			else if(a==1 && b==0 && c==1)
				begin
					sum=0;
					carry=1;
				end
				
			else if(a==1 && b==1 && c==0)
				begin
					sum=0;
					carry=1;
				end
			
			else
				begin
					sum=1;
					carry=1;
				end
		end
endmodule
