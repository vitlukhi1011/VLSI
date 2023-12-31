`timescale 1ns / 1ps

module HALF_ADDER_TB();
reg t_a,t_b;
wire SUM,CARRY;

HALF_ADDER dut(.a(t_a),.b(t_b),.sum(SUM),.carry(CARRY));
initial begin
t_a=0;t_b=0;
#10
t_a=0;t_b=1;
#10
t_a=1;t_b=0;
#10
t_a=1;t_b=1;
#10
$stop;
end
endmodule
