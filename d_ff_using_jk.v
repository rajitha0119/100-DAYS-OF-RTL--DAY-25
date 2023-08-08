`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 18:05:22
// Design Name: 
// Module Name: d_ff_using_jk
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

module jk_ff(input clk,rst,j,k,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
if(!rst)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
end
endmodule
module d_ff_using_jk(
    input clk,
    input rst,
    input d,
    output q,
    output qbar
    );
  wire x1,x2;
  assign x1=d;
  assign x2=~d;
  jk_ff JK(clk,rst,x1,x2,q,qbar);
endmodule
