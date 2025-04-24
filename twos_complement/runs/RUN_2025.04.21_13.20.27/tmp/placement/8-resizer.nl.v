module twos_complement (in,
    out);
 input [7:0] in;
 output [7:0] out;

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
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;

 sky130_fd_sc_hd__nor2_1 _10_ (.A(net2),
    .B(net1),
    .Y(_00_));
 sky130_fd_sc_hd__xnor2_1 _11_ (.A(net3),
    .B(_00_),
    .Y(net11));
 sky130_fd_sc_hd__o31a_1 _12_ (.A1(net2),
    .A2(net1),
    .A3(net3),
    .B1(net4),
    .X(_01_));
 sky130_fd_sc_hd__or4_2 _13_ (.A(net2),
    .B(net1),
    .C(net3),
    .D(net4),
    .X(_02_));
 sky130_fd_sc_hd__and2b_1 _14_ (.A_N(_01_),
    .B(_02_),
    .X(_03_));
 sky130_fd_sc_hd__clkbuf_1 _15_ (.A(_03_),
    .X(net12));
 sky130_fd_sc_hd__nor2_1 _16_ (.A(net5),
    .B(_02_),
    .Y(_04_));
 sky130_fd_sc_hd__and2_1 _17_ (.A(net5),
    .B(_02_),
    .X(_05_));
 sky130_fd_sc_hd__nor2_1 _18_ (.A(_04_),
    .B(_05_),
    .Y(net13));
 sky130_fd_sc_hd__xnor2_1 _19_ (.A(net6),
    .B(_04_),
    .Y(net14));
 sky130_fd_sc_hd__or4_1 _20_ (.A(net5),
    .B(net6),
    .C(net7),
    .D(_02_),
    .X(_06_));
 sky130_fd_sc_hd__o31ai_1 _21_ (.A1(net5),
    .A2(net6),
    .A3(_02_),
    .B1(net7),
    .Y(_07_));
 sky130_fd_sc_hd__and2_1 _22_ (.A(_06_),
    .B(_07_),
    .X(_08_));
 sky130_fd_sc_hd__clkbuf_1 _23_ (.A(_08_),
    .X(net15));
 sky130_fd_sc_hd__xor2_1 _24_ (.A(net8),
    .B(_06_),
    .X(net16));
 sky130_fd_sc_hd__and2_1 _25_ (.A(net2),
    .B(net1),
    .X(_09_));
 sky130_fd_sc_hd__nor2_1 _26_ (.A(_00_),
    .B(_09_),
    .Y(net10));
 sky130_fd_sc_hd__clkbuf_1 _27_ (.A(net1),
    .X(net9));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_32 ();
 sky130_fd_sc_hd__dlymetal6s2s_1 input1 (.A(in[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(in[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(in[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(in[4]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(in[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(in[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(in[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(out[0]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(out[1]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(out[2]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(out[3]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(out[4]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(out[5]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(out[6]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(out[7]));
endmodule
