module alu(alu_a,alu_b,alu_op,res,zero_flag,alu_enable);
input [15:0] alu_a,alu_b;
output reg [15:0] res;
output reg zero_flag;
input [3:0]alu_op;

assign res=((alu_op==4'h0)&& alu_enable) ? alu_a+alu_b: (alu_op==4'h1)&&alu_enable ? alu_a+(~alu_b)+1: (alu_op == 4'h2)&&alu_enable ? alu_a & alu_b: alu_a|alu_b;
assign zero_flag=&(~res);

endmodule