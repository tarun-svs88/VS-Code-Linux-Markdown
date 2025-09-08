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