`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 12:17:49
// Design Name: 
// Module Name: instruction
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

package instruction;
    typedef struct packed {
        op::t op;

        logic [4:0] rd_address;
        logic [4:0] rs1_address;
        logic [4:0] rs2_address;

        csr::t csr;

        logic [31:0] immediate;
    } t;

    localparam instruction::t NOP = '{
        op: op::ADDI,
        rd_address: 5'b0,
        rs1_address: 5'b0,
        rs2_address: 5'b0,

        csr: csr::t'(12'b0),

        immediate: 32'b0
    };

endpackage