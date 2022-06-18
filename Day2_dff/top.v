module top(clk,rst_n,d,q_no_rst,q_syn_rst,q_asyn_rst);
    input clk,rst_n,d;
    output reg q_no_rst,q_syn_rst,q_asyn_rst;
    dff dff_inst(clk,rst_n,d,q_no_rst,q_syn_rst,q_asyn_rst);
endmodule