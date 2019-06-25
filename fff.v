`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2019 14:19:45
// Design Name: 
// Module Name: fff
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

module BCDCounter(
    input Clk,
    output reg [3:0] O=4'b0000
    );
    reg TClk=0;integer i=0;
    always @(posedge Clk)
    begin
    i=i+1;
    if(i==50000000)
    begin
    TClk=~TClk;
    i=0;
    end
    end
    always @(posedge TClk)
    begin
    if(O==9)
    O = 4'b000;
    else
    O=O+1;
    end
endmodule


module BCDCounter_TB;
reg Clk;
wire [3:0] O;
always begin
Clk=0;
forever begin
#50000000 Clk=~Clk;
end
end
BCDCounter TB(Clk,O);
initial begin
end
endmodule

module fff(

    );
endmodule
