`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2019 15:12:59
// Design Name: 
// Module Name: behav
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


module behav(
    input out,
    input s0,
    input s1,
    output reg a,
    output reg b,
    output reg c,
    output reg d
    );
    always@(out or s0 or s1)
    begin
    if(s0==0&s1==0)
    a=out;
    else if(s0==0&s1==1)
    b=out;
    else if(s0==1&s1==0)
    c=out;
    else
    d=out;
    end
endmodule
