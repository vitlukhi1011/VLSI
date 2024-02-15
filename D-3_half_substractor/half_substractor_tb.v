`timescale 1ns / 1ps

module simulation();
    reg A,B;
    wire D,BO;
    half_substractor dut(.a(A),.b(B),.diff(D),.borrow(BO));
    initial
    begin
    A=0;B=0;
    #10
    A=0;B=1;
    #10
    A=1;B=0;
    #10
    A=1;B=1;
    #10
 
    $finish;
    end
endmodule
