module onehot #(parameter BW = 4,parameter OW = 16) ( bin_i,onehot_o);
    input [BW-1:0] bin_i;
    output [OW-1:0] onehot_o;

    assign onehot_o=1<<bin_i;

endmodule