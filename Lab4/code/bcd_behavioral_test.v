`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:30 04/27/2023
// Design Name:   bcd_behavioral
// Module Name:   /csehome/dbsejrdn/bcd_structural/bcd_behavioral_test.v
// Project Name:  bcd_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_behavioral
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_test_behavioral;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	bcd_behavioral uut (
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

