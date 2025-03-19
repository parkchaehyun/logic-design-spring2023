`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:49 05/02/2023
// Design Name:   klingon_structural
// Module Name:   /csehome/park/klingon/klingon_structural_test.v
// Project Name:  klingon
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: klingon_structural
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module klingon_structural_test;

	reg [3:0] in;
	
	wire [6:0] out;
	
	integer i;

	klingon_structural uut (
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

