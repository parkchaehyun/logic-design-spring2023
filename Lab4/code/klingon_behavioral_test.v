`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:21 05/02/2023
// Design Name:   klingon_behavioral
// Module Name:   /csehome/park/klingon/klingon_behavioral_test.v
// Project Name:  klingon
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: klingon_behavioral
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module klingon_behavioral_test;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;

	integer i;

	// Instantiate the Unit Under Test (UUT)
	klingon_behavioral uut (
		.in(in), 
		.out(out)
	);

	initial begin
		for (i=0; i<10; i=i+1)
		begin
		   in = i;
			#100;
		end
	end
      
endmodule

