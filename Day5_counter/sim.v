module sim #(parameter n = 4) (clk,rst_n,count_o);
    input clk,rst_n;
    output reg [n-1:0] count_o;
    top #(.n(n)) dut(clk,rst_n,count_o);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule