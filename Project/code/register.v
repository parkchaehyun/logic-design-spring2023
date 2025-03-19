`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:31 06/10/2023 
// Design Name: 
// Module Name:    register 
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
module register(
	 input rst,
    input regWrite,
	 input clk,
    input [1:0] readRegister1,
    input [1:0] readRegister2,
    input [1:0] writeRegister,
    input [7:0] regWriteData,
    output reg [7:0] readData1,
    output reg [7:0] readData2
    );

    reg [7:0] data0, data1, data2, data3;
	 
	 initial begin
		  data0 = 8'b0;
        data1 = 8'b0;
        data2 = 8'b0;
        data3 = 8'b0;
    end

    always @(posedge clk or posedge rst) begin
		  if (rst) begin
			  data0 <= 8'b0;
			  data1 <= 8'b0;
			  data2 <= 8'b0;
			  data3 <= 8'b0;
		  end
		  else if (regWrite) begin
					case (writeRegister)
						 2'b00: data0 <= regWriteData;
						 2'b01: data1 <= regWriteData;
						 2'b10: data2 <= regWriteData;
						 2'b11: data3 <= regWriteData;
					endcase
		  end
	 end
	 
	 always @(*) begin
		  case (readRegister1)
				2'b00: readData1 <= data0;
				2'b01: readData1 <= data1;
				2'b10: readData1 <= data2;
				2'b11: readData1 <= data3;
		  endcase

		  case (readRegister2)
				2'b00: readData2 <= data0;
				2'b01: readData2 <= data1;
				2'b10: readData2 <= data2;
				2'b11: readData2 <= data3;
		  endcase
    end

endmodule
