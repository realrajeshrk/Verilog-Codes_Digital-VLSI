`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2019 14:46:12
// Design Name: 
// Module Name: gateee
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


module gateee(
    input out,
    input s0,
    input s1,
    output a,
    output b,
    output c,
    output d
    );
    wire x,y;
    not(x,s0);
    not(y,s1);
    and(a,x,y,out);
    and(b,x,s1,out);
    and(c,s0,y,out);
    and(d,s0,s1,out);
endmodule
