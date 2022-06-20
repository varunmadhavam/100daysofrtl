module edgedetector(clk,rst_n,sig_i,posedge_o,negedge_o);
    input clk,rst_n,sig_i;
    output posedge_o,negedge_o;

    reg sig_i_d;

    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                sig_i_d<=0;
            else
                sig_i_d<=sig_i;
        end

    assign posedge_o=sig_i&~(sig_i_d);
    assign negedge_o=(~sig_i)&sig_i_d;
endmodule