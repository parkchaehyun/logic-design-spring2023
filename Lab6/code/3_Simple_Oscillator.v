`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:11 05/18/2023 
// Design Name: 
// Module Name:    Simple_Oscillator 
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
module Simple_Oscillator(
    input enable,
    output out
    );
	 
	 wire tmp;
	 and t1(tmp, enable, out);
	 not #5 t2(out, tmp);
	 
endmodule
