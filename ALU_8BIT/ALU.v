`timescale 1ns / 1ps

module ALU (opcode,operand1,operand2,result,flagC,flagZ);
input [3:0]opcode;
input[7:0]operand1,operand2;
output reg[15:0]result=16'b0;
output reg flagC = 1'b0,flagZ=1'b0;
parameter[3:0]ADD =4'b0000,
SUB=4'b0001,
MUL=4'b0010,
DIV=4'b0011,
LSL=4'b0100,
LSR=4'b0101,
ROL=4'b0110,
ROR=4'b0111,
AND=4'b1000,
OR=4'b1001,
XOR=4'b1010,
NOR=4'b1011,
NAND=4'b1100,
XNOR=4'b1101,
GTH=4'b1110,
EQL=4'b1111;

always@(opcode,operand1,operand2)
begin
case(opcode)
ADD:begin
result = operand1+operand2;
flagC = result[8];
flagZ = (result == 16'b0);
end
SUB:begin
result = operand1 - operand2;
flagC = result[8];
flagZ = (result == 16'b0);
end
MUL: begin
result = operand1*operand2;
flagZ = (result == 16'b0);
end
DIV: begin
result = operand1/operand2;
flagZ = (result == 16'b0);
end 
LSL: begin
result = operand1<<1;
flagZ = (result == 16'b0);
end
LSR: begin
result = operand1>>1;
flagZ = (result == 16'b0);
end
ROL: begin
result = {operand1[6:0],operand1[7]};
end
ROR: begin
result = {operand1[0],operand1[7:1]};
end
AND: begin
result = operand1 & operand2;
flagZ = (result == 16'b0);
end
OR: begin
result = operand1|operand2;
flagZ = (result == 16'b0);
end
NAND: begin
result = ~(operand1&operand2);
flagZ = (result == 16'b0);
end
NOR: begin
result = ~(operand1|operand2);
flagZ = (result == 16'b0);
end
XOR: begin
result = operand1^operand2;
flagZ = (result == 16'b0);
end 
XNOR:begin
result = ~(operand1^operand2);
flagZ = (result == 16'b0);
end 
GTH: begin
result = (operand1>operand2)?16'b1:16'b0 ;
end
EQL: begin
result = (operand1==operand2)?16'b1:16'b0;
end
default:begin
result = 16'b0;
flagC = 1'b0;
flagZ = 1'b0;
end
endcase
end
endmodule
