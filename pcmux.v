module pcmux( pcjmpselect,pcnext,pcjmp,out);
input [7:0] pcnext,pcjmp;
output [7:0] out;
input pcjmpselect;
assign out= pcjmpselect ? pcjmp: pcnext;
endmodule