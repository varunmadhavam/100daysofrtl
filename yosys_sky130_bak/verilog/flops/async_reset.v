module async_reset(clk,rst_n,d,q);
    input clk,rst_n,d;
    output reg q;
    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                q<=0;
            else
                q<=d;
        end
endmodule
