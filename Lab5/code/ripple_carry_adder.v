`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:09 05/04/2023 
// Design Name: 
// Module Name:    ripple_carry_adder 
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
module ripple_carry_adder(
    input cin,
    input [1:0] in0,
    input [1:0] in1,
    output [1:0] out,
    output cout
    );
	 
	 wire w1;
	 full_adder fa0(in0[0], in1[0], cin, out[0], w1);
	 full_adder fa1(in0[1], in1[1], w1, out[1], cout);

endmodule
