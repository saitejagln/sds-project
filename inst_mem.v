module inst_mem(pc,ins);
input [7:0]pc;
output [15:0]ins;
reg [15:0] mem [255:0];
assign ins=mem[pc];
initial begin
    //code to check
end
endmodule