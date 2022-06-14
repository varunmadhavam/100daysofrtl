module case_notfull(sel,x,y);
    input [1:0] sel;
    input [3:0] x;
    output reg y;
    
    always @(*)
        begin
            case(sel)
                2'b00:
                    y=x[0];
                2'b01:
                    y=x[1];
            endcase
        end
endmodule
