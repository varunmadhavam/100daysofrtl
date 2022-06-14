module async_set_reset(clk,rst_n,set,d,q);
    input clk,rst_n,set,d;
    output reg q;
    always @(posedge clk,negedge rst_n,negedge set)
        begin
            if(!rst_n)
                q<=0;
            else if(!set)
                q<=1;
            else
                q<=d;
        end
endmodule
