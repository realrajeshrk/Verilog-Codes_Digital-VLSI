`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2019 13:12:40
// Design Name: 
// Module Name: sss
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


module sss(
    input clk,
    output reg [3:0]up=4'b0000,
    output reg [3:0]down=4'b1001
    );
    reg fclk=0;
    integer i=0,j=1,hh=0;
    integer period=1000; 
    always@(posedge clk)
    begin
    i=i+1;
    if(i==period)
    begin
    j=j+1;
    fclk=~fclk;
    i=0;
    if(j<201)
            if(period==1000)
                period=4000;
            else if(period==4000)
                period=1000;
    if(j>=201)
    begin
            if(period==1000|period==2000)
                period=3000;
            else if(period==4000|period==3000)
                period=2000;    
            if(j==401)
            begin
             j=0;
             period=1000;
             end
     end
                                
    end
    end 
    //COUNTER
     always @(posedge fclk)
    begin
    if(up<4'b1001) 
    up=up+4'b0001;
    else if(up==9)
    up=0;
     if(down>4'b0000) 
    down=down-4'b0001;
    else if(down==0)
    down=4'b1001;
    end
endmodule
