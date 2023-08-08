`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 18:20:31
// Design Name: 
// Module Name: d_ff_using_t
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

module t_ff(input clk,rst,t,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
if(rst)
q<=1'b0;
else
if(t)
q<=~q;
else
q<=q;
end
endmodule

module d_ff_using_t(
    input clk,
    input rst,
    input d,
    output q,
    output qbar
    );
    wire x;
    assign x=d^q;
    t_ff TFF(clk,rst,x,q,qbar);
endmodule
