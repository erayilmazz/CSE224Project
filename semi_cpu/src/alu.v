module alu(
    input [2:0] alu_op,
    input [31:0] operand1,
    input [31:0] operand2,
    output reg [31:0] result
);
always @(*) begin
    case(alu_op)
        3'b010: result = operand1 + operand2;  // ADD
        3'b011: result = operand1 - operand2;  // SUB
        3'b100: result = operand1 << operand2; // SHIFTL
        3'b101: result = operand1 >> operand2; // SHIFTR
        3'b110: result = operand1 + operand2;  // ADDI
        3'b111: result = operand1 - operand2;  // SUBI
        default: result = 0;
    endcase
end
endmodule