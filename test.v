`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:14 11/20/2025
// Design Name:   main
// Module Name:   /home/ise/traffic_light_controller/test.v
// Project Name:  traffic_light_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg reset;
	reg C;
	reg Clk;
	reg TS;
	reg TL;
	

	// Outputs
	wire MR;
	wire MY;
	wire MG;
	wire SR;
	wire SY;
	wire SG;
	wire ST;
	

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.reset(reset), 
		.C(C), 
		.Clk(Clk), 
		.MR(MR), 
		.MY(MY), 
		.MG(MG), 
		.SR(SR), 
		.SY(SY), 
		.SG(SG),
		.TS(TS),
		.TL(TL),
		.ST(ST)
	);
	initial begin
		reset = 1;
		C = 0;
		Clk = 0;
		TS = 0;
		TL = 0;
		#100 TS=0;TL=1;C=1;reset=0;
		#100 TS=0;TL=0;C=0;reset=0;
		#100 TS=1;TL=1;C=0;reset=0;
		#100;

	end
   always begin
		#100 Clk=~Clk;
	end


      
endmodule

