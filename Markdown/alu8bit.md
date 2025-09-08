Verilog Code

module alu8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] s,       
    output reg[7:0] y,
    output reg carry
);

always @(*) begin
    carry = 0; 
    
    case (s)
        3'b000: {carry, y} = A + B;      
        3'b001: {carry, y} = A - B;      
        3'b010: y = A & B;               
        3'b011: y = A | B;               
        3'b100: y = A ^ B;               
        3'b101: y = ~A;                  
        3'b110: y = A << 1;              
        3'b111: y = A >> 1;              
        default: y= 8'b00000000;
    endcase
end
endmodule

//In Verilog, outputs that are assigned inside an always block must be declared as reg, not plain wire (the default).


***Testbench Code***
`timescale 1ns/1ps  

module alu8bittb;

reg [7:0]A,B;
reg [2:0] s;
wire carry;
wire [7:0]y;

alu8bit uut(
    .A(A),
    .B(B),
    .s(s),
    .carry(carry),
    .y(y)
    );


initial begin

$dumpfile("alu8bitout.vcd");
$dumpvars(0,alu8bittb);

$monitor("Time=%0t, A=%0d, B=%0d, s=%b, y=%0d, carry=%b", $time, A, B, s, y, carry);

A=8'd10 ; B=8'd10;
s = 3'b000;
#10;

s = 3'b000; #10;  
s = 3'b001; #10;  
s = 3'b010; #10; 
s = 3'b011; #10;  
s = 3'b100; #10;  
s = 3'b101; #10;  
s = 3'b110; #10;  
s = 3'b111; #10; 

end 
endmodule


Case results

case 1
s = 3'b000 → ADD

{carry, y} = A + B = 10 + 10 = 20
y = 20 (8'd20) = 00010100
carry = 0

case 2
s = 3'b001 → SUB

{carry, y} = A - B = 10 - 10 = 0
y = 0 (8'd0) = 00000000
carry = 0   (depends on how subtraction is interpreted, but here no borrow)

case 3
s = 3'b010 → AND

y = A & B = 00001010 & 00001010 = 00001010
y = 10
carry = 0

case 4
s = 3'b011 → OR

y = A | B = 00001010 | 00001010 = 00001010
y = 10
carry = 0

case 5
s = 3'b100 → XOR

y = A ^ B = 00001010 ^ 00001010 = 00000000
y = 0
carry = 0

case 6
s = 3'b101 → NOT A

y = ~A = ~00001010 = 11110101
y = 245 (8'd245)
carry = 0

case 7
s = 3'b110 → Shift Left A

y = A << 1 = 00001010 << 1 = 00010100
y = 20
carry = 0

case 8
s = 3'b111 → Shift Right A

y = A >> 1 = 00001010 >> 1 = 00000101
y = 5
carry = 0
