module sim(clk,rst_n,d,q_no_rst,q_syn_rst,q_asyn_rst);
    input clk,rst_n,d;
    output reg q_no_rst,q_syn_rst,q_asyn_rst;
    top dut(clk,rst_n,d,q_no_rst,q_syn_rst,q_asyn_rst);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule