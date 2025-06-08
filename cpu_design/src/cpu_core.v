module cpu_core(
    input clk,
    input reset,
    input step,
    output reg [31:0] result
);
    wire [31:0] instruction;
    wire [31:0] alu_out;
    wire [31:0] reg_data1, reg_data2;
    wire [4:0] rs1, rs2, rd;
    wire [2:0] alu_op;
    wire reg_write;
    wire is_branch, is_jump;
    wire [15:0] imm;
    wire [15:0] pc_addr;

    pc program_counter(
        .clk(clk), .reset(reset), .step(step),
        .is_branch(is_branch), .is_jump(is_jump),
        .imm(imm),
        .rs1_data(reg_data1), .rs2_data(reg_data2),
        .pc_out(pc_addr)
    );

    instr_mem imem(.addr(pc_addr), .data(instruction));

    decoder dec(
        .instr(instruction),
        .alu_op(alu_op), .rs1(rs1), .rs2(rs2), .rd(rd),
        .reg_write(reg_write),
        .is_branch(is_branch), .is_jump(is_jump),
        .imm(imm)
    );

    reg_file rf(
        .clk(clk), .rs1(rs1), .rs2(rs2), .rd(rd),
        .we(reg_write), .wd(alu_out),
        .rd1(reg_data1), .rd2(reg_data2)
    );

    alu alu_unit(.a(reg_data1), .b(reg_data2), .op(alu_op), .result(alu_out));

    always @(posedge clk) begin
        result <= alu_out;
    end
endmodule
