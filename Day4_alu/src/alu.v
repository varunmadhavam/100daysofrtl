module alu #(parameter w=8) (a_i,b_i,op_i,r_o);
    input  [w-1:0]  a_i,b_i;
    input  [1:0]  op_i;
    output reg [(w*2)-1:0]  r_o;

    parameter add = 2'b00;
    parameter sub = 2'b01;
    parameter mul = 2'b10;
    parameter div = 2'b11;

    always @(*) 
        begin
            case(op_i)
                add:
                    r_o=a_i+b_i;
                sub:
                    r_o=a_i-b_i;
                mul:
                    r_o=a_i*b_i;
                div:
                    r_o=a_i/b_i;
            endcase
        
        end


endmodule