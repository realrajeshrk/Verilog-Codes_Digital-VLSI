`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2019 14:10:02
// Design Name: 
// Module Name: beha
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


module beha(
    input [3:0] a,
    input s0,
    input s1,
    output reg c
    );
    always@(a[3:0] or s0 or s1 )
    begin
    if(s0==0&s1==0)
    c=a[0];
    else if(s0==0&s1==1)
    c=a[1];
    else if(s0==1&s1==0)
    c=a[2];
    else
    c=a[3];
    end
    
endmodule
