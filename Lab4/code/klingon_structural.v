`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:34 05/02/2023 
// Design Name: 
// Module Name:    klingon_structural 
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
module klingon_structural(
    input [3:0] in,
    output [6:0] out
    );
	 
	 wire w[11:0], N_in[3:0];
	 
	 not n1(N_in[3], in[3]);
	 not n2(N_in[2], in[2]);
	 not n3(N_in[1], in[1]);
	 not n4(N_in[0], in[0]);
	 
	 and a1(w[0], N_in[3], N_in[2]); //A'B'
	 and a2(w[1], in[2], N_in[0]); //BD'
	 and a3(w[2], N_in[1], N_in[0]); //C'D'
	 and a4(w[3], in[2], in[0]); //BD
	 and a5(w[4], N_in[2], N_in[1], N_in[0]); //B'C'D'
	 and a6(w[5], in[2], N_in[1], in[0]); //BC'D
	 and a7(w[6], N_in[2], in[1], in[0]); //B'CD
	 and a8(w[7], N_in[3], N_in[2], N_in[1], N_in[0]); //A'B'C'D'
	 and a9(w[8], in[2], in[1], N_in[0]); //BCD'
	 and a10(w[9], N_in[2], N_in[1], N_in[0]); //B'C'D'
	 and a11(w[10], in[2], in[1], in[0]); //BCD
	 and a12(w[11], in[3], in[0]); //AD
	 
	 assign out[6] = w[0]; //a = A'B'
	 or o1(out[5], in[3], w[1], w[2]); //b = A + BD'+ C'D'
	 or o2(out[4], in[3], w[3], w[4]); //c = A + BD + B'C'D'
	 or o3(out[3], w[5], w[6], w[7]); //d = BC'D + B'CD + A'B'C'D'
	 or o4(out[2], in[3], w[8], w[5], w[9]); //e = A + BCD' + BC'D + B'C'D'
	 or o5(out[1], in[3], w[2], w[10]); //f = A + C'D' + BCD
	 or o6(out[0], in[2], in[1], w[11]); //g = B + C + AD
	 

endmodule
