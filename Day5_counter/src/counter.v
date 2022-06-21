module counter #(parameter n = 4) (clk,rst_n,count_o);
    input clk,rst_n;
    output reg [n-1:0] count_o;

    reg [n-1:0] count_next;

    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                count_o<=0;
            else
                count_o<=count_next;
        end
    
    assign count_next=count_o+1;
    
endmodule