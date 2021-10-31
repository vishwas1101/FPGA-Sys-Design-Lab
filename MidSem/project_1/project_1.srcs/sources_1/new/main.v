`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 11:46:41
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    input clk,
    input rst,
    input R1,
    input R2,
    input Enter,
    output Release_2,
    output Release_3,
    output Error
    );
    
wire Clk190;
wire ClkFSM;
wire keyPress;
assign keyPress = R1 | R2 | Enter;

clkDiv clk_division(clk, rst, Clk190);
Debounce db(Clk190, keyPress, rst, ClkFSM);
vendingMachineFSM fsm(ClkFSM, rst, R1, R2, Enter, Release_2, Release_3, Error);

endmodule
