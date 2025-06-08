module top(
    input clk,
    input reset_n,
    input step,
    output reg [31:0] Result
);

// Signal Definitions
wire [31:0] instruction;
wire [4:0] rs, rt, rd;
wire [15:0] immediate;
wire [2:0] alu_op;
wire reg_write;
wire alu_src;
wire [31:0] alu_result;

// Program Counter
reg [2:0] pc;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) pc <= 0;
    else if (step) pc <= pc + 1;
end

// Instruction Memory (ROM)
instruction_memory imem(
    .address(pc),
    .instruction(instruction)
);

// Instruction Decoder
decoder dec(
    .instruction(instruction),
    .rs(rs),
    .rt(rt),
    .rd(rd),
    .immediate(immediate),
    .alu_op(alu_op),
    .reg_write(reg_write),
    .alu_src(alu_src)
);

// Register File
reg_file rf(
    .clk(clk),
    .reset_n(reset_n),
    .read_reg1(rs),
    .read_reg2(rt),
    .write_reg(rd),
    .write_data(alu_result),
    .write_enable(reg_write),
    .read_data1(operand1),
    .read_data2(operand2)
);

// ALU Operand Selection
wire [31:0] operand1, operand2;
wire [31:0] alu_operand2 = alu_src ? {16'b0, immediate} : operand2;

// ALU
alu alu_unit(
    .alu_op(alu_op),
    .operand1(operand1),
    .operand2(alu_operand2),
    .result(alu_result)
);

// Output Result
always @(posedge clk) begin
    Result <= alu_result;
end

endmodule

// Instruction Memory (Örnek komutlar)
module instruction_memory(
    input [2:0] address,
    output reg [31:0] instruction
);
always @(*) begin
    case(address)
        0: instruction = 32'b110_01010_00000_0000000000001010; // ADDI r10, r0, 10
        1: instruction = 32'b110_01111_00000_0000000000001111; // ADDI r15, r0, 15
        2: instruction = 32'b010_11001_01010_01111_00000000000; // ADD r25, r10, r15
        3: instruction = 32'b111_10100_11001_0000000000000101; // SUBI r20, r25, 5
        4: instruction = 32'b110_00101_00000_0000000000000010; // ADDI r5, r0, 2
        5: instruction = 32'b100_11110_11001_00101_00000000000; // SHIFTL r30, r25, r5
        default: instruction = 0;
    endcase
end
endmodule