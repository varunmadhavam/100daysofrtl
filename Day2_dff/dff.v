module dff(clk,rst_n,d,q_no_rst,q_syn_rst,q_asyn_rst);
       input clk,rst_n,d;
       output reg q_no_rst,q_syn_rst,q_asyn_rst;
       
       //no reset
       always @(posedge clk) 
              begin
                     q_no_rst<=d;
              end

       //asyn reset
       always @(posedge clk,negedge rst_n) 
              begin
                     if(!rst_n)
                            q_asyn_rst<=0;
                     else
                            q_asyn_rst<=d;
              end

       //sync reset
       always @(posedge clk) 
              begin
                     if(!rst_n)
                            q_syn_rst<=0;
                     else
                            q_syn_rst<=d;
              end

       initial 
              begin
                     $dumpfile("dff.vcd");
                     $dumpvars(0,dff);
              end
endmodule
