`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2019 14:38:37
// Design Name: 
// Module Name: penc
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


module penc(
input [7:0]a,
output reg [2:0]out
);
always@(a or out)
begin
    
    if(a[7]==1)
    out=3'b111;
    else if(a[6]==1)
    out=3'b110;
    else if(a[5]==1)
    out=3'b101;
    else if(a[4]==1)
    out=3'b100;
    else if(a[3]==1)
    out=3'b011;
    else if(a[2]==1)
    out=3'b010;
    else if(a[1]==1)
    out=3'b001;
    else if(a[0]==1)
    out=3'b000;
   
end
endmodule
