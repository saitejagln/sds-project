module register(source_a,source_b,dest_val,a_out,b_out,dest_address,reg_write,clk);
input [4:0] source_a.source_b,dest_address;
output [15:0] a_out,b_out;
input [15:0] dest_val;
input clk,reg_write;
reg [15:0] register [15:0];


always@(posedge clk)
begin
    if(reg_write)
    register[dest_address] <=dest_val;
end

assign a_out =register[source_a];
assign b_out = register[source_b];

initial begin
    //code
end

endmodule