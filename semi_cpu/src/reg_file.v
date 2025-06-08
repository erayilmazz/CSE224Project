module reg_file(
    input clk,
    input reset_n,
    input [4:0] read_reg1,
    input [4:0] read_reg2,
    input [4:0] write_reg,
    input [31:0] write_data,
    input write_enable,
    output [31:0] read_data1,
    output [31:0] read_data2
);
reg [31:0] regs [0:31];

// Read Operations
assign read_data1 = regs[read_reg1];
assign read_data2 = regs[read_reg2];

// Write & Reset Logic
integer i;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] <= 0;
    end else if (write_enable) begin
        regs[write_reg] <= write_data;
    end
end
endmodule