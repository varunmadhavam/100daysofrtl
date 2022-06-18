module sim(a,b,sel,c);
    input a,b,sel;
    output reg c;
    top dut(a,b,sel,c);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule