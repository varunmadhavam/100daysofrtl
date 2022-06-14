module sync_set_reset(clk,rst_n,set,d,q);
    input clk,rst_n,set,d;
    output reg q;
    always @(posedge clk)
        begin
            if(!rst_n)
                q<=0;
            else if(set==1)
                q<=1;
            else
                q<=d;
        end
endmodule
