module top(a,b,sel,c);
    input a,b,sel;
    output reg c;
    mux2X1 mux2X1_inst(a,b,sel,c);
endmodule