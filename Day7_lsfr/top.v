module top #(parameter n = 4, parameter init ='hE)(clk,rst_n,lfsr_o);
    input clk,rst_n;
    output reg [n-1:0] lfsr_o;
    lfsr #(.n(n),.init(init)) lfsr_inst (clk,rst_n,lfsr_o);
endmodule