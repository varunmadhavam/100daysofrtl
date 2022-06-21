module sim #(parameter w=8) (a_i,b_i,op_i,r_o);
    input  [w-1:0]  a_i,b_i;
    input  [1:0]  op_i;
    output reg [(w*2)-1:0]  r_o;
    top #(.w(w)) dut(a_i,b_i,op_i,r_o);
    initial 
        begin
            $dumpfile("sim.vcd");
            $dumpvars(0,sim);
            #1;
        end
endmodule