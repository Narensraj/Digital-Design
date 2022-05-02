module nsubburaj_Lab6_2verilog(sw,led);

input [8:0] sw;
output [7:0] led;

wire [3:0] A = sw [3:0];

wire [7:4] B = sw [7:4];
reg [3:0] Sum;
reg [6:3] C;
reg Cout;

always @(A or B)
begin
Sum[0] = A[0] ^ B[4] ^ C[3]; 
C[4] = A[0] & B[4] | (A[0] ^ B[4]) & C[3];

Sum[1] = A[1] ^ B[5] ^ C[4]; 
C[5] = A[1] & B[5] | (A[1] ^ B[5]) & C[4];

Sum[2] = A[2] ^ B[6] ^ C[5]; 
C[6] = A[2] & B[6] | (A[2] ^ B[6]) & C[5];

Sum[3] = A[3] ^ B[7] ^ C[6]; 
Cout = A[3] & B[7] | (A[3] ^ B[7]) & C[6];

end 
assign led[7:4] = C;
assign led[3:0] = Sum;
assign led[4] = C[3];
assign led = Cout;

endmodule