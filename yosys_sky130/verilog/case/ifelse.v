module ifelse(w,x,y,z,o,sel);
    input w,x,y,z;
    input [1:0] sel;
    output reg o;
    always@(*)
        begin
            o=1'b1;
            if(sel==2'b00)
                o=w;
            else if(sel==2'b01)
                o=x;
            else if(sel==2'b10)
                o=y;
            else if(sel==2'b11)
                o=z;
        end
endmodule
