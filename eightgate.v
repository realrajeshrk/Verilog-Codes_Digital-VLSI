`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2019 11:20:04
// Design Name: 
// Module Name: eightgate
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


module eightgate(
    input out,
    input s0,
    input s1,
    input s2,
    output [7:0]a
    );
    wire x,y,z;
    not(x,s0);
    not(y,s1);
    not(z,s2);
    and(a[0],x,y,z,out);
    and(a[1],x,y,s2,out);
    and(a[2],x,s1,z,out);
    and(a[3],x,s1,s2,out);
    and(a[4],s0,y,z,out);
    and(a[5],s0,y,s2,out);
    and(a[6],s0,s1,y,out);
    and(a[7],s0,s1,s2,out);
endmodule
