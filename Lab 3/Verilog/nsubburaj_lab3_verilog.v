module nsubburaj_lab3_verilog(output LEDR, LEDG, input level1,level2,level3,level4,level5,level6,level7);
assign LEDR = level1 & level2 & level3 & level4 & level5 & level6 & level7;
assign LEDG = ~ (level1 & level2 & level3 & level4 & level5 & level6 & level7);
endmodule