module decoder(
    input [31:0] instruction,
    output reg [4:0] rs,
    output reg [4:0] rt,
    output reg [4:0] rd,
    output reg [15:0] immediate,
    output reg [2:0] alu_op,
    output reg reg_write,
    output reg alu_src
);
always @(*) begin
    // Default Values
    rs = 0;
    rt = 0;
    rd = 0;
    immediate = 0;
    alu_op = 0;
    reg_write = 0;
    alu_src = 0;
    
    // Instruction Decoding
    case(instruction[31:29])
        3'b010, 3'b011, 3'b100, 3'b101: begin  // R-type
            rd = instruction[28:24];
            rs = instruction[23:19];
            rt = instruction[18:14];
            alu_op = instruction[31:29];
            reg_write = 1;
        end
        3'b110, 3'b111: begin  // I-type
            rt = instruction[28:24];
            rs = instruction[23:19];
            immediate = instruction[15:0];
            alu_op = instruction[31:29];
            reg_write = 1;
            alu_src = 1;
        end
    endcase
end
endmodule