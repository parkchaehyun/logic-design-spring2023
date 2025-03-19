`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:00 06/10/2023 
// Design Name: 
// Module Name:    MUXtoRegWriteData 
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
module MUXtoRegWriteData(
    input memToReg,
    input [7:0] ALUData,
    input [7:0] MemoryData,
    output [7:0] outData
    );
	 
	 assign outData = (memToReg == 1'b1) ? MemoryData : ALUData;


endmodule
