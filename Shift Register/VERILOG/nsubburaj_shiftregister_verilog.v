module nsubburaj_shiftregister_verilog(sw,CLK,ledr);

input [7:0]sw;
output [3:0]ledr;
wire [3:0]ledr;
input CLK;

reg [3:0]R;
wire [1:0]S;

assign S[1:0] = sw[1:0];
assign ledr[3:0] = R[3:0];

always@(posedge CLK)

begin : by_rising_edge
if ( S == 2'b00) begin 
R <= (sw[7:4]); end

else begin
if ( S == 2'b01) begin
R <= ({R[2:0], sw[3]}); end

else begin
if ( S == 2'b10) begin
R <= ({sw[2],R[3:1]}); end

else begin
if ( S == 2'b11) begin
R <= sw[7:4]; end

else begin
R <= sw[7:4]; end end
end
end
end
endmodule
