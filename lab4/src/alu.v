module alu(
    input [31:0] InputA, InputB,
    input [1:0] Sopcode,
    output reg [31:0] Result
);

    always @(*) begin
        case(Sopcode)
            2'b00: Result = InputA + InputB;     // ADD
            2'b01: Result = InputA - InputB;     // SUB
            2'b10: Result = InputA << InputB;    // SHIFT LEFT
            2'b11: Result = InputA >> InputB;    // SHIFT RIGHT
            default: Result = 32'b0;
        endcase
    end

endmodule