module pc_adder(pc,pc_next);
input [7:0]pc;
output [7:0]pc_next;
assign pc=pc_next+8'h01;
endmodule