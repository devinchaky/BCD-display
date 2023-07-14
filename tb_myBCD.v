`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2023 10:34:00 PM
// Design Name: 
// Module Name: tb_myBCD
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

// testbench for myBCD module
module tb_myBCD;
    
    // create inputs of reg type
    reg [3:0] A;
    wire a, b, c, d, e, f, g;   // make outputs wires
    
    // instantiate module to be simulated
    myBCD uut (.in0(A[0]), .in1(A[1]), .in2(A[2]), .in3(A[3]),  // port declarations
                .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
    
    initial begin
                
    for (A = 0; A < 4'b1111; A = A + 1) // use for loop to test all possible input combinations
        #10;
        
    end
endmodule
