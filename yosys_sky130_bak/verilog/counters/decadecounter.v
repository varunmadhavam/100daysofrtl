module counter(clk,rst_n,count_o);
    input clk,rst_n;
    output reg[3:0] count_o;
    
    reg[3:0] count_next;
    
    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                count_o<=0;
            else
                count_o<=count_next;
        end
    
    always @(*)
        begin
            if(count_o==4'b1001)
                count_next<=0;
            else
                count_next<=count_o+1;
        end
endmodule
