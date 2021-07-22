`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2021 13:25:54
// Design Name: 
// Module Name: mul4x4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mul4x4(
input [3:0]x,
input [3:0]y,
output [7:0]out
    );
    wire p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14;
    wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
    wire o1,o2,o3,o4,o5,o6;
    and(out[0],x[0],y[0]);
    and(p0,x[1],y[0]);
    and(p1,x[0],y[1]);
    halfadder z1(p0,p1,out[1],c0);
    and(p2,x[2],y[0]);
    and(p3,x[1],y[1]);
    and(p4,x[0],y[2]);
    fulladder z20(p2,p3,c0,o1,c1);
    halfadder z2(p4,o1,out[2],c2);
    and(p5,x[3],y[0]);
    and(p6,x[2],y[1]);
    and(p7,x[1],y[2]);
    and(p8,x[0],y[3]);
    fulladder z30(p5,p6,c1,o2,c3);
    fulladder z31(o2,p7,c2,o3,c4);
    halfadder z3(o3,p8,out[3],c5);
    and(p9,x[3],y[1]);
    and(p10,x[2],y[2]);
    and(p11,x[1],y[3]);
    halfadder z40(p9,c3,o4,c6);
    fulladder z41(p10,o4,c4,o5,c7);
    fulladder z4(o5,p11,c5,out[4],c8);
    and(p12,x[3],y[2]);
    and(p13,x[2],y[3]);
    fulladder z50(p12,c6,c7,o6,c9);
    fulladder z5(p13,o6,c8,out[5],c10);
    and(p14,x[3],y[3]);
    fulladder z6(p14,c9,c10,out[6],out[7]);
endmodule
