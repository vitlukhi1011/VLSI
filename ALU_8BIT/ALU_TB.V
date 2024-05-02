`timescale 1ns / 1ps

module alu_tb();
reg [7:0] A, B ;
reg [3:0] ALU_Sel; 
  wire [8:0] ALU_Result;

alu a1(A, B, ALU_Sel, ALU_Result);

initial 
begin
	       ALU_Sel=4'b0000;//add
  		   A=8'b11111111; B=8'b00000000; // A = 0, B = 0
     #50   A=8'b1111_0000; B=8'b0000_1111; // A = 240, B = 15
     #50   A=8'b1111_1111; B=8'b1111_1111; // A = 255, B = 255
  #50;
end

  initial 
    $monitor ($time , " A=%d, B=%d, ALU_Opcode=%d, ALU_Result=%d", A, B, ALU_Sel, ALU_Result);
  
  initial begin
  $dumpfile("dump.vcd"); $dumpvars;
  end
    endmodule
