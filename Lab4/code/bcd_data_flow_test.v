`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:32:05 04/27/2023
// Design Name:   bcd_data_flow
// Module Name:   /csehome/dbsejrdn/bcd_structural/bcd_test_data_flow.v
// Project Name:  bcd_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_data_flow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_test_data_flow;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	bcd_data_flow uut (
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

