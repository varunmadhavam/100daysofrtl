module top #(parameter n = 8)(clk,rst_n,s_i,p_o);
    input clk,rst_n,s_i;
    output reg [n-1:0] p_o;
    shiftreg #(.n(8)) shiftreg_inst (clk,rst_n,s_i,p_o);
endmodule