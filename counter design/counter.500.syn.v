/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sat Mar 25 19:09:14 2023
/////////////////////////////////////////////////////////////


module counter ( data, count, rst_, enable, clk, load );
  input [4:0] data;
  output [4:0] count;
  input rst_, enable, clk, load;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52;

  DFFHQNx1_ASAP7_75t_R count_reg_4_ ( .D(n26), .CLK(clk), .QN(count[4]) );
  DFFHQNx1_ASAP7_75t_R count_reg_3_ ( .D(n25), .CLK(clk), .QN(count[3]) );
  DFFHQNx1_ASAP7_75t_R count_reg_2_ ( .D(n24), .CLK(clk), .QN(count[2]) );
  DFFHQNx1_ASAP7_75t_R count_reg_1_ ( .D(n23), .CLK(clk), .QN(count[1]) );
  DFFHQNx1_ASAP7_75t_R count_reg_0_ ( .D(n22), .CLK(clk), .QN(count[0]) );
  NAND2xp33_ASAP7_75t_R U29 ( .A(n49), .B(enable), .Y(n31) );
  NAND2xp33_ASAP7_75t_R U30 ( .A(count[0]), .B(count[1]), .Y(n37) );
  OAI22xp33_ASAP7_75t_R U31 ( .A1(n45), .A2(n47), .B1(n39), .B2(n47), .Y(n40)
         );
  OAI22xp33_ASAP7_75t_R U32 ( .A1(count[0]), .A2(n29), .B1(n43), .B2(n29), .Y(
        n22) );
  OAI21xp33_ASAP7_75t_R U33 ( .A1(count[0]), .A2(n31), .B(n27), .Y(n29) );
  OAI22xp33_ASAP7_75t_R U34 ( .A1(count[1]), .A2(n33), .B1(n43), .B2(n33), .Y(
        n23) );
  OAI21xp33_ASAP7_75t_R U35 ( .A1(n32), .A2(n31), .B(n30), .Y(n33) );
  OAI21xp33_ASAP7_75t_R U36 ( .A1(count[0]), .A2(count[1]), .B(n37), .Y(n32)
         );
  OAI22xp33_ASAP7_75t_R U37 ( .A1(count[2]), .A2(n38), .B1(n43), .B2(n38), .Y(
        n24) );
  OAI22xp33_ASAP7_75t_R U38 ( .A1(count[3]), .A2(n44), .B1(n43), .B2(n44), .Y(
        n25) );
  NAND2xp33_ASAP7_75t_R U39 ( .A(n42), .B(n41), .Y(n44) );
  NAND2xp33_ASAP7_75t_R U40 ( .A(n49), .B(n48), .Y(n50) );
  INVxp33_ASAP7_75t_R U41 ( .A(rst_), .Y(n28) );
  NOR2xp33_ASAP7_75t_R U42 ( .A(load), .B(n28), .Y(n49) );
  NAND3xp33_ASAP7_75t_R U43 ( .A(rst_), .B(data[0]), .C(load), .Y(n27) );
  NOR3xp33_ASAP7_75t_R U44 ( .A(n28), .B(load), .C(enable), .Y(n43) );
  NAND3xp33_ASAP7_75t_R U45 ( .A(rst_), .B(data[1]), .C(load), .Y(n30) );
  INVxp33_ASAP7_75t_R U46 ( .A(count[2]), .Y(n36) );
  NAND3xp33_ASAP7_75t_R U47 ( .A(count[1]), .B(count[2]), .C(count[0]), .Y(n45) );
  NAND3xp33_ASAP7_75t_R U48 ( .A(n49), .B(n45), .C(enable), .Y(n35) );
  NAND3xp33_ASAP7_75t_R U49 ( .A(rst_), .B(data[2]), .C(load), .Y(n34) );
  A2O1A1Ixp33_ASAP7_75t_R U50 ( .A1(n37), .A2(n36), .B(n35), .C(n34), .Y(n38)
         );
  INVxp33_ASAP7_75t_R U51 ( .A(count[3]), .Y(n39) );
  NOR2xp33_ASAP7_75t_R U52 ( .A(n45), .B(n39), .Y(n47) );
  NAND3xp33_ASAP7_75t_R U53 ( .A(enable), .B(n40), .C(n49), .Y(n42) );
  NAND3xp33_ASAP7_75t_R U54 ( .A(rst_), .B(data[3]), .C(load), .Y(n41) );
  INVxp33_ASAP7_75t_R U55 ( .A(n45), .Y(n46) );
  OAI222xp33_ASAP7_75t_R U56 ( .A1(n46), .A2(count[4]), .B1(count[3]), .B2(
        count[4]), .C1(enable), .C2(count[4]), .Y(n51) );
  NAND3xp33_ASAP7_75t_R U57 ( .A(enable), .B(n47), .C(count[4]), .Y(n48) );
  NOR2xp33_ASAP7_75t_R U58 ( .A(n51), .B(n50), .Y(n52) );
  A2O1A1Ixp33_ASAP7_75t_R U59 ( .A1(data[4]), .A2(load), .B(n52), .C(rst_), 
        .Y(n26) );
endmodule

