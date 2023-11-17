module jmp_addr(pc,disp,pcjmp);
output [7:0] pcjmp;
input [7:0] pc, disp;
assign pcjmp= pc+disp;
endmodule