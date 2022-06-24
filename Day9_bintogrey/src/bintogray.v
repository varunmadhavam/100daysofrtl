module bintogray #(parameter w = 8)(bin_i,gray_o);
    input [w-1:0] bin_i;
    output [w-1:0] gray_o;

    assign gray_o = (bin_i>>1)^bin_i;
    /*assign gray_o[w-1]=bin_i[w-1];
    genvar i;
    for(i=w-1;i>=0;i--)
        assign gray_o[i]=bin_i[i]^bin_i[i+1]*/
endmodule