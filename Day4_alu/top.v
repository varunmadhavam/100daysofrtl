module top #(parameter w=8) (a_i,b_i,op_i,r_o);
    input  [w-1:0]  a_i,b_i;
    input  [1:0]  op_i;
    output reg [(w*2)-1:0]  r_o;
    alu #(.w(w))alu_inst(a_i,b_i,op_i,r_o);
endmodule