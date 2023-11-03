// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="inverter_inverter,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.093000,HLS_SYN_LAT=76802,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=76,HLS_SYN_LUT=165,HLS_VERSION=2020_2}" *)

module inverter (
        ap_clk,
        ap_rst_n,
        in_r_Addr_A,
        in_r_EN_A,
        in_r_WEN_A,
        in_r_Din_A,
        in_r_Dout_A,
        in_r_Clk_A,
        in_r_Rst_A,
        out_r_Addr_A,
        out_r_EN_A,
        out_r_WEN_A,
        out_r_Din_A,
        out_r_Dout_A,
        out_r_Clk_A,
        out_r_Rst_A,
        s_axi_AXI_CPU_AWVALID,
        s_axi_AXI_CPU_AWREADY,
        s_axi_AXI_CPU_AWADDR,
        s_axi_AXI_CPU_WVALID,
        s_axi_AXI_CPU_WREADY,
        s_axi_AXI_CPU_WDATA,
        s_axi_AXI_CPU_WSTRB,
        s_axi_AXI_CPU_ARVALID,
        s_axi_AXI_CPU_ARREADY,
        s_axi_AXI_CPU_ARADDR,
        s_axi_AXI_CPU_RVALID,
        s_axi_AXI_CPU_RREADY,
        s_axi_AXI_CPU_RDATA,
        s_axi_AXI_CPU_RRESP,
        s_axi_AXI_CPU_BVALID,
        s_axi_AXI_CPU_BREADY,
        s_axi_AXI_CPU_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;
parameter    C_S_AXI_AXI_CPU_DATA_WIDTH = 32;
parameter    C_S_AXI_AXI_CPU_ADDR_WIDTH = 4;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXI_CPU_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output  [31:0] in_r_Addr_A;
output   in_r_EN_A;
output  [3:0] in_r_WEN_A;
output  [31:0] in_r_Din_A;
input  [31:0] in_r_Dout_A;
output   in_r_Clk_A;
output   in_r_Rst_A;
output  [31:0] out_r_Addr_A;
output   out_r_EN_A;
output  [3:0] out_r_WEN_A;
output  [31:0] out_r_Din_A;
input  [31:0] out_r_Dout_A;
output   out_r_Clk_A;
output   out_r_Rst_A;
input   s_axi_AXI_CPU_AWVALID;
output   s_axi_AXI_CPU_AWREADY;
input  [C_S_AXI_AXI_CPU_ADDR_WIDTH - 1:0] s_axi_AXI_CPU_AWADDR;
input   s_axi_AXI_CPU_WVALID;
output   s_axi_AXI_CPU_WREADY;
input  [C_S_AXI_AXI_CPU_DATA_WIDTH - 1:0] s_axi_AXI_CPU_WDATA;
input  [C_S_AXI_AXI_CPU_WSTRB_WIDTH - 1:0] s_axi_AXI_CPU_WSTRB;
input   s_axi_AXI_CPU_ARVALID;
output   s_axi_AXI_CPU_ARREADY;
input  [C_S_AXI_AXI_CPU_ADDR_WIDTH - 1:0] s_axi_AXI_CPU_ARADDR;
output   s_axi_AXI_CPU_RVALID;
input   s_axi_AXI_CPU_RREADY;
output  [C_S_AXI_AXI_CPU_DATA_WIDTH - 1:0] s_axi_AXI_CPU_RDATA;
output  [1:0] s_axi_AXI_CPU_RRESP;
output   s_axi_AXI_CPU_BVALID;
input   s_axi_AXI_CPU_BREADY;
output  [1:0] s_axi_AXI_CPU_BRESP;
output   interrupt;

reg in_r_EN_A;
reg out_r_EN_A;
reg[3:0] out_r_WEN_A;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
reg   [16:0] i_reg_86;
wire   [16:0] add_ln18_fu_97_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln18_fu_103_p2;
reg   [0:0] icmp_ln18_reg_190;
wire   [63:0] zext_ln18_fu_109_p1;
reg   [63:0] zext_ln18_reg_194;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
wire   [31:0] in_r_Addr_A_orig;
wire   [31:0] out_r_Addr_A_orig;
wire   [7:0] trunc_ln26_fu_114_p1;
wire   [7:0] trunc_ln26_1_fu_124_p4;
wire   [7:0] trunc_ln26_2_fu_140_p4;
wire   [7:0] trunc_ln26_3_fu_156_p4;
wire   [7:0] xor_ln26_3_fu_166_p2;
wire   [7:0] xor_ln26_2_fu_150_p2;
wire   [7:0] xor_ln26_1_fu_134_p2;
wire   [7:0] xor_ln26_fu_118_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

inverter_AXI_CPU_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXI_CPU_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXI_CPU_DATA_WIDTH ))
AXI_CPU_s_axi_U(
    .AWVALID(s_axi_AXI_CPU_AWVALID),
    .AWREADY(s_axi_AXI_CPU_AWREADY),
    .AWADDR(s_axi_AXI_CPU_AWADDR),
    .WVALID(s_axi_AXI_CPU_WVALID),
    .WREADY(s_axi_AXI_CPU_WREADY),
    .WDATA(s_axi_AXI_CPU_WDATA),
    .WSTRB(s_axi_AXI_CPU_WSTRB),
    .ARVALID(s_axi_AXI_CPU_ARVALID),
    .ARREADY(s_axi_AXI_CPU_ARREADY),
    .ARADDR(s_axi_AXI_CPU_ARADDR),
    .RVALID(s_axi_AXI_CPU_RVALID),
    .RREADY(s_axi_AXI_CPU_RREADY),
    .RDATA(s_axi_AXI_CPU_RDATA),
    .RRESP(s_axi_AXI_CPU_RRESP),
    .BVALID(s_axi_AXI_CPU_BVALID),
    .BREADY(s_axi_AXI_CPU_BREADY),
    .BRESP(s_axi_AXI_CPU_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln18_fu_103_p2 == 1'd0))) begin
        i_reg_86 <= add_ln18_fu_97_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_86 <= 17'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18_reg_190 <= icmp_ln18_fu_103_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln18_fu_103_p2 == 1'd0))) begin
        zext_ln18_reg_194[16 : 0] <= zext_ln18_fu_109_p1[16 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln18_fu_103_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_r_EN_A = 1'b1;
    end else begin
        in_r_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_r_EN_A = 1'b1;
    end else begin
        out_r_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18_reg_190 == 1'd0))) begin
        out_r_WEN_A = 4'd15;
    end else begin
        out_r_WEN_A = 4'd0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln18_fu_103_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln18_fu_103_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln18_fu_97_p2 = (i_reg_86 + 17'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign icmp_ln18_fu_103_p2 = ((i_reg_86 == 17'd76800) ? 1'b1 : 1'b0);

assign in_r_Addr_A = in_r_Addr_A_orig << 32'd2;

assign in_r_Addr_A_orig = zext_ln18_fu_109_p1;

assign in_r_Clk_A = ap_clk;

assign in_r_Din_A = 32'd0;

assign in_r_Rst_A = ap_rst_n_inv;

assign in_r_WEN_A = 4'd0;

assign out_r_Addr_A = out_r_Addr_A_orig << 32'd2;

assign out_r_Addr_A_orig = zext_ln18_reg_194;

assign out_r_Clk_A = ap_clk;

assign out_r_Din_A = {{{{xor_ln26_3_fu_166_p2}, {xor_ln26_2_fu_150_p2}}, {xor_ln26_1_fu_134_p2}}, {xor_ln26_fu_118_p2}};

assign out_r_Rst_A = ap_rst_n_inv;

assign trunc_ln26_1_fu_124_p4 = {{in_r_Dout_A[15:8]}};

assign trunc_ln26_2_fu_140_p4 = {{in_r_Dout_A[23:16]}};

assign trunc_ln26_3_fu_156_p4 = {{in_r_Dout_A[31:24]}};

assign trunc_ln26_fu_114_p1 = in_r_Dout_A[7:0];

assign xor_ln26_1_fu_134_p2 = (trunc_ln26_1_fu_124_p4 ^ 8'd255);

assign xor_ln26_2_fu_150_p2 = (trunc_ln26_2_fu_140_p4 ^ 8'd255);

assign xor_ln26_3_fu_166_p2 = (trunc_ln26_3_fu_156_p4 ^ 8'd255);

assign xor_ln26_fu_118_p2 = (trunc_ln26_fu_114_p1 ^ 8'd255);

assign zext_ln18_fu_109_p1 = i_reg_86;

always @ (posedge ap_clk) begin
    zext_ln18_reg_194[63:17] <= 47'b00000000000000000000000000000000000000000000000;
end

endmodule //inverter