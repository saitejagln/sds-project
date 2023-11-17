module data_mux(data, res, dataselect, muxout);
input [15:0] data,res;
input dataselect;
output [15:0] muxout;
assign muxout = dataselect? data:res;
endmodule