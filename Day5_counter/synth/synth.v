/* Generated by Yosys 0.9+4081 (git sha1 862e84eb, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

module \$paramod\counter\n=s32'00000000000000000000000000000100 (clk, rst_n, count_o);
  wire _00_;
  wire _01_;
  input clk;
  wire [3:0] count_next;
  output [3:0] count_o;
  input rst_n;
  sky130_fd_sc_hd__clkinv_1 _02_ (
    .A(count_o[0]),
    .Y(count_next[0])
  );
  sky130_fd_sc_hd__xor2_1 _03_ (
    .A(count_o[1]),
    .B(count_o[0]),
    .X(count_next[1])
  );
  sky130_fd_sc_hd__nand3_1 _04_ (
    .A(count_o[1]),
    .B(count_o[0]),
    .C(count_o[2]),
    .Y(_00_)
  );
  sky130_fd_sc_hd__a21oi_1 _05_ (
    .A1(count_o[1]),
    .A2(count_o[0]),
    .B1(count_o[2]),
    .Y(_01_)
  );
  sky130_fd_sc_hd__lpflow_isobufsrc_1 _06_ (
    .A(_00_),
    .SLEEP(_01_),
    .X(count_next[2])
  );
  sky130_fd_sc_hd__xnor2_1 _07_ (
    .A(count_o[3]),
    .B(_00_),
    .Y(count_next[3])
  );
  sky130_fd_sc_hd__dfrtp_1 _08_ (
    .CLK(clk),
    .D(count_next[0]),
    .Q(count_o[0]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _09_ (
    .CLK(clk),
    .D(count_next[1]),
    .Q(count_o[1]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _10_ (
    .CLK(clk),
    .D(count_next[2]),
    .Q(count_o[2]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _11_ (
    .CLK(clk),
    .D(count_next[3]),
    .Q(count_o[3]),
    .RESET_B(rst_n)
  );
endmodule

module top(clk, rst_n, count_o);
  input clk;
  output [3:0] count_o;
  input rst_n;
  \$paramod\counter\n=s32'00000000000000000000000000000100  counter_inst (
    .clk(clk),
    .count_o(count_o),
    .rst_n(rst_n)
  );
endmodule