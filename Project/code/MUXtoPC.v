`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:32 06/10/2023 
// Design Name: 
// Module Name:    MUXtoPC 
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
module MUXtoPC(
    input [7:0] addedPC,
    input [7:0] jumpedPC,
    input branch,
    output [7:0] out
    );
	 
	 assign out = (branch == 1'b0) ? addedPC : jumpedPC;

endmodule
