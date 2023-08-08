`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 18:25:06
// Design Name: 
// Module Name: d_ff_using_t_tb
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


module d_ff_using_t_tb(

    );
    reg clk,rst,d;
    wire q,qbar;
    d_ff_using_t uut(clk,rst,d,q,qbar);
    initial begin
    rst=0;
    #10 rst=1;
    #10 rst=0;
    end
    initial begin
    clk=0;d=0;
    #10 clk=1;d=0;
    #10 clk=0;d=1;
    #10 clk=1;d=1;
    end    
endmodule
