`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2021 11:31:30
// Design Name: 
// Module Name: arraymultiplier
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


module arraymultiplier(
input [1:0]x,
input [1:0]y,
output [3:0]out
);
wire p0,p1,p2,c1;
and(out[0], x[0],y[0]);
and(p0,x[1],y[0]);
and(p1,x[0],y[1]);
and(p2,x[1],y[1]);
halfadder a1(p0,p1,out[1],c1);
halfadder a2(p2,c1,out[2],out[3]);
endmodule
