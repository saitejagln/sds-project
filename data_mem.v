module data_mem(data,address,in_val ,data_write,clk);
output [15:0]data;
input [7:0] address;
input [15:0] in_val;
input clk,data_write;
reg [15:0] data_memory [255:0];
always@(posedge clk)
begin
    if(data_write)
    data_memory[address]<=in_val;
end
assign data = data_memory[address];
initial begin
    //code cehck
end
endmodule