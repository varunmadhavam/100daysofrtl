module sim #(parameter n = 8)(clk,rst_n,s_i,p_o);
    input clk,rst_n,s_i;
    output reg [n-1:0] p_o;
    top #(.n(8)) dut (clk,rst_n,s_i,p_o);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule