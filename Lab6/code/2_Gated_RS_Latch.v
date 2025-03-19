`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:37 05/18/2023 
// Design Name: 
// Module Name:    Gated_RS_Latch 
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
module Gated_RS_Latch(
    input R,
    input S,
	 input Enable,
    output Q,
    output Q_pr
    );
	 
	 wire w1, w2;
	 
	 and a1(w1, R, Enable);
	 and a2(w2, S, Enable);
	 
	 RS_Latch R1(w1, w2, Q, Q_pr);


endmodule
