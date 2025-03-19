`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:34:20 05/04/2023
// Design Name:   ripple_carry_adder
// Module Name:   /csehome/dbsejrdn/ripple_carry/ripple_carry_adder_test.v
// Project Name:  ripple_carry
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder_test;

	// Inputs
	reg [1:0] in0;
	reg [1:0] in1;
	reg cin;


	// Outputs
	wire [1:0] out;
	wire cout;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder uut (
		.cin(cin),
		.in0(in0), 
		.in1(in1), 
		.out(out), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		in0 = 2'b00; in1 = 2'b00; cin = 1'b0;
		i=0;
		
		for (i=0; i < 32; i = i + 1) begin
			{in0, in1, cin} = i; #100;
		end

	end
      
endmodule

