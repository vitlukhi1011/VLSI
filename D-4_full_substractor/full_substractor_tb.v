`timescale 1ns / 1ps

module simulation();
    reg  t_a,t_b,t_c;
    wire Diff,Borrow;
    full_substractor dut(.A(t_a),.B(t_b),.C(t_c),.DIFF(Diff),.BORROW(Borrow));
    initial begin
    t_a=0;t_b=0;t_c=0;
    #10
    t_a=0;t_b=0;t_c=1;
    #10
    t_a=0;t_b=1;t_c=0;
    #10
    t_a=0;t_b=1;t_c=1;
    #10
    t_a=1;t_b=0;t_c=0;
    #10
    t_a=1;t_b=0;t_c=1;
    #10
    t_a=1;t_b=1;t_c=0;
    #10
    t_a=1;t_b=1;t_c=1;
    #10
    $stop ;
    end
endmodule
