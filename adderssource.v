`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2018 19:06:13
// Design Name: 
// Module Name: adderssource
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


module adderssource(
    input a,
    input b,
    input c,
    output sum1,
    output carry1,
    output sum2,
    output carry2,
    output sub1,
    output borrow1,
    output sub2,
    output borrow2
    );
    //Half adder
    assign sum1=a^b;
    assign carry1=a&b;
    //Full adder
    assign sum2=a^b^c;
    assign carry2=(a&b)+(b&c)+(c&a);
    //Half subtractor
    assign sub1=a^b;
    assign borrow1=~a&b;
    //Full subtractor
    assign sub2=a^b^c;
    assign borrow2=(~a&b)+(b&c)+(c&~a);
    
    
    
endmodule
