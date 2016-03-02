`timescale 1ns / 1ps
/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  Homework_3_3.v
 * Project:    Homework_Assignment_3_3
 * Designer:   Richies Tan
 * Email:      tan.richies@gmail.com
 * Rev. No.:   Version 1.0
 * Rev. Date:  3/2/2016 
 *
 * Purpose:
 *	FSM boiler template for a mealy type finite state machine
 *
 * Notes:
 *
 ****************************************************************************/
module FSM_Homework_3_3(clk, reset,
					in_ports,
					out_ports);

input 			clk, reset;
input		[3:1] in_ports;
output	[2:1] out_ports;

//**********************
// State register and
// next state variables
//**********************

reg		[3:1] present_states;
reg		[3:1] next_states;

//*********************************************************************************
// Next state combinational logic
//	(next state values can change anytime but will only be "clocked below"
//*********************************************************************************

always @(present_state, in_ports)
	case ({present_state, in_ports})
  
		4'b0000 : next_state = 2'b00; // based upon state table or state diagram
		4'b0001 : next_state = 2'b01; // based upon state table or state diagram
		4'b0010 : next_state = 2'b10; // based upon state table or state diagram
		4'b0011 : next_state = 2'b11; // based upon state table or state diagram
		4'b0100 : next_state = 2'b01; // based upon state table or state diagram
		4'b0101 : next_state = 2'b10; // based upon state table or state diagram
		4'b0110 : next_state = 2'b10; // based upon state table or state diagram
		4'b0111 : next_state = 2'b00; // based upon state table or state diagram
		4'b1000 : next_state = 2'b11; // based upon state table or state diagram
		4'b1001 : next_state = 2'b11; // based upon state table or state diagram
		4'b1010 : next_state = 2'b11; // based upon state table or state diagram
		4'b1011 : next_state = 2'b10; // based upon state table or state diagram
		4'b1100 : next_state = 2'b00; // based upon state table or state diagram
		4'b1101 : next_state = 2'b00; // based upon state table or state diagram
		4'b1110 : next_state = 2'b00; // based upon state table or state diagram
		4'b1111 : next_state = 2'b01; // based upon state table or state diagram
		default : next_state = 2'b00; // based upon state table or state diagram
	endcase
//*********************************************************************************
//	State registers(sequential logic)
//(output values can be changed whenever an input or state changes)
//*********************************************************************************

always @ (posedge clk or posedge reset)
	if(reset == 1'b1)
		present_state = 4'b0;
	else 
		present_state = next_state;

//*********************************************************************************
//	Output Combination Location
//	(outputs values can change whenever an input or state changes)
//*********************************************************************************

always @(present_state, in_ports)
	case ({present_state, in_ports})
  
		4'b0000 : next_state = 1'b0; // based upon state table or state diagram
		4'b0001 : next_state = 1'b0; // based upon state table or state diagram
		4'b0010 : next_state = 1'b1; // based upon state table or state diagram
		4'b0011 : next_state = 1'b1; // based upon state table or state diagram
		4'b0100 : next_state = 1'b1; // based upon state table or state diagram
		4'b0101 : next_state = 1'b1; // based upon state table or state diagram
		4'b0110 : next_state = 1'b0; // based upon state table or state diagram
		4'b0111 : next_state = 1'b0; // based upon state table or state diagram
		4'b1000 : next_state = 1'b1; // based upon state table or state diagram
		4'b1001 : next_state = 1'b0; // based upon state table or state diagram
		4'b1010 : next_state = 1'b1; // based upon state table or state diagram
		4'b1011 : next_state = 1'b0; // based upon state table or state diagram
		4'b1100 : next_state = 1'b0; // based upon state table or state diagram
		4'b1101 : next_state = 1'b1; // based upon state table or state diagram
		4'b1110 : next_state = 1'b0; // based upon state table or state diagram
		4'b1111 : next_state = 1'b1; // based upon state table or state diagram
		default : next_state = 1'b0; // based upon state table or state diagram
	endcase
endmodule
