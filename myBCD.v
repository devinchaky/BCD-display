`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2023 08:54:43 PM
// Design Name: 
// Module Name: myBCD
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

// module definition
module myBCD(
    input in3, in2, in1, in0,   // input port declarations
    output a, b, c, d, e, f, g, AN0, AN1, AN2, AN3  // output port declarations
    );
    
    // internal signal declarations
    wire not3, not2, not1, not0, 
         combo1, combo2, combo3, combo4,
         combo5, combo6, combo7, combo8,
         combo9, combo10, combo11, combo12,
         combo13, combo14, combo15;
    
    // assign value 0 to LCD to be used, 1 to rest     
    assign AN0 = 0;
    assign AN1 = 1;
    assign AN2 = 1;
    assign AN3 = 1;
    
    // not gates for each input
    not int0 (not0, in0);
    not int1 (not1, in1);
    not int2 (not2, in2);
    not int3 (not3, in3);
    
    // and gates for each product term
    and t1 (combo1, in3, in2);
    and t2 (combo2, in3, in1);
    and t3 (combo3, not3, not2, not1, in0);
    and t4 (combo4, in2, not1, not0);
    and t5 (combo5, in2, not1, in0);
    and t6 (combo6, in2, in1, not0);
    and t7 (combo7, not2, in1, not0);
    and t8 (combo8, not3, not2, not1, in0);
    and t9 (combo9, in2, not1, not0);
    and t10 (combo10, in2, in1, in0);
    and t11 (combo11, in2, not1);
    and t12 (combo12, in1, in0);
    and t13 (combo13, not2, in1);
    and t14 (combo14, not3, not2, in0);
    and t15 (combo15, not3, not2, not1);
    
    // final output combos
    or outa (a, combo1, combo2, combo3, combo4);
    or outb (b, combo1, combo2, combo5, combo6);
    or outc (c, combo1, combo2, combo7);
    or outd (d, combo1, combo2, combo8, combo9, combo10);
    or oute (e, combo2, in0, combo11); 
    or outf (f, combo1, combo12, combo13, combo14);
    or outg (g, combo1, combo2, combo10, combo15);
    
endmodule
