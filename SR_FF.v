`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 10:25:08
// Design Name: 
// Module Name: SR_FF
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
module srff_behave(s,r,clk, q, qbar);

input s,r,clk;
output reg q, qbar;

always@(posedge clk)
begin

if(s == 1)
begin
q = 1;
qbar = 0;
end
else if(r == 1)
begin
q = 0;
qbar =1;
end
else if(s == 0 & r == 0) 
begin 
q <= q;
qbar <= qbar
end
end
endmodule
