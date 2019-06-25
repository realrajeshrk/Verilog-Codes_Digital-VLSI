`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2019 14:43:13
// Design Name: 
// Module Name: boothmod
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



module boothmod(
    input [3:0] a,
    input [3:0] b,
    input clk,
    input start,
    output [7:0] prod,
    output busy
    );
    reg[3:0] A,Q,M;
    reg F;
    reg [3:0] count;
    wire [3:0] sum,diff;
    initial A=4'b0;
    initial M=a;
    initial Q=b;
    initial F=1'b0;
    initial count=4'b0;
    always @(posedge clk)
    begin
   
   case({Q[0],F})
    2'b01:{A,Q,F}={A,sum,Q};
    2'b10:{A,Q,F}={diff[3],diff,Q};
    default: {A,Q,F} = {A[3],A,Q};
    endcase