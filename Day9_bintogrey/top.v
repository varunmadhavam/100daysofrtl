module top #(parameter w = 8)(bin_i,gray_o);
    input [w-1:0] bin_i;
    output [w-1:0] gray_o;
    bintogray #(.w(w)) bintogray_inst (bin_i,gray_o);
endmodule