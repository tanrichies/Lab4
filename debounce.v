`timescale 1ns / 1ps

/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  debounce.v
 * Project:    Lab_Assignment_3
 * Designer:   Richies Tan
 * Email:      tan.richies@gmail.com
 * Rev. No.:   Version 1.0
 * Rev. Date:  2/23/2016 
 *
 * Purpose:
 * The following template provides a odebounce that uses
 * 10 bits of data to register a button has been pressed
 *
 * Notes:
 * 
 * The debounce logic may be off if the clock ran at a 
 * faster speed such 1khz rather than 500 khz
 *
 ****************************************************************************/

module debounce( clk, reset, Din, Dout);
	input Din, clk, reset;
	output Dout;
	wire Dout;
	reg q9, q8, q7, q6, q5, q4, q3, q2, q1, q0;
	//triggers when clk or reset or on positive edge	
	always @ (posedge clk or posedge reset)
		if (reset == 1'b1)
			 // if reset = 1, set all registers to 0. 
			 // reset prevents the shift reg from getting clk input.
			{q9,q8,q7,q6,q5,q4,q3,q2,q1,q0} <= 10'b0;
		else begin
		// shift each bit left
			q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4;
			q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= Din;
		end
	// create the debounced, one-shot output pulse
	// output the stabilized debounced signal.

	assign Dout = !q9 & q8 & q7 & q6 & q5 &
						 q4 & q3 & q2 & q1 & q0;

endmodule

