/* Generated by Yosys 0.9+4274 (git sha1 e6dd4db0, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

module piso(clk, rst_n, ready_o, valid_i, valid_o, ready_i, p_i, s_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  input clk;
  wire [2:0] count;
  wire current_state;
  wire next_state;
  wire [7:0] p;
  input [7:0] p_i;
  wire [6:0] p_next;
  input ready_i;
  output ready_o;
  input rst_n;
  output s_o;
  input valid_i;
  output valid_o;
  sky130_fd_sc_hd__clkinv_1 _43_ (
    .A(s_o),
    .Y(_11_)
  );
  sky130_fd_sc_hd__clkinv_1 _44_ (
    .A(current_state),
    .Y(ready_o)
  );
  sky130_fd_sc_hd__clkinv_1 _45_ (
    .A(p[7]),
    .Y(_12_)
  );
  sky130_fd_sc_hd__lpflow_isobufsrc_1 _46_ (
    .A(valid_i),
    .SLEEP(current_state),
    .X(_13_)
  );
  sky130_fd_sc_hd__nand2b_1 _47_ (
    .A_N(current_state),
    .B(valid_i),
    .Y(_14_)
  );
  sky130_fd_sc_hd__mux2_1 _48_ (
    .A0(valid_i),
    .A1(ready_i),
    .S(current_state),
    .X(_15_)
  );
  sky130_fd_sc_hd__nand2_1 _49_ (
    .A(p[7]),
    .B(_14_),
    .Y(_16_)
  );
  sky130_fd_sc_hd__nand2_1 _50_ (
    .A(p_i[6]),
    .B(_13_),
    .Y(_17_)
  );
  sky130_fd_sc_hd__nor2_1 _51_ (
    .A(p[6]),
    .B(_15_),
    .Y(_18_)
  );
  sky130_fd_sc_hd__a31oi_1 _52_ (
    .A1(_15_),
    .A2(_16_),
    .A3(_17_),
    .B1(_18_),
    .Y(_09_)
  );
  sky130_fd_sc_hd__nand2_1 _53_ (
    .A(p[6]),
    .B(_14_),
    .Y(_19_)
  );
  sky130_fd_sc_hd__nand2_1 _54_ (
    .A(p_i[5]),
    .B(_13_),
    .Y(_20_)
  );
  sky130_fd_sc_hd__nor2_1 _55_ (
    .A(p[5]),
    .B(_15_),
    .Y(_21_)
  );
  sky130_fd_sc_hd__a31oi_1 _56_ (
    .A1(_15_),
    .A2(_19_),
    .A3(_20_),
    .B1(_21_),
    .Y(_08_)
  );
  sky130_fd_sc_hd__nand2_1 _57_ (
    .A(p[5]),
    .B(_14_),
    .Y(_22_)
  );
  sky130_fd_sc_hd__nand2_1 _58_ (
    .A(p_i[4]),
    .B(_13_),
    .Y(_23_)
  );
  sky130_fd_sc_hd__nor2_1 _59_ (
    .A(p[4]),
    .B(_15_),
    .Y(_24_)
  );
  sky130_fd_sc_hd__a31oi_1 _60_ (
    .A1(_15_),
    .A2(_22_),
    .A3(_23_),
    .B1(_24_),
    .Y(_07_)
  );
  sky130_fd_sc_hd__nand2_1 _61_ (
    .A(p[4]),
    .B(_14_),
    .Y(_25_)
  );
  sky130_fd_sc_hd__nand2_1 _62_ (
    .A(p_i[3]),
    .B(_13_),
    .Y(_26_)
  );
  sky130_fd_sc_hd__nor2_1 _63_ (
    .A(p[3]),
    .B(_15_),
    .Y(_27_)
  );
  sky130_fd_sc_hd__a31oi_1 _64_ (
    .A1(_15_),
    .A2(_25_),
    .A3(_26_),
    .B1(_27_),
    .Y(_06_)
  );
  sky130_fd_sc_hd__nand2_1 _65_ (
    .A(p[3]),
    .B(_14_),
    .Y(_28_)
  );
  sky130_fd_sc_hd__nand2_1 _66_ (
    .A(p_i[2]),
    .B(_13_),
    .Y(_29_)
  );
  sky130_fd_sc_hd__nor2_1 _67_ (
    .A(p[2]),
    .B(_15_),
    .Y(_30_)
  );
  sky130_fd_sc_hd__a31oi_1 _68_ (
    .A1(_15_),
    .A2(_28_),
    .A3(_29_),
    .B1(_30_),
    .Y(_05_)
  );
  sky130_fd_sc_hd__nand2_1 _69_ (
    .A(p[2]),
    .B(_14_),
    .Y(_31_)
  );
  sky130_fd_sc_hd__nand2_1 _70_ (
    .A(p_i[1]),
    .B(_13_),
    .Y(_32_)
  );
  sky130_fd_sc_hd__nor2_1 _71_ (
    .A(p[1]),
    .B(_15_),
    .Y(_33_)
  );
  sky130_fd_sc_hd__a31oi_1 _72_ (
    .A1(_15_),
    .A2(_31_),
    .A3(_32_),
    .B1(_33_),
    .Y(_04_)
  );
  sky130_fd_sc_hd__a32oi_1 _73_ (
    .A1(p[1]),
    .A2(ready_i),
    .A3(current_state),
    .B1(p_i[0]),
    .B2(_13_),
    .Y(_34_)
  );
  sky130_fd_sc_hd__o21ai_0 _74_ (
    .A1(_11_),
    .A2(_15_),
    .B1(_34_),
    .Y(_03_)
  );
  sky130_fd_sc_hd__and3_1 _75_ (
    .A(count[0]),
    .B(ready_i),
    .C(current_state),
    .X(_35_)
  );
  sky130_fd_sc_hd__and4_1 _76_ (
    .A(count[1]),
    .B(count[0]),
    .C(ready_i),
    .D(current_state),
    .X(_36_)
  );
  sky130_fd_sc_hd__nor2_1 _77_ (
    .A(count[2]),
    .B(_36_),
    .Y(_37_)
  );
  sky130_fd_sc_hd__nand3_1 _78_ (
    .A(count[2]),
    .B(count[1]),
    .C(count[0]),
    .Y(_38_)
  );
  sky130_fd_sc_hd__nand2_1 _79_ (
    .A(current_state),
    .B(_38_),
    .Y(_39_)
  );
  sky130_fd_sc_hd__a21oi_1 _80_ (
    .A1(_15_),
    .A2(_39_),
    .B1(_37_),
    .Y(_02_)
  );
  sky130_fd_sc_hd__o21ai_0 _81_ (
    .A1(count[1]),
    .A2(_35_),
    .B1(_14_),
    .Y(_40_)
  );
  sky130_fd_sc_hd__nor2_1 _82_ (
    .A(_36_),
    .B(_40_),
    .Y(_01_)
  );
  sky130_fd_sc_hd__a21oi_1 _83_ (
    .A1(ready_i),
    .A2(current_state),
    .B1(count[0]),
    .Y(_41_)
  );
  sky130_fd_sc_hd__nor3_1 _84_ (
    .A(_13_),
    .B(_35_),
    .C(_41_),
    .Y(_00_)
  );
  sky130_fd_sc_hd__nand2_1 _85_ (
    .A(_14_),
    .B(_39_),
    .Y(next_state)
  );
  sky130_fd_sc_hd__nand2_1 _86_ (
    .A(p_i[7]),
    .B(_13_),
    .Y(_42_)
  );
  sky130_fd_sc_hd__o21ai_0 _87_ (
    .A1(_12_),
    .A2(_15_),
    .B1(_42_),
    .Y(_10_)
  );
  sky130_fd_sc_hd__dfrtp_1 _88_ (
    .CLK(clk),
    .D(next_state),
    .Q(current_state),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _89_ (
    .CLK(clk),
    .D(_00_),
    .Q(count[0]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _90_ (
    .CLK(clk),
    .D(_01_),
    .Q(count[1]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _91_ (
    .CLK(clk),
    .D(_02_),
    .Q(count[2]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _92_ (
    .CLK(clk),
    .D(_03_),
    .Q(s_o),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _93_ (
    .CLK(clk),
    .D(_04_),
    .Q(p[1]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _94_ (
    .CLK(clk),
    .D(_05_),
    .Q(p[2]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _95_ (
    .CLK(clk),
    .D(_06_),
    .Q(p[3]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _96_ (
    .CLK(clk),
    .D(_07_),
    .Q(p[4]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _97_ (
    .CLK(clk),
    .D(_08_),
    .Q(p[5]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _98_ (
    .CLK(clk),
    .D(_09_),
    .Q(p[6]),
    .RESET_B(rst_n)
  );
  sky130_fd_sc_hd__dfrtp_1 _99_ (
    .CLK(clk),
    .D(_10_),
    .Q(p[7]),
    .RESET_B(rst_n)
  );
  assign p[0] = s_o;
  assign p_next = p[7:1];
  assign valid_o = current_state;
endmodule

module top(clk, rst_n, ready_o, valid_i, valid_o, ready_i, p_i, s_o);
  input clk;
  input [7:0] p_i;
  input ready_i;
  output ready_o;
  input rst_n;
  output s_o;
  input valid_i;
  output valid_o;
  piso piso_inst (
    .clk(clk),
    .p_i(p_i),
    .ready_i(ready_i),
    .ready_o(ready_o),
    .rst_n(rst_n),
    .s_o(s_o),
    .valid_i(valid_i),
    .valid_o(valid_o)
  );
endmodule
