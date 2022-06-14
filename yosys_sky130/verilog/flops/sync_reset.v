module sync_reset(clk,rst_n,d,q);
    input clk,rst_n,d;
    output reg q;
    always @(posedge clk)
        begin
            if(!rst_n)
                q<=0;
            else
                q<=d;
        end
endmodule
