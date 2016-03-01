`timescale 1ns / 1ps
/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  hex_to_7seg.v
 * Project:    Lab_Assignment_3
 * Designer:   Richies Tan
 * Email:      tan.richies@gmail.com
 * Rev. No.:   Version 1.0
 * Rev. Date:  2/23/2016 
 *
 * Purpose:
 * Will take a 4 bit input and output logic on to 7 segment display 
 *
 * Notes:
 *
 ****************************************************************************/
module hex_to_7seg(hex, a, b, c, d, e, f, g, dp);	

	input [3:0] hex;
	output a, b, c, d, e, f, g, dp;
	reg    a, b, c, d, e, f, g, dp;
	
	always @ (hex)
	case (hex)
		4'b0000 : {a, b, c, d, e, f, g, dp} = 8'b0000001_1; // 0
		4'b0001 : {a, b, c, d, e, f, g, dp} = 8'b1001111_1; // 1
		4'b0010 : {a, b, c, d, e, f, g, dp} = 8'b0010010_1; // 2
		4'b0011 : {a, b, c, d, e, f, g, dp} = 8'b0000110_1; // 3
		4'b0100 : {a, b, c, d, e, f, g, dp} = 8'b1001100_1; // 4
		4'b0101 : {a, b, c, d, e, f, g, dp} = 8'b0100100_1; // 5
		4'b0110 : {a, b, c, d, e, f, g, dp} = 8'b0100000_1; // 6
		4'b0111 : {a, b, c, d, e, f, g, dp} = 8'b0001101_1; // 7
		4'b1000 : {a, b, c, d, e, f, g, dp} = 8'b0000000_1; // 8
		4'b1001 : {a, b, c, d, e, f, g, dp} = 8'b0001100_1; // 9
		4'b1010 : {a, b, c, d, e, f, g, dp} = 8'b0001000_1; // A
		4'b1011 : {a, b, c, d, e, f, g, dp} = 8'b1100000_1; // B
		4'b1100 : {a, b, c, d, e, f, g, dp} = 8'b0110001_1; // C
		4'b1101 : {a, b, c, d, e, f, g, dp} = 8'b1000010_1; // D
		4'b1110 : {a, b, c, d, e, f, g, dp} = 8'b0110000_1; // E
		4'b1111 : {a, b, c, d, e, f, g, dp} = 8'b0111000_1; // F
		default : {a, b, c, d, e, f, g, dp} = 8'b1111111_1; // OFF for default
	endcase

endmodule
