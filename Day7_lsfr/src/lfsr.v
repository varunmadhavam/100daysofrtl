module lfsr #(parameter n = 4, parameter init ='hE)(clk,rst_n,lfsr_o);
    input clk,rst_n;
    output reg [n-1:0] lfsr_o;

    reg [n-1:0] lfsr_next;

    always @(posedge clk,negedge rst_n)
        begin
            if(!rst_n)
                lfsr_o<=init;
            else
                lfsr_o<=lfsr_next;
        end
    
    assign lfsr_next={lfsr_o[1] ^ lfsr_o[3],lfsr_o[n-1:1]};

endmodule