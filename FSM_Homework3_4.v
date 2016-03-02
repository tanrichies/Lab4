`timescale 1ns / 1ps
/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  Homework_3_4.v
 * Project:    Homework_Assignment_3_4
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
module Fsm_Homework_3_4(clk, reset,
					in_ports,
					out_ports);

input 			clk, reset;
input		[3:1] in_ports;
output	[2:1] out_ports;

//**********************
// State register and
// next state variables
//**********************

reg		[4:1] present_states;
reg		[4:1] next_states;

//*********************************************************************************
// Next state combinational logic
//	(next state values can change anytime but will only be "clocked below"
//*********************************************************************************

always @(present_state, in_ports)
	case ({present_state, in_ports})
  
		5'b00000 : next_state = 3'b000; // based upon state table or state diagram
		5'b00001 : next_state = 3'b100; // based upon state table or state diagram
		5'b00010 : next_state = 3'b001; // based upon state table or state diagram
		5'b00011 : next_state = 3'b100; // based upon state table or state diagram
		5'b00100 : next_state = 3'b100; // based upon state table or state diagram
		5'b00101 : next_state = 3'b100; // based upon state table or state diagram
		5'b00110 : next_state = 3'b001; // based upon state table or state diagram
		5'b00111 : next_state = 3'b010; // based upon state table or state diagram
		5'b01000 : next_state = 3'b100; // based upon state table or state diagram
		5'b01001 : next_state = 3'b011; // based upon state table or state diagram
		5'b01010 : next_state = 3'b100; // based upon state table or state diagram
		5'b01011 : next_state = 3'b010; // based upon state table or state diagram
		5'b01100 : next_state = 3'b000; // based upon state table or state diagram
		5'b01101 : next_state = 3'b011; // based upon state table or state diagram
		5'b01110 : next_state = 3'b100; // based upon state table or state diagram
		5'b01111 : next_state = 3'b100; // based upon state table or state diagram
		5'b10000 : next_state = 3'b100; // based upon state table or state diagram
		5'b10001 : next_state = 3'b100; // based upon state table or state diagram
		5'b10010 : next_state = 3'b100; // based upon state table or state diagram
		5'b10011 : next_state = 3'b100; // based upon state table or state diagram
		default : next_state = 3'b000; // based upon state table or state diagram
	endcase
//*********************************************************************************
//	State registers(sequential logic)
//(output values can be changed whenever an input or state changes)
//*********************************************************************************

always @ (posedge clk or posedge reset)
	if(reset == 1'b1)
		present_state = 5'b0;
	else 
		present_state = next_state;

//*********************************************************************************
//	Output Combination Location
//	(outputs values can change whenever an input or state changes)
//*********************************************************************************

always @(present_state, in_ports)
	case ({present_state, in_ports})
  
		5'b00000 : next_state = 1'b0; // based upon state table or state diagram
		5'b00001 : next_state = 1'b1; // based upon state table or state diagram
		5'b00010 : next_state = 1'b0; // based upon state table or state diagram
		5'b00011 : next_state = 1'b1; // based upon state table or state diagram
		5'b00100 : next_state = 1'b1; // based upon state table or state diagram
		5'b00101 : next_state = 1'b0; // based upon state table or state diagram
		5'b00110 : next_state = 1'b1; // based upon state table or state diagram
		5'b00111 : next_state = 1'b0; // based upon state table or state diagram
		5'b01000 : next_state = 1'b1; // based upon state table or state diagram
		5'b01001 : next_state = 1'b0; // based upon state table or state diagram
		5'b01010 : next_state = 1'b1; // based upon state table or state diagram
		5'b01011 : next_state = 1'b0; // based upon state table or state diagram
		5'b01100 : next_state = 1'b0; // based upon state table or state diagram
		5'b01101 : next_state = 1'b0; // based upon state table or state diagram
		5'b01110 : next_state = 1'b1; // based upon state table or state diagram
		5'b01111 : next_state = 1'b1; // based upon state table or state diagram
		5'b10000 : next_state = 1'b1; // based upon state table or state diagram
		5'b10001 : next_state = 1'b1; // based upon state table or state diagram
		5'b10010 : next_state = 1'b1; // based upon state table or state diagram
		5'b10011 : next_state = 1'b1; // based upon state table or state diagram
		default : next_state = 1'b0; // based upon state table or state diagram
	endcase
endmodule
