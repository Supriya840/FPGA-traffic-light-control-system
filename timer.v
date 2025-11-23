`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:53 11/20/2025 
// Design Name: 
// Module Name:    timer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module timer(
    input ST,
    input Clk,
    output TS,
    output TL
    );
reg [7:0]value;
assign TS=(value>=4);
assign TL=(value>=14);
always @(posedge Clk or posedge ST)
begin
	if (ST==1)
		value<=0;
	else
		value<=value+1;
end

endmodule
