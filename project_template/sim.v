module sim(a,b,c);
    input a,b;
    output c;
    top dut(a,b,c);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule