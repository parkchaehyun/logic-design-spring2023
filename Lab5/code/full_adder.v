`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:06 05/04/2023 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
	 
	 wire a1, a2, a3;
	 
	 xor u1(a1, a, b);
	 and u2(a2, a, b);
	 and u3(a3, a1, cin);
	 or u4(cout, a2, a3);
	 xor u5(sum, a1, cin);

endmodule
