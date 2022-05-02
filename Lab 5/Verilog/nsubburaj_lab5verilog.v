module nsubburaj_lab5verilog(sw,GT,LT,EQ);
input [7:0] sw;
output reg LT,GT,EQ;
reg [3:0] A,B;

always @ (A,B)
begin
	A = sw[3:0];
	B = sw[7:4];
	{B,A} = sw;
	
		if (A < B)
		begin
			{LT,GT,EQ} = 3'b100;
		end 
		else if (A > B)
		begin
			{LT,GT,EQ} = 3'b010;
		end 
		else if (A == B)
		begin
			{LT,GT,EQ} = 3'b001;
		end 
		else
			{LT,GT,EQ} = 3'b000;
	end
endmodule