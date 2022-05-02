module nsubburaj_Lab6_2Verilog(sw,led);

input [8:0] sw;
output [4:0] led;

wire [3:0] A = sw [3:0];

wire [7:4] B = sw [7:4];
wire Cin = sw[8];
reg [3:0] Sum;
reg [6:4] C;
reg Cout;

always @(A or B)
begin
Sum[0] = A[0] ^ B[4] ^ Cin; 
C[4] = A[0] & B[4] | (A[0] ^ B[4]) & Cin;

Sum[1] = A[1] ^ B[5] ^ C[4]; 
C[5] = A[1] & B[5] | (A[1] ^ B[5]) & C[4];

Sum[2] = A[2] ^ B[6] ^ C[5]; 
C[6] = A[2] & B[6] | (A[2] ^ B[6]) & C[5];

Sum[3] = A[3] ^ B[7] ^ C[6]; 
Cout = A[3] & B[7] | (A[3] ^ B[7]) & C[6];

end 
assign led[3:0] = Sum;
assign led[4] = Cout;

endmodule