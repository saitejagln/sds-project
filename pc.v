module pc(pc,pc_next,clk,reset);
input [7:0] pc_next:
input clk,reset;
output reg [7:0]pc;
always@(posedge clk)
begin
    if(reset)
    pc<=8'h00;
    else 
    pc<=pc_next;
end
endmodule