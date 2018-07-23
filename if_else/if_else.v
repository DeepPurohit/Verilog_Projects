module if_else( out,in, sel);
output out;
input sel;
reg out;
input [3:0]in;
always@(in or sel)
begin
if(sel==0)
  out=in[0];
else if(sel==1)
  out=in[1];
else if(sel==2)
  out=in[2];
else
  out=in[3];
end
endmodule
