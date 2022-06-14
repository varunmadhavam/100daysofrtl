module case_inv(sel,x,y);
    input [3:0] sel;
    input [3:0] x;
    output reg y;
    
    always @(*)
        begin
            (* parallel_case *)
            case(1'b1)
                sel[0]:
                    y=x[0];
                sel[1]:
                    y=x[1];
                sel[2]:
                    y=x[2];
                sel[3]:
                    y=x[3];
                default:
                    y=x[0];
            endcase
        end
endmodule
