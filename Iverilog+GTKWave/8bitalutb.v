`timescale 1ns/1ps  

module 8bitalutb;

reg [7:0]A,B;
reg [2:0] s;
wire carry;
wire [7:0]y;

8bitalu uut(
    .A(A),
    .B(B),
    .s(s),
    .carry(carry)
    .y(y
)
    );


initial begin

$dumpfile("8bitaluout.vcd");
$dumpvars(0,8bitalutb);

$monitor("Time=%0t, A=%0d, B=%0d, s=%b, y=%0d, carry=%b", $time, A, B, s, y, carry);

A=8'd10 ; B=8'd10,
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