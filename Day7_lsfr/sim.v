module sim #(parameter n = 4, parameter init ='hE)(clk,rst_n,lfsr_o);
    input clk,rst_n;
    output reg [n-1:0] lfsr_o;
    top #(.n(n),.init(init)) dut (clk,rst_n,lfsr_o);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule