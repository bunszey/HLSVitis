-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity inverter is
generic (
    C_S_AXI_AXI_CPU_ADDR_WIDTH : INTEGER := 4;
    C_S_AXI_AXI_CPU_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    in_r_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    in_r_EN_A : OUT STD_LOGIC;
    in_r_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    in_r_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    in_r_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    in_r_Clk_A : OUT STD_LOGIC;
    in_r_Rst_A : OUT STD_LOGIC;
    out_r_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_r_EN_A : OUT STD_LOGIC;
    out_r_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    out_r_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_r_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r_Clk_A : OUT STD_LOGIC;
    out_r_Rst_A : OUT STD_LOGIC;
    s_axi_AXI_CPU_AWVALID : IN STD_LOGIC;
    s_axi_AXI_CPU_AWREADY : OUT STD_LOGIC;
    s_axi_AXI_CPU_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXI_CPU_ADDR_WIDTH-1 downto 0);
    s_axi_AXI_CPU_WVALID : IN STD_LOGIC;
    s_axi_AXI_CPU_WREADY : OUT STD_LOGIC;
    s_axi_AXI_CPU_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_AXI_CPU_DATA_WIDTH-1 downto 0);
    s_axi_AXI_CPU_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_AXI_CPU_DATA_WIDTH/8-1 downto 0);
    s_axi_AXI_CPU_ARVALID : IN STD_LOGIC;
    s_axi_AXI_CPU_ARREADY : OUT STD_LOGIC;
    s_axi_AXI_CPU_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXI_CPU_ADDR_WIDTH-1 downto 0);
    s_axi_AXI_CPU_RVALID : OUT STD_LOGIC;
    s_axi_AXI_CPU_RREADY : IN STD_LOGIC;
    s_axi_AXI_CPU_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_AXI_CPU_DATA_WIDTH-1 downto 0);
    s_axi_AXI_CPU_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_AXI_CPU_BVALID : OUT STD_LOGIC;
    s_axi_AXI_CPU_BREADY : IN STD_LOGIC;
    s_axi_AXI_CPU_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of inverter is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "inverter_inverter,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.093000,HLS_SYN_LAT=25442,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=72,HLS_SYN_LUT=162,HLS_VERSION=2020_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_const_lv15_6360 : STD_LOGIC_VECTOR (14 downto 0) := "110001101100000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal i_reg_86 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln16_fu_97_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln16_fu_103_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln16_reg_190 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln16_fu_109_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln16_reg_194 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal in_r_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal out_r_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln24_fu_114_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln24_1_fu_124_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln24_2_fu_140_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln24_3_fu_156_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln24_3_fu_166_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln24_2_fu_150_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln24_1_fu_134_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln24_fu_118_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component inverter_AXI_CPU_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;



begin
    AXI_CPU_s_axi_U : component inverter_AXI_CPU_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_AXI_CPU_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_AXI_CPU_DATA_WIDTH)
    port map (
        AWVALID => s_axi_AXI_CPU_AWVALID,
        AWREADY => s_axi_AXI_CPU_AWREADY,
        AWADDR => s_axi_AXI_CPU_AWADDR,
        WVALID => s_axi_AXI_CPU_WVALID,
        WREADY => s_axi_AXI_CPU_WREADY,
        WDATA => s_axi_AXI_CPU_WDATA,
        WSTRB => s_axi_AXI_CPU_WSTRB,
        ARVALID => s_axi_AXI_CPU_ARVALID,
        ARREADY => s_axi_AXI_CPU_ARREADY,
        ARADDR => s_axi_AXI_CPU_ARADDR,
        RVALID => s_axi_AXI_CPU_RVALID,
        RREADY => s_axi_AXI_CPU_RREADY,
        RDATA => s_axi_AXI_CPU_RDATA,
        RRESP => s_axi_AXI_CPU_RRESP,
        BVALID => s_axi_AXI_CPU_BVALID,
        BREADY => s_axi_AXI_CPU_BREADY,
        BRESP => s_axi_AXI_CPU_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln16_fu_103_p2 = ap_const_lv1_0))) then 
                i_reg_86 <= add_ln16_fu_97_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_86 <= ap_const_lv15_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln16_reg_190 <= icmp_ln16_fu_103_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln16_fu_103_p2 = ap_const_lv1_0))) then
                    zext_ln16_reg_194(14 downto 0) <= zext_ln16_fu_109_p1(14 downto 0);
            end if;
        end if;
    end process;
    zext_ln16_reg_194(63 downto 15) <= "0000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter0, icmp_ln16_fu_103_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln16_fu_103_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln16_fu_103_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln16_fu_97_p2 <= std_logic_vector(unsigned(i_reg_86) + unsigned(ap_const_lv15_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln16_fu_103_p2)
    begin
        if ((icmp_ln16_fu_103_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    icmp_ln16_fu_103_p2 <= "1" when (i_reg_86 = ap_const_lv15_6360) else "0";
    in_r_Addr_A <= std_logic_vector(shift_left(unsigned(in_r_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    in_r_Addr_A_orig <= zext_ln16_fu_109_p1(32 - 1 downto 0);
    in_r_Clk_A <= ap_clk;
    in_r_Din_A <= ap_const_lv32_0;

    in_r_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in_r_EN_A <= ap_const_logic_1;
        else 
            in_r_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    in_r_Rst_A <= ap_rst_n_inv;
    in_r_WEN_A <= ap_const_lv4_0;
    out_r_Addr_A <= std_logic_vector(shift_left(unsigned(out_r_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    out_r_Addr_A_orig <= zext_ln16_reg_194(32 - 1 downto 0);
    out_r_Clk_A <= ap_clk;
    out_r_Din_A <= (((xor_ln24_3_fu_166_p2 & xor_ln24_2_fu_150_p2) & xor_ln24_1_fu_134_p2) & xor_ln24_fu_118_p2);

    out_r_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            out_r_EN_A <= ap_const_logic_1;
        else 
            out_r_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    out_r_Rst_A <= ap_rst_n_inv;

    out_r_WEN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln16_reg_190, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln16_reg_190 = ap_const_lv1_0))) then 
            out_r_WEN_A <= ap_const_lv4_F;
        else 
            out_r_WEN_A <= ap_const_lv4_0;
        end if; 
    end process;

    trunc_ln24_1_fu_124_p4 <= in_r_Dout_A(15 downto 8);
    trunc_ln24_2_fu_140_p4 <= in_r_Dout_A(23 downto 16);
    trunc_ln24_3_fu_156_p4 <= in_r_Dout_A(31 downto 24);
    trunc_ln24_fu_114_p1 <= in_r_Dout_A(8 - 1 downto 0);
    xor_ln24_1_fu_134_p2 <= (trunc_ln24_1_fu_124_p4 xor ap_const_lv8_FF);
    xor_ln24_2_fu_150_p2 <= (trunc_ln24_2_fu_140_p4 xor ap_const_lv8_FF);
    xor_ln24_3_fu_166_p2 <= (trunc_ln24_3_fu_156_p4 xor ap_const_lv8_FF);
    xor_ln24_fu_118_p2 <= (trunc_ln24_fu_114_p1 xor ap_const_lv8_FF);
    zext_ln16_fu_109_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_86),64));
end behav;
