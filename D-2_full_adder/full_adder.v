`timescale 1ns / 1ps

module full_adder(
    input a,b,cin,
    output sum,carry
    );
    wire s1,c1,c2;
    half_adder FA1(a,b,s1,c1);
    half_adder FA2(s1,cin,sum,c2);
    assign carry = c1|c2;
endmodule
