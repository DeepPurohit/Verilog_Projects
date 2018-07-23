`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2018 02:21:52 PM
// Design Name: 
// Module Name: half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder( sum, carry, a, b);
	output sum, carry;
	input a,b;
	reg sum , carry;
	always@(a or b)
		begin 
			if(a==0 && b==0)
				begin
					sum=0;
					carry=0;
				end
			else if(a==0 && b==1)
				begin
					sum=1;
					carry=0;
				end
			else if(a==1 && b==0)
				begin
					sum=1;
					carry=0;
				end
			else 
				begin
					sum=0;
					carry=1;
				end
	end
endmodule

