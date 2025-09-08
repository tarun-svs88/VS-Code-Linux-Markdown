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