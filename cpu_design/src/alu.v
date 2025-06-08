module alu(
    input [31:0] a, b,
    input [2:0] op,
    output reg [31:0] result
);
    parameter ADD=3'b010, SUB=3'b011, SHIFTL=3'b100, SHIFTR=3'b101, ADDI=3'b110, SUBI=3'b111;
    
    always @(*) begin
        case(op)
            ADD: result = a + b;
            SUB: result = a - b;
            SHIFTL: result = a << b;
            SHIFTR: result = a >> b;
            ADDI: result = a + b;
            SUBI: result = a - b;
            default: result = 0;
        endcase
    end
endmodule