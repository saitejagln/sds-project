module control_unit(zero_flag,ins,alu_op,alu_enable,source_a,source_b,dest_address,disp,data_write,dataselect,pcjumpselect,reg_write);
input [15:0] ins;
input zero_flag;
output [3:0] alu_op,source_a,source_b,dest_address;
output alu_enable,data_write,dataselect,pcjumpselect,reg_write;
output [7:0] disp;
assign alu_op=ins[15:12];
assign alu_enable= ins[15:12]==4'h0 ? 1:ins[15:12]==4'h1 ? 1 : ins[15:12]==4'h2? 1 : ins[15:12]==4'h3 ?1 : 0;
assign source_a = ins[3:0];
assign source_b= ins[7:4];
assign dest_address=ins[11:8];
assign data_write=ins[15:12]==4'h6 ? 1:0;
assign dataselect = ins[15:12]==4'h5 ? 1:0;
assign pcjumpselect = (ins[15:12]==4'h4 && zero_flag )? 1 :0;
assign disp = ins[7:0];
assign reg_write = ins[15:12]==4'h0 ? 1:ins[15:12]==4'h1 ? 1 : ins[15:12]==4'h2? 1 : ins[15:12]==4'h3 ?1 : ins[15:12]==4'h5 ?1:0 ;
endmodule