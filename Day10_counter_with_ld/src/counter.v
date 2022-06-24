module counter #(parameter n = 4) (clk,rst_n,count_o,load_i,load_val_i);
    input clk,rst_n;
    input load_i;
    output reg [n-1:0] count_o;
    input      [n-1:0] load_val_i;

    reg [n-1:0] count_next,count_incr;
    reg [n-1:0] load_val;

    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                load_val<=0;
            else if(load_i==1)
                load_val<=load_val_i;
        end

    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                count_o<=0;
            else
                count_o<=count_next;
        end
    
    assign count_incr=count_o+1;
    assign count_next=count_incr==0?(load_i==1)?load_val_i:load_val:count_incr;
    
endmodule