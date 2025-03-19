`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:22 06/10/2023 
// Design Name: 
// Module Name:    SignExtendAdder 
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
module SignExtendAdder(
    input [7:0] PCAdded,
    input [7:0] jump,
    output [7:0] out
    );

	 assign out = PCAdded + jump;

endmodule
