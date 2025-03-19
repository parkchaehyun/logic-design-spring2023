`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:24 06/10/2023 
// Design Name: 
// Module Name:    microprocessor 
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
module microprocessor(
    output [7:0] read_address,
	 input [7:0] inst,
    input clk,
    input rst,
	 output [6:0] segA,
	 output [6:0] segB,
	 output [6:0] segC,
	 output [6:0] segD
    );

    //wire [7:0] inst;
	 
	 wire new_clk;
	 wire branch;
    wire memToReg;
    wire memRead;
    wire memWrite;
    wire ALUSrc;
    wire regWrite;
	 wire regDst;
	 
    wire [7:0] regWriteData;
    wire [7:0] readData1;
    wire [7:0] readData2;
	 
	 wire [1:0] writeRegister;
	 
	 wire [7:0] signExtendData;
	 
	 
    wire [7:0] readDataFromMUX;
    wire [7:0] addedData;
	 
    wire [7:0] memoryData;
	 wire [7:0] pc;
	 wire [7:0] new_pcCount;
	 
	 assign read_address = new_pcCount;
	 
    wire [7:0] addedCount;
	 
    wire [7:0] jumpedPC;
	 	 
	 freq_divider T1(.clr(rst), .clk(clk), .clkout(new_clk));
	 control T2(.clk(new_clk), .op(inst[7:6]), .branch(branch), .memToReg(memToReg), .memRead(memRead), .memWrite(memWrite), .ALUSrc(ALUSrc), .regWrite(regWrite), .regDst(regDst));
	 MUXtoWriteRegister T3(.inst32(inst[3:2]), .inst10(inst[1:0]), .RegDst(regDst), .out(writeRegister));
	 register T4(.rst(rst), .clk(new_clk), .regWrite(regWrite), .readRegister1(inst[5:4]), .readRegister2(inst[3:2]), .writeRegister(writeRegister), .regWriteData(regWriteData), .readData1(readData1), .readData2(readData2));
	 MUXfromRegToALU T5(.readData(readData2), .signExtend(signExtendData), .ALUSrc(ALUSrc), .out(readDataFromMUX));
	 ALU T6(.readData1(readData1), .readDataFromMUX(readDataFromMUX), .addedData(addedData));
	 MUXtoRegWriteData T7(.memToReg(memToReg), .ALUData(addedData), .MemoryData(memoryData), .outData(regWriteData));
	 memory T8(.rst(rst), .address(addedData), .writeData(readData2), .memRead(memRead), .memWrite(memWrite), .clk(clk), .readData(memoryData));
	 signExtend T9(.two_bit(inst[1:0]), .eight_bit(signExtendData));
	 pc T10(.rst(rst), .inputCount(pc), .clk(new_clk), .out(new_pcCount));
	 pcAndOneAdder T11(.pcCount(new_pcCount), .addedCount(addedCount));
	 SignExtendAdder T12(.PCAdded(addedCount), .jump(signExtendData), .out(jumpedPC));
	 MUXtoPC T13(.addedPC(addedCount), .jumpedPC(jumpedPC), .branch(branch), .out(pc));
	 //IMEM_ppt T18(.read_address(new_pcCount), .instruction(inst));
	 sevenSegDecoder T15(.data(regWriteData), .segA(segA), .segB(segB));
	 
	 sevenSegDecoder T17(.data(new_pcCount), .segA(segC), .segB(segD));

endmodule
