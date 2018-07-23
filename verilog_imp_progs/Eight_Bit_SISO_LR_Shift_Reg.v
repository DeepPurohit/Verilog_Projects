`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PINE Training Academy
// Engineer: Deep Kumar Purohit
// 
// Create Date:    19:12:47 06/01/2018 
// Design Name: 
// Module Name:    Eight_Bit_SISO_LR_Shift_Reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Eight_Bit_SISO_LR_Shift_Reg(Sin, Sout, clk, clear, sl, sr);

	output Sout;
	input Sin, clk, clear, sl, sr;
	reg Sout; 
	reg [7:0]temp;
	
	always @(posedge clk or posedge clear)
		begin
			if(clear)
				temp <= 8'b0;
			else
				begin
					if(sl && ~sr)
							temp <= {temp[6:0],Sin};
					else if(sr && ~sl)
							temp <= {Sin,temp[7:1]};
					else
							temp <= temp;
					Sout = temp[7];
				end
		end

endmodule
