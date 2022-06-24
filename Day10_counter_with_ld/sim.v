module sim #(parameter n = 4) (clk,rst_n,count_o,load_i,load_val_i);
    input clk,rst_n;
    input load_i;
    output reg [n-1:0] count_o;
    input      [n-1:0] load_val_i;
    top #(.n(n)) dut(clk,rst_n,count_o,load_i,load_val_i);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule