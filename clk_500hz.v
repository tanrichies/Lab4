`timescale 1ns / 1ps

/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  clk_500hz.v
 * Project:    Lab_Assignment_3
 * Designer:   Richies Tan
 * Email:      tan.richies@gmail.com
 * Rev. No.:   Version 1.0
 * Rev. Date:  2/23/2016 
 *
 * Purpose:
 * The following verilog code will "divide" an incoming clock 
 * by the 3-bit decimal value specified in the "if condition"
 
 * Notes:
 * The value of the counter that counts the incoming clock icks 
 * is equal to [(1000000/500)/2]
 ****************************************************************************/
 
module clk_500hz(clk_in, reset, clk_out);
	input clk_in, reset;
	output clk_out;
	reg clk_out;
	integer i;
 //Dividing the clock slows down the speed at which the bits shift. 
 //Therefore,the users can see the actual bits shifting.
 //Do the following at the positive edge of clk:
	always @(posedge clk_in or posedge reset) begin
		if (reset == 1'b1) begin
			i = 0;
			clk_out = 0; //clk is deasserted.
		end
		else begin 
			i = i + 1;  //if i is greater than 50000, set i = 0
				if (i>=100000) begin
					clk_out = ~clk_out;
					i = 0;
				end
		end
	end
endmodule

