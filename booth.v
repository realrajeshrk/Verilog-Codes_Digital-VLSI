`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2019 16:00:23
// Design Name: 
// Module Name: booth
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


module booth(
    input [4:0] a,
    input [4:0] b,
    input clk,
    output [9:0] prod,
    output busy
    );
    reg[4:0] A,Q,M;
    reg F,start;
    reg [4:0] count;
    wire [4:0] sum,diff;
    
    
    reg fclk=0;
    integer i=0;
    integer period=50000; 
    always@(posedge clk)
    begin
    i=i+1;
    if(i==period)
    begin
    fclk=~fclk;
    i=0;
    end
    end 

    initial start=1;
    always @(posedge fclk)
    begin
   if(start) begin
    A=5'b0;
    M=a;
    Q=b;
    F=1'b0;
    count=5'b0;
    end
        else begin
    if(busy==1)
    begin    
    case({Q[0],F})
    2'b01:{A,Q,F}={sum[4],sum,Q};
    2'b10:{A,Q,F}={diff[4],diff,Q};
    default: {A,Q,F} = {A[4],A,Q};
    endcase
    count=count+1'b1;
    end
    end
    start=0;   
    end
    alu add(sum,A,M,1'b0);
    alu subtract(diff,A,~M,1'b1);
    assign prod={A,Q};
    assign busy={count<5};
    
endmodule
