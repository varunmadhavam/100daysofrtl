module top (clk,rst_n,ready_o,valid_i,valid_o,ready_i,p_i,s_o);
    input clk,rst_n,valid_i,ready_i;
    input [7:0] p_i;
    output valid_o,s_o,ready_o;
    piso piso_inst(clk,rst_n,ready_o,valid_i,valid_o,ready_i,p_i,s_o);
endmodule