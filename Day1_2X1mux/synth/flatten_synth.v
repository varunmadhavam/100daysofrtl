/* Generated by Yosys 0.9+4274 (git sha1 e6dd4db0, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

module top(a, b, sel, c);
  input a;
  input b;
  output c;
  wire \mux2X1_inst.a ;
  wire \mux2X1_inst.b ;
  wire \mux2X1_inst.c ;
  wire \mux2X1_inst.sel ;
  input sel;
  sky130_fd_sc_hd__mux2_1 _0_ (
    .A0(\mux2X1_inst.a ),
    .A1(\mux2X1_inst.b ),
    .S(\mux2X1_inst.sel ),
    .X(\mux2X1_inst.c )
  );
  assign \mux2X1_inst.a  = a;
  assign \mux2X1_inst.b  = b;
  assign c = \mux2X1_inst.c ;
  assign \mux2X1_inst.sel  = sel;
endmodule
