module top(a,b,c);
    input a,b;
    output c;
    project_template dut(a,b,c);
    initial 
        begin
            $dumpfile("top.vcd");
            $dumpvars(0,top);
            #1;
        end
endmodule