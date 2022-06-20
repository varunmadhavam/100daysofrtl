module top(clk,rst_n,sig_i,posedge_o,negedge_o);
    input clk,rst_n,sig_i;
    output posedge_o,negedge_o;
    edgedetector edgedetector_inst(clk,rst_n,sig_i,posedge_o,negedge_o);
endmodule