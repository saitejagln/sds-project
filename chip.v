`include "alu.v"
`include "control_unit.v"
`include "data_mem.v"
`include "data_mux.v"
`include "inst_mem.v"
`include "jmp_addr.v"
`include "pc_adder.v"
`include "pc.v"
`include "pcmux.v"
`include "register.v"

module chip(clk,reset);
input clk,reset;
wire [7:0] pc,pc_next,pcjmp,out,disp;
wire [15:0]ins,dest_val,res,data,a_out,b_out;
wire zero_flag,pcjumpselect,dataselect,reg_write,alu_enable,data_write,clk,reset;
wire [3:0] source_a,source_b,dest_address,alu_op;
alu (a_out,b_out,alu_op,res,zero_flag,alu_enable);
control_unit(zero_flag,ins,alu_op,alu_enable,source_a,source_b,dest_address,disp,data_write,dataselect,pcjumpselect,reg_write);
data_mem(data,a_out[7:0],b_out,data_write,clk);
data_mux(data,res,dataselect,dest_val);
inst_mem(pc,ins);
jmp_addr(pc,disp,pcjmp);
pc_adder(pc,pc_next);
pc(pc,out,clk,reset);
pcmux(pcjumpselect,pc_next,pcjmp,out);
register(source_a,source_b,dest_val,a_out,b_out,dest_address,reg_write,clk);
endmodule