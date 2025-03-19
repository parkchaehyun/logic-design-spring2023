`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:50 06/10/2023 
// Design Name: 
// Module Name:    pcAndOneAdder 
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
module pcAndOneAdder(
    input [7:0] pcCount,
    output [7:0] addedCount
    );
	 
	 assign addedCount = pcCount + 1;

endmodule
