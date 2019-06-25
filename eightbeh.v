`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2019 11:24:17
// Design Name: 
// Module Name: eightbeh
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


module eightbeh(
    input out,
    input s0,
    input s1,
    input s2,
    output reg [7:0]a
    );
    always@(out or s0 or s1 or s2)
    begin
    if(s0==0&s1==0&s2==0)
    a[0]=out;
    else if(s0==0&s1==0&s2==1)
    a[1]=out;
    else if(s0==0&s1==1&s2==0)
    a[2]=out;
    else if(s0==0&s1==1&s2==1)
    a[3]=out;
    else if(s0==1&s1==0&s2==0)
    a[4]=out;
    else if(s0==1&s1==0&s2==1)
    a[5]=out;
    else if(s0==1&s1==1&s2==0)
    a[6]=out;
    else if(s0==1&s1==1&s2==1)
    a[7]=out;
    end
endmodule
