module sim #(parameter w = 4)(bin_i,gray_o);
    input [w-1:0] bin_i;
    output [w-1:0] gray_o;
    top #(.w(w)) dut (bin_i,gray_o);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule