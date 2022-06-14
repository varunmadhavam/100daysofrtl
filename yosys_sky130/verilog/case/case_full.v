module case_full(w,x,y,z,o,sel);
    input w,x,y,z;
    input [1:0] sel;
    output reg o;
    always@(*)
        begin
            case(sel)
                2'b00:
                    y=w;
                2'b01:
                    y=x;
                2'b10:
                    y=y;
                2'b11:
                    y=z;
            endcase
        end
endmodule
