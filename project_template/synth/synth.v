/* Generated by Yosys 0.9+4274 (git sha1 e6dd4db0, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

module project_template(a, b, c);
  input a;
  input b;
  output c;
  sky130_fd_sc_hd__lpflow_inputiso1p_1 _0_ (
    .A(b),
    .SLEEP(a),
    .X(c)
  );
endmodule

module top(a, b, c);
  input a;
  input b;
  output c;
  project_template dut (
    .a(a),
    .b(b),
    .c(c)
  );
endmodule
