module pc(
    input clk, reset, step,
    input is_branch,
    input is_jump,
    input [15:0] imm,
    input [31:0] rs1_data, rs2_data,
    output reg [15:0] pc_out = 0
);
    always @(posedge clk) begin
        if (reset)
            pc_out <= 0;
        else if (step) begin
            if (is_jump)
                pc_out <= imm;
            else if (is_branch && (rs1_data == rs2_data))
                pc_out <= imm;
            else
                pc_out <= pc_out + 1;
        end
    end
endmodule
