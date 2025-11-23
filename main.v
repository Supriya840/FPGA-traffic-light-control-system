`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:23 11/20/2025 
// Design Name: 
// Module Name:    main 
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
module main(
    input reset,
    input C,
    input Clk,
    output MR,
    output MY,
    output MG,
    output SR,
    output SY,
    output SG
    );
timer part1(ST,Clk,TS,TL);
fsm part2(TS,TL,C,reset,Clk,MR,MY,MG,SR,SY,SG,ST);

endmodule
