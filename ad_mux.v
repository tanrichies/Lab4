`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
<<<<<<< HEAD
// Create Date:    12:48:14 03/02/2016 
=======
// Create Date:    14:17:56 03/02/2016 
>>>>>>> origin/master
// Design Name: 
// Module Name:    ad_mux 
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
<<<<<<< HEAD
module ad_mux(
    );

=======
module ad_mux(s, D_in, D_out);
input [2:0] s;
input [7:0] D_in;
output D_out;

reg [2:0] s;
reg anode;

case (s)
	3'b000 : D_out = D_in[0];
	3'b001 : D_out = D_in[1];
	3'b010 : D_out = D_in[2];
	3'b011 : D_out = D_in[3];
	3'b100 : D_out = D_in[4];
	3'b101 : D_out = D_in[5];
	3'b110 : D_out = D_in[6];
	3'b111 : D_out = D_in[7];
	default: D_out = D_in[0];
endcase
>>>>>>> origin/master

endmodule
