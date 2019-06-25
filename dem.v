`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2019 14:30:07
// Design Name: 
// Module Name: dem
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


module dem(
    input out,
    input s0,
    input s1,
    output a,
    output b,
    output c,
    output d
    );
    assign a=~s0&~s1&out;
    assign b=~s0&s1&out;
    assign c=s0&~s1&out;
    assign d=s0&s1&out;
endmodule
