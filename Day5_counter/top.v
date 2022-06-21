module top #(parameter n = 4) (clk,rst_n,count_o);
    input clk,rst_n;
    output reg [n-1:0] count_o;
    counter #(.n(n)) counter_inst(clk,rst_n,count_o);
endmodule