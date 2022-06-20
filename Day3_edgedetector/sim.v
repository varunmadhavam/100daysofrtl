module sim(clk,rst_n,sig_i,posedge_o,negedge_o);
    input clk,rst_n,sig_i;
    output posedge_o,negedge_o;

    top dut(clk,rst_n,sig_i,posedge_o,negedge_o); 
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule