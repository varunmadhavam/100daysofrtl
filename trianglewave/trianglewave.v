module  trianglewave 
       #(parameter min = 0, parameter max = 7, parameter nbits=3)
       (clk,rst_n,count);
       input clk,rst_n;
       output reg [nbits-1:0] count;

       reg [nbits-1:0] count_next;
       reg down, down_next;

       always @(posedge clk,negedge rst_n)
              begin
                     if(!rst_n)
                          count<=0;
                     else
                          count<=count_next;
              end

       always @(*)
              begin
                     if(down==0)
                            count_next=count+1;
                     else
                            count_next=count-1;
              end

       always @(posedge clk,negedge rst_n)
              begin
                     if(!rst_n)
                         down<=0;
                     else
                         down<=down_next;   
              end
       
       always @(*)
              begin
                     if(down==0)
                            begin
                                   down_next=0;
                                   if(count==max-1)
                                          down_next=1;
                            end
                     else
                            begin
                                   down_next=1;
                                   if(count==min+1)
                                          down_next=0;
                            end
              end

       initial 
              begin
                     $dumpfile("trianglewave.vcd");
                     $dumpvars(0,trianglewave);
              end
endmodule
