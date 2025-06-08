module reg_file(
    input clk,
    input [4:0] rs1, rs2, rd,
    input we,
    input [31:0] wd,
    output [31:0] rd1, rd2
);
    reg [31:0] rf[0:31];
    
    initial begin
        rf[0] = 0;  // $zero register
    end
    
    assign rd1 = rf[rs1];
    assign rd2 = rf[rs2];
    
    always @(posedge clk) begin
        if (we) rf[rd] <= wd;
    end
endmodule