`timescale 1ns / 1ps

module half_substractor(
    input a,b,
    output diff,
    output borrow
    );
    assign diff= a ^ b;
    assign borrow= ~a & b; 
endmodule
