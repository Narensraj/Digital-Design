module nsubburaj_concurrentconstructs_verilog (X,Y);
input [2:0] X;
output [7:0] Y;

assign Y =  (X == 3'b000) ? 8'b00000001 :
				(X == 3'b001) ? 8'b00000010 :
				(X == 3'b010) ? 8'b00000100 :
				(X == 3'b011) ? 8'b00001000 :
				(X == 3'b100) ? 8'b00010000 :
				(X == 3'b101) ? 8'b00100000 :
				(X == 3'b110) ? 8'b01000000 :
				8'b10000000 ;
endmodule