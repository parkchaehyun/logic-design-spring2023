`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:37 06/10/2023 
// Design Name: 
// Module Name:    MUXtoWriteRegister 
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
module MUXtoWriteRegister(
    input [1:0] inst32,
    input [1:0] inst10,
    input RegDst,
    output reg [1:0] out
    );
	 
	 always @(*) begin
	    out = (RegDst == 1'b0) ? inst32 : inst10;
	 end

endmodule
