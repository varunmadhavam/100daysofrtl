module case_notfull_assigns(sel,x,y,z);
    input [1:0] sel;
    input [3:0] x;
    output reg y,z;
    
    always @(*)
        begin
            z=0;y=0;
            case(sel)
                2'b00:
                    y=x[1];
                2'b11:
                    z=x[2];
            endcase
        end
endmodule
