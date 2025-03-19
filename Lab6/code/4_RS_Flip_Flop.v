`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:55 05/18/2023 
// Design Name: 
// Module Name:    RS_Flip_Flop 
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
module RS_Flip_Flop(
    input enable,
    input R,
    input S,
    output Q,
    output Q_pr,
	 output clk
    );
	 
	 reg R_reg;
	 reg S_reg;
	 
	 Simple_Oscillator S1(enable, clk);
	 Gated_RS_Latch R1(R_reg, S_reg, clk, Q, Q_pr);
	 
	 always@(posedge clk)
		begin
			R_reg = R;
			S_reg = S;
		end

endmodule
