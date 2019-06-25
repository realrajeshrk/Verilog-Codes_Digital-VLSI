`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2019 19:36:58
// Design Name: 
// Module Name: sas
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


module sas(
    input [3:0] a,
    input [3:0] b,
    output reg [2:0] x
    );
    always@(a,b,x)
    begin
    x=3'b000;
    if(a>b)
     x[0]=1;
    else if(a==b)
     x[1]=1;
    else if(a<b)
     x[2]=1;
    end   
endmodule
