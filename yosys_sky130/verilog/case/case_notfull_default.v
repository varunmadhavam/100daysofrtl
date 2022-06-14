module case_notfull_default(sel,x,y);
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
                default:
                    y=x[0];
            endcase
        end
endmodule
