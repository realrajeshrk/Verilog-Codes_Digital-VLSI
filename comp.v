`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2019 13:16:20
// Design Name: 
// Module Name: comp
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


module comp(
    input a1,a0,b1,b0,
    output [2:0]c,[2:0]d,
    output reg [2:0]e
    
    );
    assign c[0]= ~(a1^b1)&~(a0^b0);
    assign c[1]= (a1&~b1)|(a0&~b1&~b0)|(a1&a0&~b0);
    assign c[2]=(~a1&b1)|(~a0&b1&b0)|(~a1&~a0&b0);
    
    always@(a1 or a0 or b1 or b0 or e[2:0])
    begin
     if((a1==b1)&(a0==b0))
        e[0]=1;
     else if(a1>b1)
        e[1]=1;   
     else if(b1>a1)
        e[2]=1;  
     else if((a1==b1)&(a0>b0))
        e[1]=1;
     else if((a1==b1)&(a0<b0))
        e[2]=1;    
     else if((a0==b0)&(a1>b1))
        e[2]=1;  
     else if((a0==b0)&(a1<b1))
        e[1]=1;
    end   
        
endmodule
