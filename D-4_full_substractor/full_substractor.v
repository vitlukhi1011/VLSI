`timescale 1ns / 1ps

module full_substractor(
    input A,B,C,
    output DIFF,BORROW
    );
    //half_substractor HS1(A,B,D1,B1);
    //half_substractor HS2(C,D1,DIFF,B2);
    assign DIFF=A^B^C;
    assign BORROW=~A&B |~B&C |~A&C ;
    
endmodule
