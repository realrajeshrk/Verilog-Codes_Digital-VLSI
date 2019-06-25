`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2019 20:54:25
// Design Name: 
// Module Name: eight
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


module eight(
    input out,
    input s0,
    input s1,
    input s2,
    output [7:0]a
);
    assign a[0]=~s0&~s1&~s2&out;
    assign a[1]=~s0&~s1&s2&out;
    assign a[2]=~s0&s1&~s2&out;
    assign a[3]=~s0&s1&s2&out;
    assign a[4]=s0&s1&s2&out;
    assign a[5]=s0&~s1&s2&out;
    assign a[6]=s0&s1&~s2&out;
    assign a[7]=s0&s1&s2&out;
endmodule
