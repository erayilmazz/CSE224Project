module decoder(
    input [31:0] instr,
    output reg [2:0] alu_op,
    output reg [4:0] rs1, rs2, rd,
    output reg reg_write,
    output reg is_branch,
    output reg is_jump,
    output reg [15:0] imm
);
    always @(*) begin
        rs1 = instr[19:15];
        rs2 = instr[24:20];
        rd  = instr[11:7];
        imm = instr[15:0];  // Jump/branch hedef adresi için

        is_branch = 0;
        is_jump = 0;
        alu_op = 3'b000;
        reg_write = 1;

        case(instr[6:0])
            7'b0010011: alu_op = (instr[14:12] == 3'b000) ? 3'b110 : 3'b111; // ADDI/SUBI
            7'b0110011: alu_op = {1'b0, instr[14:12]}; // R-type
            7'b1100011: begin // BEQ
                is_branch = 1;
                reg_write = 0;
            end
            7'b1101111: begin // JUMP
                is_jump = 1;
                reg_write = 0;
            end
            default: begin
                reg_write = 0;
            end
        endcase
    end
endmodule
