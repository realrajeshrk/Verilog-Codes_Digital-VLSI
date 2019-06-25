`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2019 13:32:56
// Design Name: 
// Module Name: cc
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


module cc(
    input clk,
    output reg [3:0]up=4'b0000,
    output reg [3:0]down=4'b1001
    );
    
    always @(posedge clk)
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



