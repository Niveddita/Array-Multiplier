`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2021 12:38:31
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb(
    );
    reg [3:0] x1,y1;
    wire [7:0]out1;
    mul4x4 uut(.x(x1),.y(y1),.out(out1));
    initial
    begin
    x1=4'b0100;y1=4'b1000;#20;
    x1=4'b0101;y1=4'b0011;#20;
    $finish;
    end
endmodule
