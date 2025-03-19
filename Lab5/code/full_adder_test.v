`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:29:21 05/04/2023
// Design Name:   full_adder
// Module Name:   /csehome/dbsejrdn/ripple_carry/full_adder_test.v
// Project Name:  ripple_carry
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_test;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		a = 0; b = 0; cin = 0;#100;
		a = 0; b = 0; cin = 1;#100;
		a = 0; b = 1; cin = 0;#100;
		a = 0; b = 1; cin = 1;#100;
		a = 1; b = 0; cin = 0;#100;
		a = 1; b = 0; cin = 1;#100;
		a = 1; b = 1; cin = 0;#100;
		a = 1; b = 1; cin = 1;#100;

	end
      
endmodule

