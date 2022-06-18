module top(a,b,sel,c);
    input a,b,sel;
    output reg c;
    mux2X1 dut(a,b,sel,c);
endmodule