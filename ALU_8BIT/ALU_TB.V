`timescale 1ns / 1ps

module ALU8BIT_TB(); 
reg [7:0] A, B ;
reg [3:0] ALU_Sel; 
wire [15:0] ALU_Result;
wire C;
wire Z;


ALU dut(.opcode(ALU_Sel),.operand1(A),.operand2(B), .result(ALU_Result),.flagC(C),.flagZ(Z));

initial 
begin
	     
     #0 ALU_Sel=4'b0000 ;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0001;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0010;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0011;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0100;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0101;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0110;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b0111;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1000;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1001;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1010;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1011;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1100;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1101;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1110;A=8'b1111_0000; B=8'b0000_1010;
     #50 ALU_Sel=4'b1111;A=8'b1111_0000; B=8'b0000_1010;
     #50 $finish;
     
end
   
  initial begin
    $monitor ($time , " A=%d, B=%d, ALU_Opcode=%d, ALU_Result=%d,CARRY=%d ,ZERO_FLAG=%d " ,A, B, ALU_Sel, ALU_Result,C,Z);
  end
  
endmodule
