module shiftreg #(parameter n = 8)(clk,rst_n,s_i,p_o);
    input clk,rst_n,s_i;
    output reg [n-1:0] p_o;

    reg [n-1:0] p_next;

    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                p_o<=0;
            else
                p_o<=p_next;
        end
    
    assign p_next={s_i,p_o[n-1:1]};

endmodule