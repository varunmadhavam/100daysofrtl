module top #(parameter n = 4) (clk,rst_n,count_o,load_i,load_val_i);
    input clk,rst_n;
    input load_i;
    output reg [n-1:0] count_o;
    input      [n-1:0] load_val_i;
    counter #(.n(n)) counter_inst(clk,rst_n,count_o,load_i,load_val_i);
endmodule