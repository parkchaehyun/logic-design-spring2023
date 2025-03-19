`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:27:50 05/04/2023
// Design Name:   ALU
// Module Name:   /csehome/dbsejrdn/ALU/ALU_test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg A;
	reg B;
	reg M;
	reg S1;
	reg S0;

	// Outputs
	wire [5:0] F;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.S1(S1), 
		.S0(S0), 
		.F(F)
	);

	initial begin
		A=1'b0;B=1'b0;M=1'b0;S1=1'b0;S0=1'b0;i=0;
		
		for (i=0; i<32; i=i+1) begin
			{A, B, M, S1, S0} = i; #100;
		end

	end
      
endmodule

