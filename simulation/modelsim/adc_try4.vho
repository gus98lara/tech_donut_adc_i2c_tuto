-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/08/2021 00:45:31"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adc_try4 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	scl : BUFFER std_logic;
	sda : BUFFER std_logic;
	seg_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg_2 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg_3 : BUFFER std_logic_vector(6 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END adc_try4;

-- Design Ports Information
-- seg_0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adc_try4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_seg_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN1~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN1~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN2~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN2~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN8~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN8~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN3~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN3~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN3~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN3~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN4~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN4~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN4~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN4~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN5~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN5~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN5~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN5~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN6~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN6~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN6~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN6~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN7~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN7~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN7~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN7~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN8~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN8~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN2~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN2~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \i2cSlave|scl_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_reg~q\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|process_0~0_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|counter[1]~0_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|signal_in_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|signal_in_reg~q\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|state_reg~2_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|state_reg~3_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|state_reg~q\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|counter[0]~1_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|out_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|out_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|SCL_debounce|out_reg~q\ : std_logic;
SIGNAL \i2cSlave|scl_prev_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_prev_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~1_combout\ : std_logic;
SIGNAL \i2cSlave|scl_falling_reg~q\ : std_logic;
SIGNAL \i2cSlave|Add0~0_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~11_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~3_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[3]~12_combout\ : std_logic;
SIGNAL \i2cSlave|process_0~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_rising_reg~q\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \i2cSlave|sda_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_reg~q\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|process_0~0_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|counter[1]~0_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|signal_in_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|signal_in_reg~q\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|state_reg~2_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|state_reg~3_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|state_reg~q\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|counter[0]~1_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|out_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|out_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|SDA_debounce|out_reg~q\ : std_logic;
SIGNAL \i2cSlave|sda_prev_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_prev_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~2_combout\ : std_logic;
SIGNAL \i2cSlave|stop_reg~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i2cSlave|start_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|start_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~28_combout\ : std_logic;
SIGNAL \i2cSlave|continue_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|continue_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~45_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.read_ack_got_rising~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~27_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~46_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.read_stop~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~32_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~33_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~34_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~35_combout\ : std_logic;
SIGNAL \i2cSlave|LessThan0~0_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[1]~2_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[2]~3_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[3]~8_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[0]~2_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~5_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[1]~6_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[2]~7_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~19_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[4]~0_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[4]~1_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[5]~3_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[6]~1_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[6]~4_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~18_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~20_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~36_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.answer_ack_start~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~23_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~26_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~29_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~22_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~30_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.read~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~24_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~39_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.read_ack_start~q\ : std_logic;
SIGNAL \i2cSlave|continue_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~25_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~37_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~38_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~40_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~41_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.get_address_and_cmd~q\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~42_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.write~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~31_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~43_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~44_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.idle~q\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~4_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~1_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~2_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~5_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~0_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~6_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~10_combout\ : std_logic;
SIGNAL \i2cSlave|process_1~0_combout\ : std_logic;
SIGNAL \i2cSlave|process_1~1_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~21_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[3]~7_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[3]~8_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[1]~9_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[1]~6_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[1]~12_combout\ : std_logic;
SIGNAL \i2cSlave|data_from_master_reg[2]~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|data_from_master_reg[7]~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[0]~4_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[4]~10_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[5]~9_combout\ : std_logic;
SIGNAL \i2cSlave|data_from_master_reg[6]~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[6]~11_combout\ : std_logic;
SIGNAL \i2cSlave|data_from_master_reg[0]~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[0]~8_combout\ : std_logic;
SIGNAL \i2cSlave|data_from_master_reg[1]~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[3]~7_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[2]~5_combout\ : std_logic;
SIGNAL \i2cSlave|data_from_master_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|Selector0~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|channel~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|channel~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|Add0~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|channel~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|Add0~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|channel~4_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0[6]~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|go~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|go~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|nextState.turnOnSequencerState~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|sequencer_on~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~8_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.WAIT_PEND_DLY1~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.GETCMD_W~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD_W~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~10_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~12_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~14_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~16_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~18_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~20_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~21\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[7]~22_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~4_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector14~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector16~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector15~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr3~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr1~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr0~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|clkout_adccore\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|soc~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|eoc\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_rsp~combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|Selector1~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~6_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~8_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~10_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~12_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~14_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~15\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[5]~16_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|sample_store_address[0]~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|sample_store_address[1]~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|sample_store_address[2]~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|sample_store_address[3]~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~11_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~10_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~9_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~8_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~7_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~6_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~5_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~4_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[10]~4_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[3]~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~5_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[8]~1_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[7]~5_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~6_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[6]~6_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~7_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[9]~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~4_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[5]~7_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~8_combout\ : std_logic;
SIGNAL \bcd_conversion|z~69_combout\ : std_logic;
SIGNAL \bcd_conversion|z~70_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[11]~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~3_combout\ : std_logic;
SIGNAL \bcd_conversion|z~68_combout\ : std_logic;
SIGNAL \bcd_conversion|z~40_combout\ : std_logic;
SIGNAL \bcd_conversion|LessThan0~0_combout\ : std_logic;
SIGNAL \bcd_conversion|z~20_combout\ : std_logic;
SIGNAL \bcd_conversion|z~18_combout\ : std_logic;
SIGNAL \bcd_conversion|z~19_combout\ : std_logic;
SIGNAL \bcd_conversion|z~41_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[14]~23_combout\ : std_logic;
SIGNAL \bcd_conversion|z~23_combout\ : std_logic;
SIGNAL \bcd_conversion|z~22_combout\ : std_logic;
SIGNAL \bcd_conversion|z~21_combout\ : std_logic;
SIGNAL \bcd_conversion|z~39_combout\ : std_logic;
SIGNAL \bcd_conversion|z~56_combout\ : std_logic;
SIGNAL \bcd_conversion|z~66_combout\ : std_logic;
SIGNAL \bcd_conversion|z~64_combout\ : std_logic;
SIGNAL \bcd_conversion|z~73_combout\ : std_logic;
SIGNAL \bcd_conversion|z~74_combout\ : std_logic;
SIGNAL \bcd_conversion|z~71_combout\ : std_logic;
SIGNAL \bcd_conversion|z~72_combout\ : std_logic;
SIGNAL \bcd_conversion|z~65_combout\ : std_logic;
SIGNAL \bcd_conversion|z~26_combout\ : std_logic;
SIGNAL \bcd_conversion|z~25_combout\ : std_logic;
SIGNAL \bcd_conversion|z~24_combout\ : std_logic;
SIGNAL \bcd_conversion|z~67_combout\ : std_logic;
SIGNAL \bcd_conversion|z~55_combout\ : std_logic;
SIGNAL \bcd_conversion|z~58_combout\ : std_logic;
SIGNAL \bcd_conversion|z~63_combout\ : std_logic;
SIGNAL \bcd_conversion|z~43_combout\ : std_logic;
SIGNAL \bcd_conversion|z~44_combout\ : std_logic;
SIGNAL \bcd_conversion|z~42_combout\ : std_logic;
SIGNAL \bcd_conversion|z~28_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[4]~8_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~9_combout\ : std_logic;
SIGNAL \bcd_conversion|z~29_combout\ : std_logic;
SIGNAL \bcd_conversion|z~27_combout\ : std_logic;
SIGNAL \bcd_conversion|z~45_combout\ : std_logic;
SIGNAL \bcd_conversion|z~54_combout\ : std_logic;
SIGNAL \bcd_conversion|z~59_combout\ : std_logic;
SIGNAL \bcd_conversion|LessThan14~0_combout\ : std_logic;
SIGNAL \bcd_conversion|z~57_combout\ : std_logic;
SIGNAL \bcd_conversion|z~60_combout\ : std_logic;
SIGNAL \bcd_conversion|z~61_combout\ : std_logic;
SIGNAL \bcd_conversion|z~48_combout\ : std_logic;
SIGNAL \bcd_conversion|z~47_combout\ : std_logic;
SIGNAL \bcd_conversion|z~46_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[3]~9_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~10_combout\ : std_logic;
SIGNAL \bcd_conversion|z~30_combout\ : std_logic;
SIGNAL \bcd_conversion|z~32_combout\ : std_logic;
SIGNAL \bcd_conversion|z~31_combout\ : std_logic;
SIGNAL \bcd_conversion|z~49_combout\ : std_logic;
SIGNAL \bcd_conversion|z~62_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[12]~27_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[1]~11_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~12_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0[1]~feeder_combout\ : std_logic;
SIGNAL \bcd_conversion|z~35_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[2]~10_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~11_combout\ : std_logic;
SIGNAL \bcd_conversion|z~34_combout\ : std_logic;
SIGNAL \bcd_conversion|z~33_combout\ : std_logic;
SIGNAL \bcd_conversion|z~36_combout\ : std_logic;
SIGNAL \bcd_conversion|z~38_combout\ : std_logic;
SIGNAL \bcd_conversion|z~37_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[4]~18_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_valid_reg~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|data_valid_reg~q\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[4]~4_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[0]~0_combout\ : std_logic;
SIGNAL \bcd_conversion|z~50_combout\ : std_logic;
SIGNAL \bcd_conversion|z~52_combout\ : std_logic;
SIGNAL \bcd_conversion|z~51_combout\ : std_logic;
SIGNAL \bcd_conversion|z~53_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[5]~19_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[13]~28_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[14]~3_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[14]~29_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[6]~20_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[6]~3_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[7]~21_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~2_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~3_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[0]~0_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|CH0~0_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[8]~22_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[0]~2_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[9]~24_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[1]~15_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[11]~26_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[3]~17_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[10]~25_combout\ : std_logic;
SIGNAL \bcd_conversion|bcd[2]~16_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[2]~1_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~0_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~1_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~4_combout\ : std_logic;
SIGNAL \i2cSlave|sda_o_reg~q\ : std_logic;
SIGNAL \i2cSlave|sda_wen_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_wen_reg~q\ : std_logic;
SIGNAL \d_0|Mux6~0_combout\ : std_logic;
SIGNAL \d_0|Mux5~0_combout\ : std_logic;
SIGNAL \d_0|Mux4~0_combout\ : std_logic;
SIGNAL \d_0|Mux3~0_combout\ : std_logic;
SIGNAL \d_0|Mux2~0_combout\ : std_logic;
SIGNAL \d_0|Mux1~0_combout\ : std_logic;
SIGNAL \d_0|Mux0~0_combout\ : std_logic;
SIGNAL \d_1|Mux6~0_combout\ : std_logic;
SIGNAL \d_1|Mux5~0_combout\ : std_logic;
SIGNAL \d_1|Mux4~0_combout\ : std_logic;
SIGNAL \d_1|Mux3~0_combout\ : std_logic;
SIGNAL \d_1|Mux2~0_combout\ : std_logic;
SIGNAL \d_1|Mux1~0_combout\ : std_logic;
SIGNAL \d_1|Mux0~0_combout\ : std_logic;
SIGNAL \d_2|Mux6~0_combout\ : std_logic;
SIGNAL \d_2|Mux5~0_combout\ : std_logic;
SIGNAL \d_2|Mux4~0_combout\ : std_logic;
SIGNAL \d_2|Mux3~0_combout\ : std_logic;
SIGNAL \d_2|Mux2~0_combout\ : std_logic;
SIGNAL \d_2|Mux1~0_combout\ : std_logic;
SIGNAL \d_2|Mux0~0_combout\ : std_logic;
SIGNAL \d_3|Mux6~2_combout\ : std_logic;
SIGNAL \d_3|Mux5~2_combout\ : std_logic;
SIGNAL \d_3|Mux4~2_combout\ : std_logic;
SIGNAL \d_3|Mux3~2_combout\ : std_logic;
SIGNAL \d_3|Mux2~2_combout\ : std_logic;
SIGNAL \d_3|Mux1~2_combout\ : std_logic;
SIGNAL \d_3|Mux0~2_combout\ : std_logic;
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|channel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2cSlave|data_from_master_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|CH0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|reading0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \i2cSlave|data_to_master_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|bits_processed_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2cSlave|SCL_debounce|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL data_to_master : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|addr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \i2cSlave|SDA_debounce|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i2cSlave|data_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bcd_conversion|ALT_INV_bcd[10]~25_combout\ : std_logic;
SIGNAL \bcd_conversion|ALT_INV_bcd[9]~24_combout\ : std_logic;
SIGNAL \bcd_conversion|ALT_INV_bcd[8]~22_combout\ : std_logic;
SIGNAL \d_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \d_0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i2cSlave|ALT_INV_state_reg.read~q\ : std_logic;
SIGNAL \d_3|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \d_3|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \d_3|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \d_3|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
scl <= ww_scl;
sda <= ww_sda;
seg_0 <= ww_seg_0;
seg_1 <= ww_seg_1;
seg_2 <= ww_seg_2;
seg_3 <= ww_seg_3;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(11) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(10) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(9) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(8) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(7) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(6) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(5) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(4) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(3) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(2) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(1) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(0));

\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(5) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(4) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(3) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(2) & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(1) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(0));

\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \adc2|adc_mega_0|ADC_CTRL|sample_store_address[3]~3_combout\ & 
\adc2|adc_mega_0|ADC_CTRL|sample_store_address[2]~2_combout\ & \adc2|adc_mega_0|ADC_CTRL|sample_store_address[1]~1_combout\ & \adc2|adc_mega_0|ADC_CTRL|sample_store_address[0]~0_combout\);

\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(0) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(1) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(2) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(3) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(4) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(5) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(6) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(7) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(8) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(9) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(10) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(11) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);

\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ <= (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr0~0_combout\ & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr1~0_combout\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr2~0_combout\ & 
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr3~0_combout\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr4~0_combout\);

\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(0);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(1);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(2);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(3);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(4);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(5);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(6);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(7);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(8);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(9);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(10);
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11) <= \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(11);

\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\(0) <= \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\(0);
\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\(1) <= \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\(1);
\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\(2) <= \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\(2);
\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\(3) <= \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\(3);
\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\(4) <= \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\d_2|ALT_INV_Mux0~0_combout\ <= NOT \d_2|Mux0~0_combout\;
\bcd_conversion|ALT_INV_bcd[10]~25_combout\ <= NOT \bcd_conversion|bcd[10]~25_combout\;
\bcd_conversion|ALT_INV_bcd[9]~24_combout\ <= NOT \bcd_conversion|bcd[9]~24_combout\;
\bcd_conversion|ALT_INV_bcd[8]~22_combout\ <= NOT \bcd_conversion|bcd[8]~22_combout\;
\d_1|ALT_INV_Mux0~0_combout\ <= NOT \d_1|Mux0~0_combout\;
\d_0|ALT_INV_Mux0~0_combout\ <= NOT \d_0|Mux0~0_combout\;
\i2cSlave|ALT_INV_state_reg.read~q\ <= NOT \i2cSlave|state_reg.read~q\;
\d_3|ALT_INV_Mux0~2_combout\ <= NOT \d_3|Mux0~2_combout\;
\d_3|ALT_INV_Mux1~2_combout\ <= NOT \d_3|Mux1~2_combout\;
\d_3|ALT_INV_Mux5~2_combout\ <= NOT \d_3|Mux5~2_combout\;
\d_3|ALT_INV_Mux6~2_combout\ <= NOT \d_3|Mux6~2_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X58_Y54_N16
\seg_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(0));

-- Location: IOOBUF_X74_Y54_N9
\seg_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(1));

-- Location: IOOBUF_X60_Y54_N2
\seg_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(2));

-- Location: IOOBUF_X62_Y54_N30
\seg_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(3));

-- Location: IOOBUF_X74_Y54_N2
\seg_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(4));

-- Location: IOOBUF_X74_Y54_N16
\seg_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(5));

-- Location: IOOBUF_X74_Y54_N23
\seg_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_0(6));

-- Location: IOOBUF_X69_Y54_N23
\seg_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(0));

-- Location: IOOBUF_X78_Y49_N9
\seg_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(1));

-- Location: IOOBUF_X78_Y49_N2
\seg_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(2));

-- Location: IOOBUF_X60_Y54_N9
\seg_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(3));

-- Location: IOOBUF_X64_Y54_N2
\seg_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(4));

-- Location: IOOBUF_X66_Y54_N30
\seg_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(5));

-- Location: IOOBUF_X69_Y54_N30
\seg_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_1(6));

-- Location: IOOBUF_X78_Y44_N9
\seg_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(0));

-- Location: IOOBUF_X66_Y54_N2
\seg_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(1));

-- Location: IOOBUF_X69_Y54_N16
\seg_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(2));

-- Location: IOOBUF_X78_Y44_N2
\seg_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(3));

-- Location: IOOBUF_X78_Y43_N2
\seg_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(4));

-- Location: IOOBUF_X78_Y35_N2
\seg_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(5));

-- Location: IOOBUF_X78_Y43_N9
\seg_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg_2(6));

-- Location: IOOBUF_X78_Y35_N23
\seg_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|ALT_INV_Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(0));

-- Location: IOOBUF_X78_Y33_N9
\seg_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|ALT_INV_Mux5~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(1));

-- Location: IOOBUF_X78_Y33_N2
\seg_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|Mux4~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(2));

-- Location: IOOBUF_X69_Y54_N9
\seg_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|Mux3~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(3));

-- Location: IOOBUF_X78_Y41_N9
\seg_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(4));

-- Location: IOOBUF_X78_Y41_N2
\seg_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|ALT_INV_Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(5));

-- Location: IOOBUF_X78_Y43_N16
\seg_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_3|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => ww_seg_3(6));

-- Location: IOOBUF_X46_Y54_N2
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_conversion|ALT_INV_bcd[8]~22_combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X46_Y54_N23
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_conversion|ALT_INV_bcd[9]~24_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X51_Y54_N16
\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_conversion|ALT_INV_bcd[10]~25_combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X46_Y54_N9
\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_conversion|bcd[11]~26_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X62_Y0_N23
\scl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_scl);

-- Location: IOOBUF_X62_Y0_N30
\sda~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2cSlave|sda_o_reg~q\,
	oe => \i2cSlave|sda_wen_reg~q\,
	devoe => ww_devoe,
	o => ww_sda);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X62_Y0_N22
\scl~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_scl,
	o => \scl~input_o\);

-- Location: LCCOMB_X57_Y44_N22
\i2cSlave|scl_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|scl_reg~0_combout\ = !\scl~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scl~input_o\,
	combout => \i2cSlave|scl_reg~0_combout\);

-- Location: FF_X57_Y44_N23
\i2cSlave|scl_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|scl_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_reg~q\);

-- Location: LCCOMB_X57_Y44_N18
\i2cSlave|SCL_debounce|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|process_0~0_combout\ = \i2cSlave|scl_reg~q\ $ (!\i2cSlave|SCL_debounce|out_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|SCL_debounce|out_reg~q\,
	combout => \i2cSlave|SCL_debounce|process_0~0_combout\);

-- Location: LCCOMB_X57_Y44_N2
\i2cSlave|SCL_debounce|counter[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|counter[1]~0_combout\ = (\i2cSlave|SCL_debounce|state_reg~q\ & (\i2cSlave|SCL_debounce|counter\(0) & (\i2cSlave|SCL_debounce|counter\(1)))) # (!\i2cSlave|SCL_debounce|state_reg~q\ & (((\i2cSlave|SCL_debounce|counter\(1)) # 
-- (\i2cSlave|SCL_debounce|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SCL_debounce|counter\(0),
	datab => \i2cSlave|SCL_debounce|state_reg~q\,
	datac => \i2cSlave|SCL_debounce|counter\(1),
	datad => \i2cSlave|SCL_debounce|process_0~0_combout\,
	combout => \i2cSlave|SCL_debounce|counter[1]~0_combout\);

-- Location: FF_X57_Y44_N3
\i2cSlave|SCL_debounce|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SCL_debounce|counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SCL_debounce|counter\(1));

-- Location: LCCOMB_X57_Y44_N0
\i2cSlave|SCL_debounce|signal_in_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|signal_in_reg~0_combout\ = (\i2cSlave|scl_reg~q\ & (\i2cSlave|SCL_debounce|signal_in_reg~q\ & ((\i2cSlave|SCL_debounce|state_reg~q\) # (!\i2cSlave|SCL_debounce|out_reg~q\)))) # (!\i2cSlave|scl_reg~q\ & 
-- ((\i2cSlave|SCL_debounce|signal_in_reg~q\) # ((!\i2cSlave|SCL_debounce|state_reg~q\ & !\i2cSlave|SCL_debounce|out_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_reg~q\,
	datab => \i2cSlave|SCL_debounce|state_reg~q\,
	datac => \i2cSlave|SCL_debounce|signal_in_reg~q\,
	datad => \i2cSlave|SCL_debounce|out_reg~q\,
	combout => \i2cSlave|SCL_debounce|signal_in_reg~0_combout\);

-- Location: FF_X57_Y44_N1
\i2cSlave|SCL_debounce|signal_in_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SCL_debounce|signal_in_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SCL_debounce|signal_in_reg~q\);

-- Location: LCCOMB_X57_Y44_N28
\i2cSlave|SCL_debounce|state_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|state_reg~2_combout\ = (\i2cSlave|SCL_debounce|counter\(0) & ((\i2cSlave|scl_reg~q\ $ (\i2cSlave|SCL_debounce|signal_in_reg~q\)))) # (!\i2cSlave|SCL_debounce|counter\(0) & (\i2cSlave|SCL_debounce|counter\(1) & (\i2cSlave|scl_reg~q\ 
-- $ (\i2cSlave|SCL_debounce|signal_in_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SCL_debounce|counter\(0),
	datab => \i2cSlave|SCL_debounce|counter\(1),
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|SCL_debounce|signal_in_reg~q\,
	combout => \i2cSlave|SCL_debounce|state_reg~2_combout\);

-- Location: LCCOMB_X57_Y44_N16
\i2cSlave|SCL_debounce|state_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|state_reg~3_combout\ = (\i2cSlave|SCL_debounce|state_reg~q\ & (((\i2cSlave|SCL_debounce|state_reg~2_combout\)))) # (!\i2cSlave|SCL_debounce|state_reg~q\ & (\i2cSlave|scl_reg~q\ $ (((!\i2cSlave|SCL_debounce|out_reg~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_reg~q\,
	datab => \i2cSlave|SCL_debounce|state_reg~2_combout\,
	datac => \i2cSlave|SCL_debounce|state_reg~q\,
	datad => \i2cSlave|SCL_debounce|out_reg~q\,
	combout => \i2cSlave|SCL_debounce|state_reg~3_combout\);

-- Location: FF_X57_Y44_N17
\i2cSlave|SCL_debounce|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SCL_debounce|state_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SCL_debounce|state_reg~q\);

-- Location: LCCOMB_X57_Y44_N6
\i2cSlave|SCL_debounce|counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|counter[0]~1_combout\ = (\i2cSlave|SCL_debounce|state_reg~q\ & (\i2cSlave|SCL_debounce|counter\(1) & (!\i2cSlave|SCL_debounce|counter\(0)))) # (!\i2cSlave|SCL_debounce|state_reg~q\ & (((\i2cSlave|SCL_debounce|counter\(0)) # 
-- (\i2cSlave|SCL_debounce|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SCL_debounce|state_reg~q\,
	datab => \i2cSlave|SCL_debounce|counter\(1),
	datac => \i2cSlave|SCL_debounce|counter\(0),
	datad => \i2cSlave|SCL_debounce|process_0~0_combout\,
	combout => \i2cSlave|SCL_debounce|counter[0]~1_combout\);

-- Location: FF_X57_Y44_N7
\i2cSlave|SCL_debounce|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SCL_debounce|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SCL_debounce|counter\(0));

-- Location: LCCOMB_X57_Y44_N20
\i2cSlave|SCL_debounce|out_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|out_reg~0_combout\ = (!\i2cSlave|SCL_debounce|counter\(0) & (\i2cSlave|SCL_debounce|state_reg~q\ & (\i2cSlave|scl_reg~q\ $ (\i2cSlave|SCL_debounce|signal_in_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SCL_debounce|counter\(0),
	datab => \i2cSlave|SCL_debounce|state_reg~q\,
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|SCL_debounce|signal_in_reg~q\,
	combout => \i2cSlave|SCL_debounce|out_reg~0_combout\);

-- Location: LCCOMB_X57_Y44_N10
\i2cSlave|SCL_debounce|out_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SCL_debounce|out_reg~1_combout\ = (\i2cSlave|SCL_debounce|out_reg~0_combout\ & ((\i2cSlave|SCL_debounce|counter\(1) & ((\i2cSlave|SCL_debounce|out_reg~q\))) # (!\i2cSlave|SCL_debounce|counter\(1) & (!\i2cSlave|scl_reg~q\)))) # 
-- (!\i2cSlave|SCL_debounce|out_reg~0_combout\ & (((\i2cSlave|SCL_debounce|out_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_reg~q\,
	datab => \i2cSlave|SCL_debounce|out_reg~0_combout\,
	datac => \i2cSlave|SCL_debounce|out_reg~q\,
	datad => \i2cSlave|SCL_debounce|counter\(1),
	combout => \i2cSlave|SCL_debounce|out_reg~1_combout\);

-- Location: FF_X57_Y44_N11
\i2cSlave|SCL_debounce|out_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SCL_debounce|out_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SCL_debounce|out_reg~q\);

-- Location: LCCOMB_X57_Y44_N4
\i2cSlave|scl_prev_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|scl_prev_reg~0_combout\ = !\i2cSlave|SCL_debounce|out_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|SCL_debounce|out_reg~q\,
	combout => \i2cSlave|scl_prev_reg~0_combout\);

-- Location: FF_X57_Y44_N5
\i2cSlave|scl_prev_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|scl_prev_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_prev_reg~q\);

-- Location: LCCOMB_X57_Y44_N26
\i2cSlave|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~1_combout\ = (!\i2cSlave|scl_prev_reg~q\ & !\i2cSlave|SCL_debounce|out_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_prev_reg~q\,
	datad => \i2cSlave|SCL_debounce|out_reg~q\,
	combout => \i2cSlave|process_0~1_combout\);

-- Location: FF_X57_Y44_N27
\i2cSlave|scl_falling_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_falling_reg~q\);

-- Location: LCCOMB_X59_Y45_N14
\i2cSlave|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|Add0~0_combout\ = \i2cSlave|bits_processed_reg\(2) $ (((\i2cSlave|bits_processed_reg\(0) & \i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|Add0~0_combout\);

-- Location: LCCOMB_X59_Y45_N8
\i2cSlave|bits_processed_reg[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~11_combout\ = (\i2cSlave|bits_processed_reg[3]~8_combout\ & ((\i2cSlave|Add0~0_combout\) # ((\i2cSlave|bits_processed_reg\(2) & \i2cSlave|bits_processed_reg[0]~6_combout\)))) # (!\i2cSlave|bits_processed_reg[3]~8_combout\ & 
-- (((\i2cSlave|bits_processed_reg\(2) & \i2cSlave|bits_processed_reg[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[3]~8_combout\,
	datab => \i2cSlave|Add0~0_combout\,
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg[0]~6_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~11_combout\);

-- Location: FF_X59_Y45_N9
\i2cSlave|bits_processed_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(2));

-- Location: LCCOMB_X59_Y45_N26
\i2cSlave|bits_processed_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~3_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|bits_processed_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|bits_processed_reg[0]~3_combout\);

-- Location: LCCOMB_X58_Y45_N24
\i2cSlave|bits_processed_reg[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[3]~12_combout\ = (\i2cSlave|bits_processed_reg\(3) & ((\i2cSlave|bits_processed_reg[0]~6_combout\) # ((\i2cSlave|bits_processed_reg[3]~8_combout\ & !\i2cSlave|bits_processed_reg[0]~3_combout\)))) # 
-- (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|bits_processed_reg[3]~8_combout\ & ((\i2cSlave|bits_processed_reg[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[3]~8_combout\,
	datab => \i2cSlave|bits_processed_reg[0]~6_combout\,
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|bits_processed_reg[0]~3_combout\,
	combout => \i2cSlave|bits_processed_reg[3]~12_combout\);

-- Location: FF_X58_Y45_N25
\i2cSlave|bits_processed_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(3));

-- Location: LCCOMB_X57_Y44_N12
\i2cSlave|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~0_combout\ = (\i2cSlave|scl_prev_reg~q\ & \i2cSlave|SCL_debounce|out_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_prev_reg~q\,
	datad => \i2cSlave|SCL_debounce|out_reg~q\,
	combout => \i2cSlave|process_0~0_combout\);

-- Location: FF_X57_Y44_N13
\i2cSlave|scl_rising_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_rising_reg~q\);

-- Location: IOIBUF_X62_Y0_N29
\sda~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X59_Y42_N26
\i2cSlave|sda_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|sda_reg~0_combout\ = !\sda~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sda~input_o\,
	combout => \i2cSlave|sda_reg~0_combout\);

-- Location: FF_X59_Y42_N27
\i2cSlave|sda_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|sda_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_reg~q\);

-- Location: LCCOMB_X59_Y42_N10
\i2cSlave|SDA_debounce|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|process_0~0_combout\ = \i2cSlave|sda_reg~q\ $ (!\i2cSlave|SDA_debounce|out_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|sda_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|SDA_debounce|process_0~0_combout\);

-- Location: LCCOMB_X59_Y42_N2
\i2cSlave|SDA_debounce|counter[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|counter[1]~0_combout\ = (\i2cSlave|SDA_debounce|state_reg~q\ & (\i2cSlave|SDA_debounce|counter\(0) & (\i2cSlave|SDA_debounce|counter\(1)))) # (!\i2cSlave|SDA_debounce|state_reg~q\ & (((\i2cSlave|SDA_debounce|counter\(1)) # 
-- (\i2cSlave|SDA_debounce|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|counter\(0),
	datab => \i2cSlave|SDA_debounce|state_reg~q\,
	datac => \i2cSlave|SDA_debounce|counter\(1),
	datad => \i2cSlave|SDA_debounce|process_0~0_combout\,
	combout => \i2cSlave|SDA_debounce|counter[1]~0_combout\);

-- Location: FF_X59_Y42_N3
\i2cSlave|SDA_debounce|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SDA_debounce|counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SDA_debounce|counter\(1));

-- Location: LCCOMB_X59_Y42_N28
\i2cSlave|SDA_debounce|signal_in_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|signal_in_reg~0_combout\ = (\i2cSlave|sda_reg~q\ & (\i2cSlave|SDA_debounce|signal_in_reg~q\ & ((\i2cSlave|SDA_debounce|state_reg~q\) # (!\i2cSlave|SDA_debounce|out_reg~q\)))) # (!\i2cSlave|sda_reg~q\ & 
-- ((\i2cSlave|SDA_debounce|signal_in_reg~q\) # ((!\i2cSlave|SDA_debounce|state_reg~q\ & !\i2cSlave|SDA_debounce|out_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|SDA_debounce|state_reg~q\,
	datac => \i2cSlave|SDA_debounce|signal_in_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|SDA_debounce|signal_in_reg~0_combout\);

-- Location: FF_X59_Y42_N29
\i2cSlave|SDA_debounce|signal_in_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SDA_debounce|signal_in_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SDA_debounce|signal_in_reg~q\);

-- Location: LCCOMB_X59_Y42_N8
\i2cSlave|SDA_debounce|state_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|state_reg~2_combout\ = (\i2cSlave|SDA_debounce|counter\(0) & ((\i2cSlave|sda_reg~q\ $ (\i2cSlave|SDA_debounce|signal_in_reg~q\)))) # (!\i2cSlave|SDA_debounce|counter\(0) & (\i2cSlave|SDA_debounce|counter\(1) & (\i2cSlave|sda_reg~q\ 
-- $ (\i2cSlave|SDA_debounce|signal_in_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|counter\(0),
	datab => \i2cSlave|SDA_debounce|counter\(1),
	datac => \i2cSlave|sda_reg~q\,
	datad => \i2cSlave|SDA_debounce|signal_in_reg~q\,
	combout => \i2cSlave|SDA_debounce|state_reg~2_combout\);

-- Location: LCCOMB_X59_Y42_N24
\i2cSlave|SDA_debounce|state_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|state_reg~3_combout\ = (\i2cSlave|SDA_debounce|state_reg~q\ & (((\i2cSlave|SDA_debounce|state_reg~2_combout\)))) # (!\i2cSlave|SDA_debounce|state_reg~q\ & (\i2cSlave|sda_reg~q\ $ (((!\i2cSlave|SDA_debounce|out_reg~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|SDA_debounce|state_reg~2_combout\,
	datac => \i2cSlave|SDA_debounce|state_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|SDA_debounce|state_reg~3_combout\);

-- Location: FF_X59_Y42_N25
\i2cSlave|SDA_debounce|state_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SDA_debounce|state_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SDA_debounce|state_reg~q\);

-- Location: LCCOMB_X59_Y42_N30
\i2cSlave|SDA_debounce|counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|counter[0]~1_combout\ = (\i2cSlave|SDA_debounce|state_reg~q\ & (((!\i2cSlave|SDA_debounce|counter\(0) & \i2cSlave|SDA_debounce|counter\(1))))) # (!\i2cSlave|SDA_debounce|state_reg~q\ & ((\i2cSlave|SDA_debounce|process_0~0_combout\) 
-- # ((\i2cSlave|SDA_debounce|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|process_0~0_combout\,
	datab => \i2cSlave|SDA_debounce|state_reg~q\,
	datac => \i2cSlave|SDA_debounce|counter\(0),
	datad => \i2cSlave|SDA_debounce|counter\(1),
	combout => \i2cSlave|SDA_debounce|counter[0]~1_combout\);

-- Location: FF_X59_Y42_N31
\i2cSlave|SDA_debounce|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SDA_debounce|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SDA_debounce|counter\(0));

-- Location: LCCOMB_X59_Y42_N0
\i2cSlave|SDA_debounce|out_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|out_reg~0_combout\ = (!\i2cSlave|SDA_debounce|counter\(0) & (\i2cSlave|SDA_debounce|state_reg~q\ & (\i2cSlave|sda_reg~q\ $ (\i2cSlave|SDA_debounce|signal_in_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|counter\(0),
	datab => \i2cSlave|SDA_debounce|state_reg~q\,
	datac => \i2cSlave|sda_reg~q\,
	datad => \i2cSlave|SDA_debounce|signal_in_reg~q\,
	combout => \i2cSlave|SDA_debounce|out_reg~0_combout\);

-- Location: LCCOMB_X59_Y42_N6
\i2cSlave|SDA_debounce|out_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|SDA_debounce|out_reg~1_combout\ = (\i2cSlave|SDA_debounce|out_reg~0_combout\ & ((\i2cSlave|SDA_debounce|counter\(1) & ((\i2cSlave|SDA_debounce|out_reg~q\))) # (!\i2cSlave|SDA_debounce|counter\(1) & (!\i2cSlave|sda_reg~q\)))) # 
-- (!\i2cSlave|SDA_debounce|out_reg~0_combout\ & (((\i2cSlave|SDA_debounce|out_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|SDA_debounce|out_reg~0_combout\,
	datac => \i2cSlave|SDA_debounce|out_reg~q\,
	datad => \i2cSlave|SDA_debounce|counter\(1),
	combout => \i2cSlave|SDA_debounce|out_reg~1_combout\);

-- Location: FF_X59_Y42_N7
\i2cSlave|SDA_debounce|out_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|SDA_debounce|out_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|SDA_debounce|out_reg~q\);

-- Location: LCCOMB_X57_Y44_N8
\i2cSlave|sda_prev_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|sda_prev_reg~0_combout\ = !\i2cSlave|SDA_debounce|out_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|sda_prev_reg~0_combout\);

-- Location: FF_X57_Y44_N9
\i2cSlave|sda_prev_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|sda_prev_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_prev_reg~q\);

-- Location: LCCOMB_X57_Y44_N24
\i2cSlave|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~2_combout\ = (\i2cSlave|SCL_debounce|out_reg~q\ & (!\i2cSlave|scl_prev_reg~q\ & (\i2cSlave|sda_prev_reg~q\ & \i2cSlave|SDA_debounce|out_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SCL_debounce|out_reg~q\,
	datab => \i2cSlave|scl_prev_reg~q\,
	datac => \i2cSlave|sda_prev_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|process_0~2_combout\);

-- Location: FF_X57_Y44_N25
\i2cSlave|stop_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|stop_reg~q\);

-- Location: IOIBUF_X46_Y54_N29
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X57_Y44_N14
\i2cSlave|start_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|start_reg~0_combout\ = (\i2cSlave|SCL_debounce|out_reg~q\ & (!\i2cSlave|scl_prev_reg~q\ & (!\i2cSlave|sda_prev_reg~q\ & !\i2cSlave|SDA_debounce|out_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SCL_debounce|out_reg~q\,
	datab => \i2cSlave|scl_prev_reg~q\,
	datac => \i2cSlave|sda_prev_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|start_reg~0_combout\);

-- Location: FF_X57_Y44_N15
\i2cSlave|start_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|start_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|start_reg~q\);

-- Location: LCCOMB_X59_Y44_N24
\i2cSlave|state_reg~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~28_combout\ = (!\i2cSlave|stop_reg~q\ & (\rst~input_o\ & !\i2cSlave|start_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|stop_reg~q\,
	datac => \rst~input_o\,
	datad => \i2cSlave|start_reg~q\,
	combout => \i2cSlave|state_reg~28_combout\);

-- Location: LCCOMB_X58_Y44_N12
\i2cSlave|continue_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|continue_reg~1_combout\ = (\i2cSlave|scl_rising_reg~q\ & ((\i2cSlave|state_reg.read_ack_start~q\ & ((!\i2cSlave|SDA_debounce|out_reg~q\))) # (!\i2cSlave|state_reg.read_ack_start~q\ & (\i2cSlave|continue_reg~q\)))) # (!\i2cSlave|scl_rising_reg~q\ 
-- & (((\i2cSlave|continue_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|state_reg.read_ack_start~q\,
	datac => \i2cSlave|continue_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|continue_reg~1_combout\);

-- Location: FF_X58_Y44_N13
\i2cSlave|continue_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|continue_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|continue_reg~q\);

-- Location: LCCOMB_X58_Y44_N6
\i2cSlave|state_reg~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~45_combout\ = (\i2cSlave|continue_reg~0_combout\ & ((\i2cSlave|state_reg~28_combout\) # ((!\i2cSlave|state_reg~38_combout\ & \i2cSlave|state_reg.read_ack_got_rising~q\)))) # (!\i2cSlave|continue_reg~0_combout\ & 
-- (!\i2cSlave|state_reg~38_combout\ & (\i2cSlave|state_reg.read_ack_got_rising~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~0_combout\,
	datab => \i2cSlave|state_reg~38_combout\,
	datac => \i2cSlave|state_reg.read_ack_got_rising~q\,
	datad => \i2cSlave|state_reg~28_combout\,
	combout => \i2cSlave|state_reg~45_combout\);

-- Location: FF_X58_Y44_N7
\i2cSlave|state_reg.read_ack_got_rising\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.read_ack_got_rising~q\);

-- Location: LCCOMB_X58_Y44_N22
\i2cSlave|state_reg~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~27_combout\ = (!\i2cSlave|continue_reg~q\ & (\i2cSlave|scl_falling_reg~q\ & \i2cSlave|state_reg.read_ack_got_rising~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg.read_ack_got_rising~q\,
	combout => \i2cSlave|state_reg~27_combout\);

-- Location: LCCOMB_X58_Y44_N26
\i2cSlave|state_reg~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~46_combout\ = (\i2cSlave|state_reg~28_combout\ & ((\i2cSlave|state_reg~27_combout\) # (\i2cSlave|state_reg.read_stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~27_combout\,
	datac => \i2cSlave|state_reg.read_stop~q\,
	datad => \i2cSlave|state_reg~28_combout\,
	combout => \i2cSlave|state_reg~46_combout\);

-- Location: FF_X58_Y44_N27
\i2cSlave|state_reg.read_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.read_stop~q\);

-- Location: LCCOMB_X58_Y45_N28
\i2cSlave|state_reg~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~32_combout\ = (!\i2cSlave|state_reg.read~q\ & ((\i2cSlave|state_reg.read_ack_start~q\ & (\i2cSlave|scl_rising_reg~q\)) # (!\i2cSlave|state_reg.read_ack_start~q\ & ((\i2cSlave|scl_falling_reg~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.read_ack_start~q\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg.read~q\,
	combout => \i2cSlave|state_reg~32_combout\);

-- Location: LCCOMB_X58_Y44_N20
\i2cSlave|state_reg~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~33_combout\ = (\i2cSlave|state_reg.idle~q\ & ((\i2cSlave|state_reg~24_combout\) # ((\i2cSlave|state_reg~32_combout\)))) # (!\i2cSlave|state_reg.idle~q\ & (((\i2cSlave|start_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~24_combout\,
	datab => \i2cSlave|state_reg~32_combout\,
	datac => \i2cSlave|state_reg.idle~q\,
	datad => \i2cSlave|start_reg~q\,
	combout => \i2cSlave|state_reg~33_combout\);

-- Location: LCCOMB_X58_Y44_N18
\i2cSlave|state_reg~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~34_combout\ = (\i2cSlave|state_reg~33_combout\ & (!\i2cSlave|state_reg.get_address_and_cmd~q\ & (!\i2cSlave|state_reg.read_stop~q\ & !\i2cSlave|state_reg.write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~33_combout\,
	datab => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datac => \i2cSlave|state_reg.read_stop~q\,
	datad => \i2cSlave|state_reg.write~q\,
	combout => \i2cSlave|state_reg~34_combout\);

-- Location: LCCOMB_X59_Y44_N26
\i2cSlave|state_reg~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~35_combout\ = (!\i2cSlave|state_reg~34_combout\ & (\i2cSlave|state_reg.answer_ack_start~q\ & ((!\i2cSlave|process_1~1_combout\) # (!\i2cSlave|state_reg.get_address_and_cmd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datab => \i2cSlave|state_reg~34_combout\,
	datac => \i2cSlave|process_1~1_combout\,
	datad => \i2cSlave|state_reg.answer_ack_start~q\,
	combout => \i2cSlave|state_reg~35_combout\);

-- Location: LCCOMB_X59_Y45_N20
\i2cSlave|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|LessThan0~0_combout\ = (\i2cSlave|bits_processed_reg\(3)) # ((\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y44_N8
\i2cSlave|addr_reg[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[1]~2_combout\ = (\i2cSlave|scl_rising_reg~q\ & (!\i2cSlave|LessThan0~0_combout\ & (\i2cSlave|bits_processed_reg\(0) & \i2cSlave|state_reg.get_address_and_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|LessThan0~0_combout\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|state_reg.get_address_and_cmd~q\,
	combout => \i2cSlave|addr_reg[1]~2_combout\);

-- Location: LCCOMB_X59_Y45_N6
\i2cSlave|data_reg[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[2]~3_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & !\i2cSlave|bits_processed_reg\(2))) # (!\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & \i2cSlave|bits_processed_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|data_reg[2]~3_combout\);

-- Location: LCCOMB_X59_Y42_N22
\i2cSlave|addr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[3]~8_combout\ = (\i2cSlave|addr_reg[1]~2_combout\ & ((\i2cSlave|data_reg[2]~3_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[2]~3_combout\ & ((\i2cSlave|addr_reg\(3)))))) # (!\i2cSlave|addr_reg[1]~2_combout\ & 
-- (((\i2cSlave|addr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|addr_reg[1]~2_combout\,
	datac => \i2cSlave|addr_reg\(3),
	datad => \i2cSlave|data_reg[2]~3_combout\,
	combout => \i2cSlave|addr_reg[3]~8_combout\);

-- Location: FF_X59_Y42_N23
\i2cSlave|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(3));

-- Location: LCCOMB_X59_Y44_N18
\i2cSlave|addr_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~0_combout\ = (\i2cSlave|scl_rising_reg~q\ & (!\i2cSlave|LessThan0~0_combout\ & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|state_reg.get_address_and_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|LessThan0~0_combout\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|state_reg.get_address_and_cmd~q\,
	combout => \i2cSlave|addr_reg[0]~0_combout\);

-- Location: LCCOMB_X59_Y45_N28
\i2cSlave|data_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[0]~2_combout\ = (\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(0) $ (\i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|data_reg[0]~2_combout\);

-- Location: LCCOMB_X59_Y42_N20
\i2cSlave|addr_reg[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~5_combout\ = (\i2cSlave|addr_reg[0]~0_combout\ & ((\i2cSlave|data_reg[0]~2_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[0]~2_combout\ & ((\i2cSlave|addr_reg\(0)))))) # (!\i2cSlave|addr_reg[0]~0_combout\ & 
-- (((\i2cSlave|addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|addr_reg[0]~0_combout\,
	datac => \i2cSlave|addr_reg\(0),
	datad => \i2cSlave|data_reg[0]~2_combout\,
	combout => \i2cSlave|addr_reg[0]~5_combout\);

-- Location: FF_X59_Y42_N21
\i2cSlave|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(0));

-- Location: LCCOMB_X59_Y42_N14
\i2cSlave|addr_reg[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[1]~6_combout\ = (\i2cSlave|addr_reg[1]~2_combout\ & ((\i2cSlave|data_reg[0]~2_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[0]~2_combout\ & ((\i2cSlave|addr_reg\(1)))))) # (!\i2cSlave|addr_reg[1]~2_combout\ & 
-- (((\i2cSlave|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|addr_reg[1]~2_combout\,
	datac => \i2cSlave|addr_reg\(1),
	datad => \i2cSlave|data_reg[0]~2_combout\,
	combout => \i2cSlave|addr_reg[1]~6_combout\);

-- Location: FF_X59_Y42_N15
\i2cSlave|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(1));

-- Location: LCCOMB_X59_Y42_N16
\i2cSlave|addr_reg[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[2]~7_combout\ = (\i2cSlave|addr_reg[0]~0_combout\ & ((\i2cSlave|data_reg[2]~3_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[2]~3_combout\ & ((\i2cSlave|addr_reg\(2)))))) # (!\i2cSlave|addr_reg[0]~0_combout\ & 
-- (((\i2cSlave|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|addr_reg[0]~0_combout\,
	datac => \i2cSlave|addr_reg\(2),
	datad => \i2cSlave|data_reg[2]~3_combout\,
	combout => \i2cSlave|addr_reg[2]~7_combout\);

-- Location: FF_X59_Y42_N17
\i2cSlave|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(2));

-- Location: LCCOMB_X59_Y42_N12
\i2cSlave|state_reg~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~19_combout\ = (!\i2cSlave|addr_reg\(3) & (\i2cSlave|addr_reg\(0) & (\i2cSlave|addr_reg\(1) & !\i2cSlave|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg\(3),
	datab => \i2cSlave|addr_reg\(0),
	datac => \i2cSlave|addr_reg\(1),
	datad => \i2cSlave|addr_reg\(2),
	combout => \i2cSlave|state_reg~19_combout\);

-- Location: LCCOMB_X59_Y45_N16
\i2cSlave|data_reg[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[4]~0_combout\ = (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(0) $ (\i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|data_reg[4]~0_combout\);

-- Location: LCCOMB_X59_Y44_N10
\i2cSlave|addr_reg[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[4]~1_combout\ = (\i2cSlave|addr_reg[0]~0_combout\ & ((\i2cSlave|data_reg[4]~0_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[4]~0_combout\ & ((\i2cSlave|addr_reg\(4)))))) # (!\i2cSlave|addr_reg[0]~0_combout\ & 
-- (((\i2cSlave|addr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|addr_reg[0]~0_combout\,
	datac => \i2cSlave|addr_reg\(4),
	datad => \i2cSlave|data_reg[4]~0_combout\,
	combout => \i2cSlave|addr_reg[4]~1_combout\);

-- Location: FF_X59_Y44_N11
\i2cSlave|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(4));

-- Location: LCCOMB_X59_Y44_N4
\i2cSlave|addr_reg[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[5]~3_combout\ = (\i2cSlave|addr_reg[1]~2_combout\ & ((\i2cSlave|data_reg[4]~0_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[4]~0_combout\ & ((\i2cSlave|addr_reg\(5)))))) # (!\i2cSlave|addr_reg[1]~2_combout\ & 
-- (((\i2cSlave|addr_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg[1]~2_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|addr_reg\(5),
	datad => \i2cSlave|data_reg[4]~0_combout\,
	combout => \i2cSlave|addr_reg[5]~3_combout\);

-- Location: FF_X59_Y44_N5
\i2cSlave|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(5));

-- Location: LCCOMB_X59_Y45_N18
\i2cSlave|data_reg[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[6]~1_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & \i2cSlave|bits_processed_reg\(2))) # (!\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & !\i2cSlave|bits_processed_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|data_reg[6]~1_combout\);

-- Location: LCCOMB_X59_Y44_N22
\i2cSlave|addr_reg[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[6]~4_combout\ = (\i2cSlave|data_reg[6]~1_combout\ & ((\i2cSlave|addr_reg[0]~0_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|addr_reg[0]~0_combout\ & ((\i2cSlave|addr_reg\(6)))))) # (!\i2cSlave|data_reg[6]~1_combout\ & 
-- (((\i2cSlave|addr_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[6]~1_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|addr_reg\(6),
	datad => \i2cSlave|addr_reg[0]~0_combout\,
	combout => \i2cSlave|addr_reg[6]~4_combout\);

-- Location: FF_X59_Y44_N23
\i2cSlave|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(6));

-- Location: LCCOMB_X59_Y44_N20
\i2cSlave|state_reg~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~18_combout\ = (!\i2cSlave|addr_reg\(4) & (!\i2cSlave|addr_reg\(5) & !\i2cSlave|addr_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg\(4),
	datab => \i2cSlave|addr_reg\(5),
	datac => \i2cSlave|addr_reg\(6),
	combout => \i2cSlave|state_reg~18_combout\);

-- Location: LCCOMB_X59_Y44_N6
\i2cSlave|state_reg~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~20_combout\ = (\i2cSlave|state_reg.get_address_and_cmd~q\ & (\i2cSlave|state_reg~19_combout\ & (\i2cSlave|process_1~1_combout\ & \i2cSlave|state_reg~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datab => \i2cSlave|state_reg~19_combout\,
	datac => \i2cSlave|process_1~1_combout\,
	datad => \i2cSlave|state_reg~18_combout\,
	combout => \i2cSlave|state_reg~20_combout\);

-- Location: LCCOMB_X59_Y44_N2
\i2cSlave|state_reg~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~36_combout\ = (\i2cSlave|state_reg~31_combout\ & (((\i2cSlave|state_reg~35_combout\) # (\i2cSlave|state_reg~20_combout\)))) # (!\i2cSlave|state_reg~31_combout\ & (\i2cSlave|state_reg~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~31_combout\,
	datab => \i2cSlave|state_reg~28_combout\,
	datac => \i2cSlave|state_reg~35_combout\,
	datad => \i2cSlave|state_reg~20_combout\,
	combout => \i2cSlave|state_reg~36_combout\);

-- Location: FF_X59_Y44_N3
\i2cSlave|state_reg.answer_ack_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.answer_ack_start~q\);

-- Location: LCCOMB_X58_Y44_N28
\i2cSlave|state_reg~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~23_combout\ = (!\i2cSlave|state_reg.read_ack_got_rising~q\ & (\i2cSlave|state_reg.idle~q\ & (!\i2cSlave|state_reg.read_stop~q\ & !\i2cSlave|state_reg.answer_ack_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.read_ack_got_rising~q\,
	datab => \i2cSlave|state_reg.idle~q\,
	datac => \i2cSlave|state_reg.read_stop~q\,
	datad => \i2cSlave|state_reg.answer_ack_start~q\,
	combout => \i2cSlave|state_reg~23_combout\);

-- Location: LCCOMB_X58_Y44_N24
\i2cSlave|state_reg~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~26_combout\ = (\i2cSlave|state_reg~23_combout\ & (((\i2cSlave|state_reg.get_address_and_cmd~q\ & \i2cSlave|process_1~1_combout\)) # (!\i2cSlave|state_reg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~25_combout\,
	datab => \i2cSlave|state_reg~23_combout\,
	datac => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datad => \i2cSlave|process_1~1_combout\,
	combout => \i2cSlave|state_reg~26_combout\);

-- Location: LCCOMB_X58_Y44_N8
\i2cSlave|state_reg~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~29_combout\ = ((\i2cSlave|state_reg~27_combout\) # (\i2cSlave|state_reg~26_combout\)) # (!\i2cSlave|state_reg~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|state_reg~28_combout\,
	datac => \i2cSlave|state_reg~27_combout\,
	datad => \i2cSlave|state_reg~26_combout\,
	combout => \i2cSlave|state_reg~29_combout\);

-- Location: LCCOMB_X58_Y44_N0
\i2cSlave|state_reg~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~22_combout\ = (\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|state_reg.answer_ack_start~q\) # ((\i2cSlave|state_reg.read_ack_got_rising~q\ & \i2cSlave|continue_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.read_ack_got_rising~q\,
	datab => \i2cSlave|continue_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg.answer_ack_start~q\,
	combout => \i2cSlave|state_reg~22_combout\);

-- Location: LCCOMB_X58_Y45_N0
\i2cSlave|state_reg~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~30_combout\ = (!\i2cSlave|state_reg~29_combout\ & ((\i2cSlave|state_reg~22_combout\ & (\i2cSlave|cmd_reg~q\)) # (!\i2cSlave|state_reg~22_combout\ & ((\i2cSlave|state_reg.read~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg~29_combout\,
	datac => \i2cSlave|state_reg.read~q\,
	datad => \i2cSlave|state_reg~22_combout\,
	combout => \i2cSlave|state_reg~30_combout\);

-- Location: FF_X58_Y45_N1
\i2cSlave|state_reg.read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.read~q\);

-- Location: LCCOMB_X58_Y45_N30
\i2cSlave|state_reg~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~24_combout\ = (\i2cSlave|state_reg.read~q\ & (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|scl_falling_reg~q\ & \i2cSlave|bits_processed_reg[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.read~q\,
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|bits_processed_reg[0]~3_combout\,
	combout => \i2cSlave|state_reg~24_combout\);

-- Location: LCCOMB_X58_Y44_N4
\i2cSlave|state_reg~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~39_combout\ = (\i2cSlave|state_reg~24_combout\ & ((\i2cSlave|state_reg~28_combout\) # ((!\i2cSlave|state_reg~38_combout\ & \i2cSlave|state_reg.read_ack_start~q\)))) # (!\i2cSlave|state_reg~24_combout\ & 
-- (!\i2cSlave|state_reg~38_combout\ & (\i2cSlave|state_reg.read_ack_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~24_combout\,
	datab => \i2cSlave|state_reg~38_combout\,
	datac => \i2cSlave|state_reg.read_ack_start~q\,
	datad => \i2cSlave|state_reg~28_combout\,
	combout => \i2cSlave|state_reg~39_combout\);

-- Location: FF_X58_Y44_N5
\i2cSlave|state_reg.read_ack_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.read_ack_start~q\);

-- Location: LCCOMB_X58_Y44_N10
\i2cSlave|continue_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|continue_reg~0_combout\ = (\i2cSlave|scl_rising_reg~q\ & \i2cSlave|state_reg.read_ack_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|state_reg.read_ack_start~q\,
	combout => \i2cSlave|continue_reg~0_combout\);

-- Location: LCCOMB_X58_Y44_N30
\i2cSlave|state_reg~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~25_combout\ = (!\i2cSlave|continue_reg~0_combout\ & (!\i2cSlave|state_reg~24_combout\ & ((!\i2cSlave|process_1~1_combout\) # (!\i2cSlave|state_reg.write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~0_combout\,
	datab => \i2cSlave|state_reg.write~q\,
	datac => \i2cSlave|state_reg~24_combout\,
	datad => \i2cSlave|process_1~1_combout\,
	combout => \i2cSlave|state_reg~25_combout\);

-- Location: LCCOMB_X58_Y44_N16
\i2cSlave|state_reg~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~37_combout\ = (\i2cSlave|state_reg.answer_ack_start~q\) # ((\i2cSlave|state_reg.read_ack_got_rising~q\) # ((\i2cSlave|state_reg.get_address_and_cmd~q\ & \i2cSlave|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.answer_ack_start~q\,
	datab => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datac => \i2cSlave|process_1~0_combout\,
	datad => \i2cSlave|state_reg.read_ack_got_rising~q\,
	combout => \i2cSlave|state_reg~37_combout\);

-- Location: LCCOMB_X58_Y44_N2
\i2cSlave|state_reg~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~38_combout\ = (((\i2cSlave|state_reg~37_combout\ & \i2cSlave|scl_falling_reg~q\)) # (!\i2cSlave|state_reg~28_combout\)) # (!\i2cSlave|state_reg~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~25_combout\,
	datab => \i2cSlave|state_reg~37_combout\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg~28_combout\,
	combout => \i2cSlave|state_reg~38_combout\);

-- Location: LCCOMB_X59_Y44_N28
\i2cSlave|state_reg~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~40_combout\ = (!\i2cSlave|stop_reg~q\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|stop_reg~q\,
	datac => \rst~input_o\,
	combout => \i2cSlave|state_reg~40_combout\);

-- Location: LCCOMB_X59_Y44_N12
\i2cSlave|state_reg~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~41_combout\ = (\i2cSlave|state_reg~38_combout\ & (\i2cSlave|start_reg~q\ & ((\i2cSlave|state_reg~40_combout\)))) # (!\i2cSlave|state_reg~38_combout\ & ((\i2cSlave|state_reg.get_address_and_cmd~q\) # ((\i2cSlave|start_reg~q\ & 
-- \i2cSlave|state_reg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~38_combout\,
	datab => \i2cSlave|start_reg~q\,
	datac => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datad => \i2cSlave|state_reg~40_combout\,
	combout => \i2cSlave|state_reg~41_combout\);

-- Location: FF_X59_Y44_N13
\i2cSlave|state_reg.get_address_and_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.get_address_and_cmd~q\);

-- Location: LCCOMB_X58_Y45_N2
\i2cSlave|cmd_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|cmd_reg~0_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|state_reg.get_address_and_cmd~q\ & \i2cSlave|bits_processed_reg[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datad => \i2cSlave|bits_processed_reg[0]~3_combout\,
	combout => \i2cSlave|cmd_reg~0_combout\);

-- Location: LCCOMB_X58_Y45_N6
\i2cSlave|cmd_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|cmd_reg~1_combout\ = (\i2cSlave|cmd_reg~0_combout\ & ((\i2cSlave|SDA_debounce|out_reg~q\))) # (!\i2cSlave|cmd_reg~0_combout\ & (\i2cSlave|cmd_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|cmd_reg~0_combout\,
	datac => \i2cSlave|cmd_reg~q\,
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|cmd_reg~1_combout\);

-- Location: FF_X58_Y45_N7
\i2cSlave|cmd_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|cmd_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|cmd_reg~q\);

-- Location: LCCOMB_X58_Y45_N12
\i2cSlave|state_reg~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~42_combout\ = (!\i2cSlave|state_reg~29_combout\ & ((\i2cSlave|state_reg~22_combout\ & (!\i2cSlave|cmd_reg~q\)) # (!\i2cSlave|state_reg~22_combout\ & ((\i2cSlave|state_reg.write~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg~29_combout\,
	datac => \i2cSlave|state_reg.write~q\,
	datad => \i2cSlave|state_reg~22_combout\,
	combout => \i2cSlave|state_reg~42_combout\);

-- Location: FF_X58_Y45_N13
\i2cSlave|state_reg.write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.write~q\);

-- Location: LCCOMB_X58_Y44_N14
\i2cSlave|state_reg~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~31_combout\ = (\i2cSlave|state_reg~28_combout\ & (((!\i2cSlave|scl_falling_reg~q\) # (!\i2cSlave|state_reg.write~q\)) # (!\i2cSlave|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|process_1~0_combout\,
	datab => \i2cSlave|state_reg.write~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg~28_combout\,
	combout => \i2cSlave|state_reg~31_combout\);

-- Location: LCCOMB_X59_Y44_N14
\i2cSlave|state_reg~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~43_combout\ = (\i2cSlave|state_reg.idle~q\ & (((\i2cSlave|process_1~1_combout\ & \i2cSlave|state_reg.get_address_and_cmd~q\)))) # (!\i2cSlave|state_reg.idle~q\ & (((\i2cSlave|process_1~1_combout\ & 
-- \i2cSlave|state_reg.get_address_and_cmd~q\)) # (!\i2cSlave|state_reg~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.idle~q\,
	datab => \i2cSlave|state_reg~34_combout\,
	datac => \i2cSlave|process_1~1_combout\,
	datad => \i2cSlave|state_reg.get_address_and_cmd~q\,
	combout => \i2cSlave|state_reg~43_combout\);

-- Location: LCCOMB_X59_Y44_N30
\i2cSlave|state_reg~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~44_combout\ = (\i2cSlave|state_reg~40_combout\ & (((\i2cSlave|state_reg~20_combout\) # (!\i2cSlave|state_reg~43_combout\)) # (!\i2cSlave|state_reg~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~31_combout\,
	datab => \i2cSlave|state_reg~40_combout\,
	datac => \i2cSlave|state_reg~43_combout\,
	datad => \i2cSlave|state_reg~20_combout\,
	combout => \i2cSlave|state_reg~44_combout\);

-- Location: FF_X59_Y44_N31
\i2cSlave|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.idle~q\);

-- Location: LCCOMB_X58_Y45_N10
\i2cSlave|bits_processed_reg[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~4_combout\ = ((!\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|state_reg.idle~q\) # (!\i2cSlave|bits_processed_reg[0]~3_combout\)))) # (!\i2cSlave|state_reg.read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.idle~q\,
	datab => \i2cSlave|state_reg.read~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|bits_processed_reg[0]~3_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~4_combout\);

-- Location: LCCOMB_X58_Y45_N18
\i2cSlave|bits_processed_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~1_combout\ = (\i2cSlave|state_reg.write~q\ & (!\i2cSlave|scl_rising_reg~q\ & ((!\i2cSlave|process_1~0_combout\) # (!\i2cSlave|scl_falling_reg~q\)))) # (!\i2cSlave|state_reg.write~q\ & (((!\i2cSlave|process_1~0_combout\) # 
-- (!\i2cSlave|scl_falling_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~1_combout\);

-- Location: LCCOMB_X58_Y45_N20
\i2cSlave|bits_processed_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~2_combout\ = (\i2cSlave|bits_processed_reg\(3) & ((\i2cSlave|bits_processed_reg[0]~1_combout\) # ((!\i2cSlave|state_reg.write~q\ & !\i2cSlave|state_reg.get_address_and_cmd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datab => \i2cSlave|bits_processed_reg[0]~1_combout\,
	datac => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datad => \i2cSlave|bits_processed_reg\(3),
	combout => \i2cSlave|bits_processed_reg[0]~2_combout\);

-- Location: LCCOMB_X58_Y45_N8
\i2cSlave|bits_processed_reg[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~5_combout\ = (\i2cSlave|state_reg.write~q\ & (((\i2cSlave|bits_processed_reg[0]~1_combout\)))) # (!\i2cSlave|state_reg.write~q\ & (((!\i2cSlave|scl_rising_reg~q\ & \i2cSlave|bits_processed_reg[0]~1_combout\)) # 
-- (!\i2cSlave|state_reg.get_address_and_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datab => \i2cSlave|state_reg.get_address_and_cmd~q\,
	datac => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|bits_processed_reg[0]~1_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~5_combout\);

-- Location: LCCOMB_X59_Y44_N0
\i2cSlave|bits_processed_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~0_combout\ = (!\i2cSlave|stop_reg~q\ & !\i2cSlave|start_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|stop_reg~q\,
	datad => \i2cSlave|start_reg~q\,
	combout => \i2cSlave|bits_processed_reg[0]~0_combout\);

-- Location: LCCOMB_X58_Y45_N14
\i2cSlave|bits_processed_reg[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~6_combout\ = (\i2cSlave|bits_processed_reg[0]~0_combout\ & ((\i2cSlave|bits_processed_reg[0]~2_combout\) # ((\i2cSlave|bits_processed_reg[0]~4_combout\ & \i2cSlave|bits_processed_reg[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[0]~4_combout\,
	datab => \i2cSlave|bits_processed_reg[0]~2_combout\,
	datac => \i2cSlave|bits_processed_reg[0]~5_combout\,
	datad => \i2cSlave|bits_processed_reg[0]~0_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~6_combout\);

-- Location: LCCOMB_X59_Y45_N30
\i2cSlave|bits_processed_reg[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~10_combout\ = (\i2cSlave|bits_processed_reg\(0) & ((\i2cSlave|bits_processed_reg[0]~6_combout\))) # (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[3]~8_combout\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|bits_processed_reg[0]~6_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~10_combout\);

-- Location: FF_X59_Y45_N31
\i2cSlave|bits_processed_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(0));

-- Location: LCCOMB_X59_Y45_N2
\i2cSlave|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|process_1~0_combout\ = (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(3) & (!\i2cSlave|bits_processed_reg\(2) & !\i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|process_1~0_combout\);

-- Location: LCCOMB_X58_Y45_N22
\i2cSlave|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|process_1~1_combout\ = (\i2cSlave|scl_falling_reg~q\ & \i2cSlave|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|process_1~1_combout\);

-- Location: LCCOMB_X58_Y45_N4
\i2cSlave|state_reg~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~21_combout\ = (!\i2cSlave|state_reg.write~q\ & !\i2cSlave|state_reg.get_address_and_cmd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datac => \i2cSlave|state_reg.get_address_and_cmd~q\,
	combout => \i2cSlave|state_reg~21_combout\);

-- Location: LCCOMB_X58_Y45_N26
\i2cSlave|bits_processed_reg[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[3]~7_combout\ = (\i2cSlave|state_reg.idle~q\ & (\i2cSlave|bits_processed_reg[0]~0_combout\ & ((\i2cSlave|state_reg~21_combout\) # (!\i2cSlave|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|process_1~1_combout\,
	datab => \i2cSlave|state_reg~21_combout\,
	datac => \i2cSlave|state_reg.idle~q\,
	datad => \i2cSlave|bits_processed_reg[0]~0_combout\,
	combout => \i2cSlave|bits_processed_reg[3]~7_combout\);

-- Location: LCCOMB_X58_Y45_N16
\i2cSlave|bits_processed_reg[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[3]~8_combout\ = (\i2cSlave|bits_processed_reg[3]~7_combout\ & (!\i2cSlave|bits_processed_reg[0]~6_combout\ & ((!\i2cSlave|LessThan0~0_combout\) # (!\i2cSlave|state_reg.read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[3]~7_combout\,
	datab => \i2cSlave|state_reg.read~q\,
	datac => \i2cSlave|bits_processed_reg[0]~6_combout\,
	datad => \i2cSlave|LessThan0~0_combout\,
	combout => \i2cSlave|bits_processed_reg[3]~8_combout\);

-- Location: LCCOMB_X59_Y45_N0
\i2cSlave|bits_processed_reg[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[1]~9_combout\ = (\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|bits_processed_reg[0]~6_combout\) # ((\i2cSlave|bits_processed_reg[3]~8_combout\ & !\i2cSlave|bits_processed_reg\(0))))) # (!\i2cSlave|bits_processed_reg\(1) & 
-- (\i2cSlave|bits_processed_reg[3]~8_combout\ & (\i2cSlave|bits_processed_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[3]~8_combout\,
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|bits_processed_reg[0]~6_combout\,
	combout => \i2cSlave|bits_processed_reg[1]~9_combout\);

-- Location: FF_X59_Y45_N1
\i2cSlave|bits_processed_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(1));

-- Location: LCCOMB_X59_Y45_N10
\i2cSlave|data_reg[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[1]~6_combout\ = (\i2cSlave|state_reg.write~q\ & (\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|bits_processed_reg\(0) & !\i2cSlave|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|LessThan0~0_combout\,
	combout => \i2cSlave|data_reg[1]~6_combout\);

-- Location: LCCOMB_X60_Y45_N20
\i2cSlave|data_reg[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[1]~12_combout\ = (\i2cSlave|data_reg[1]~6_combout\ & ((\i2cSlave|data_reg[0]~2_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[0]~2_combout\ & ((\i2cSlave|data_reg\(1)))))) # (!\i2cSlave|data_reg[1]~6_combout\ & 
-- (((\i2cSlave|data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[1]~6_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|data_reg\(1),
	datad => \i2cSlave|data_reg[0]~2_combout\,
	combout => \i2cSlave|data_reg[1]~12_combout\);

-- Location: FF_X60_Y45_N21
\i2cSlave|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(1));

-- Location: LCCOMB_X60_Y45_N26
\i2cSlave|data_from_master_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_from_master_reg[2]~feeder_combout\ = \i2cSlave|data_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|data_reg\(1),
	combout => \i2cSlave|data_from_master_reg[2]~feeder_combout\);

-- Location: LCCOMB_X59_Y45_N4
\i2cSlave|data_from_master_reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_from_master_reg[7]~0_combout\ = (\i2cSlave|state_reg.write~q\ & (\i2cSlave|scl_rising_reg~q\ & \i2cSlave|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datac => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|LessThan0~0_combout\,
	combout => \i2cSlave|data_from_master_reg[7]~0_combout\);

-- Location: FF_X60_Y45_N27
\i2cSlave|data_from_master_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_from_master_reg[2]~feeder_combout\,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(2));

-- Location: LCCOMB_X59_Y45_N12
\i2cSlave|data_reg[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[0]~4_combout\ = (\i2cSlave|state_reg.write~q\ & (\i2cSlave|scl_rising_reg~q\ & (!\i2cSlave|bits_processed_reg\(0) & !\i2cSlave|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.write~q\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|LessThan0~0_combout\,
	combout => \i2cSlave|data_reg[0]~4_combout\);

-- Location: LCCOMB_X60_Y45_N14
\i2cSlave|data_reg[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[4]~10_combout\ = (\i2cSlave|data_reg[0]~4_combout\ & ((\i2cSlave|data_reg[4]~0_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[4]~0_combout\ & ((\i2cSlave|data_reg\(4)))))) # (!\i2cSlave|data_reg[0]~4_combout\ & 
-- (((\i2cSlave|data_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[0]~4_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|data_reg\(4),
	datad => \i2cSlave|data_reg[4]~0_combout\,
	combout => \i2cSlave|data_reg[4]~10_combout\);

-- Location: FF_X60_Y45_N15
\i2cSlave|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(4));

-- Location: FF_X60_Y45_N31
\i2cSlave|data_from_master_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|data_reg\(4),
	sload => VCC,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(5));

-- Location: LCCOMB_X60_Y45_N12
\i2cSlave|data_reg[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[5]~9_combout\ = (\i2cSlave|data_reg[1]~6_combout\ & ((\i2cSlave|data_reg[4]~0_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[4]~0_combout\ & ((\i2cSlave|data_reg\(5)))))) # (!\i2cSlave|data_reg[1]~6_combout\ & 
-- (((\i2cSlave|data_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[1]~6_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|data_reg\(5),
	datad => \i2cSlave|data_reg[4]~0_combout\,
	combout => \i2cSlave|data_reg[5]~9_combout\);

-- Location: FF_X60_Y45_N13
\i2cSlave|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(5));

-- Location: LCCOMB_X60_Y45_N8
\i2cSlave|data_from_master_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_from_master_reg[6]~feeder_combout\ = \i2cSlave|data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|data_reg\(5),
	combout => \i2cSlave|data_from_master_reg[6]~feeder_combout\);

-- Location: FF_X60_Y45_N9
\i2cSlave|data_from_master_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_from_master_reg[6]~feeder_combout\,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(6));

-- Location: LCCOMB_X59_Y45_N22
\i2cSlave|data_reg[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[6]~11_combout\ = (\i2cSlave|data_reg[6]~1_combout\ & ((\i2cSlave|data_reg[0]~4_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[0]~4_combout\ & ((\i2cSlave|data_reg\(6)))))) # (!\i2cSlave|data_reg[6]~1_combout\ & 
-- (((\i2cSlave|data_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|data_reg[6]~1_combout\,
	datac => \i2cSlave|data_reg\(6),
	datad => \i2cSlave|data_reg[0]~4_combout\,
	combout => \i2cSlave|data_reg[6]~11_combout\);

-- Location: FF_X59_Y45_N23
\i2cSlave|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(6));

-- Location: FF_X60_Y45_N25
\i2cSlave|data_from_master_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|data_reg\(6),
	sload => VCC,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(7));

-- Location: LCCOMB_X60_Y45_N6
\i2cSlave|data_from_master_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_from_master_reg[0]~feeder_combout\ = \i2cSlave|SDA_debounce|out_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|SDA_debounce|out_reg~q\,
	combout => \i2cSlave|data_from_master_reg[0]~feeder_combout\);

-- Location: FF_X60_Y45_N7
\i2cSlave|data_from_master_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_from_master_reg[0]~feeder_combout\,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(0));

-- Location: LCCOMB_X60_Y45_N10
\i2cSlave|data_reg[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[0]~8_combout\ = (\i2cSlave|data_reg[0]~4_combout\ & ((\i2cSlave|data_reg[0]~2_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[0]~2_combout\ & ((\i2cSlave|data_reg\(0)))))) # (!\i2cSlave|data_reg[0]~4_combout\ & 
-- (((\i2cSlave|data_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[0]~4_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|data_reg\(0),
	datad => \i2cSlave|data_reg[0]~2_combout\,
	combout => \i2cSlave|data_reg[0]~8_combout\);

-- Location: FF_X60_Y45_N11
\i2cSlave|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(0));

-- Location: LCCOMB_X60_Y45_N16
\i2cSlave|data_from_master_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_from_master_reg[1]~feeder_combout\ = \i2cSlave|data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|data_reg\(0),
	combout => \i2cSlave|data_from_master_reg[1]~feeder_combout\);

-- Location: FF_X60_Y45_N17
\i2cSlave|data_from_master_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_from_master_reg[1]~feeder_combout\,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(1));

-- Location: LCCOMB_X60_Y45_N4
\i2cSlave|data_reg[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[3]~7_combout\ = (\i2cSlave|data_reg[1]~6_combout\ & ((\i2cSlave|data_reg[2]~3_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[2]~3_combout\ & ((\i2cSlave|data_reg\(3)))))) # (!\i2cSlave|data_reg[1]~6_combout\ & 
-- (((\i2cSlave|data_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[1]~6_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|data_reg\(3),
	datad => \i2cSlave|data_reg[2]~3_combout\,
	combout => \i2cSlave|data_reg[3]~7_combout\);

-- Location: FF_X60_Y45_N5
\i2cSlave|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(3));

-- Location: FF_X60_Y45_N3
\i2cSlave|data_from_master_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|data_reg\(3),
	sload => VCC,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(4));

-- Location: LCCOMB_X60_Y45_N18
\i2cSlave|data_reg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[2]~5_combout\ = (\i2cSlave|data_reg[0]~4_combout\ & ((\i2cSlave|data_reg[2]~3_combout\ & (\i2cSlave|SDA_debounce|out_reg~q\)) # (!\i2cSlave|data_reg[2]~3_combout\ & ((\i2cSlave|data_reg\(2)))))) # (!\i2cSlave|data_reg[0]~4_combout\ & 
-- (((\i2cSlave|data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg[0]~4_combout\,
	datab => \i2cSlave|SDA_debounce|out_reg~q\,
	datac => \i2cSlave|data_reg\(2),
	datad => \i2cSlave|data_reg[2]~3_combout\,
	combout => \i2cSlave|data_reg[2]~5_combout\);

-- Location: FF_X60_Y45_N19
\i2cSlave|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(2));

-- Location: LCCOMB_X60_Y45_N28
\i2cSlave|data_from_master_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_from_master_reg[3]~feeder_combout\ = \i2cSlave|data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|data_reg\(2),
	combout => \i2cSlave|data_from_master_reg[3]~feeder_combout\);

-- Location: FF_X60_Y45_N29
\i2cSlave|data_from_master_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_from_master_reg[3]~feeder_combout\,
	ena => \i2cSlave|data_from_master_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_from_master_reg\(3));

-- Location: LCCOMB_X60_Y45_N2
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\i2cSlave|data_from_master_reg\(0) & (!\i2cSlave|data_from_master_reg\(1) & (!\i2cSlave|data_from_master_reg\(4) & \i2cSlave|data_from_master_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(0),
	datab => \i2cSlave|data_from_master_reg\(1),
	datac => \i2cSlave|data_from_master_reg\(4),
	datad => \i2cSlave|data_from_master_reg\(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X60_Y45_N24
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\i2cSlave|data_from_master_reg\(5) & (\i2cSlave|data_from_master_reg\(6) & (!\i2cSlave|data_from_master_reg\(7) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(5),
	datab => \i2cSlave|data_from_master_reg\(6),
	datac => \i2cSlave|data_from_master_reg\(7),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X50_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|currState.resetState~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ = \rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst~input_o\,
	combout => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\);

-- Location: FF_X50_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|currState.resetState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\);

-- Location: LCCOMB_X51_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|Selector0~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\) # (((!\adc2|adc_mega_0|go~q\ & \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\)) # (!\adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\,
	datab => \adc2|adc_mega_0|go~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|Selector0~0_combout\);

-- Location: FF_X51_Y52_N27
\adc2|adc_mega_0|ADC_CTRL|currState.idleState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|Selector0~0_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\);

-- Location: LCCOMB_X51_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|channel~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|channel~2_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ & (\adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\ & !\adc2|adc_mega_0|ADC_CTRL|channel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|channel\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|channel~2_combout\);

-- Location: LCCOMB_X50_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|channel[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\ = ((\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\) # (\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\)) # (!\adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\);

-- Location: FF_X51_Y52_N29
\adc2|adc_mega_0|ADC_CTRL|channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|channel~2_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|channel\(0));

-- Location: LCCOMB_X51_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|channel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|channel~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ & (\adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\ & (\adc2|adc_mega_0|ADC_CTRL|channel\(1) $ (\adc2|adc_mega_0|ADC_CTRL|channel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|channel\(1),
	datad => \adc2|adc_mega_0|ADC_CTRL|channel\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|channel~0_combout\);

-- Location: FF_X51_Y52_N3
\adc2|adc_mega_0|ADC_CTRL|channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|channel~0_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|channel\(1));

-- Location: LCCOMB_X51_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|Add0~0_combout\ = \adc2|adc_mega_0|ADC_CTRL|channel\(2) $ (((\adc2|adc_mega_0|ADC_CTRL|channel\(1) & \adc2|adc_mega_0|ADC_CTRL|channel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|channel\(1),
	datac => \adc2|adc_mega_0|ADC_CTRL|channel\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|channel\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|Add0~0_combout\);

-- Location: LCCOMB_X51_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|channel~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|channel~3_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ & (\adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\ & \adc2|adc_mega_0|ADC_CTRL|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|Add0~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|channel~3_combout\);

-- Location: FF_X51_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|channel~3_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|channel\(2));

-- Location: LCCOMB_X51_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|Add0~1_combout\ = \adc2|adc_mega_0|ADC_CTRL|channel\(3) $ (((\adc2|adc_mega_0|ADC_CTRL|channel\(1) & (\adc2|adc_mega_0|ADC_CTRL|channel\(0) & \adc2|adc_mega_0|ADC_CTRL|channel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|channel\(1),
	datab => \adc2|adc_mega_0|ADC_CTRL|channel\(0),
	datac => \adc2|adc_mega_0|ADC_CTRL|channel\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|channel\(3),
	combout => \adc2|adc_mega_0|ADC_CTRL|Add0~1_combout\);

-- Location: LCCOMB_X51_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|channel~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|channel~4_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ & (\adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\ & \adc2|adc_mega_0|ADC_CTRL|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|Add0~1_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|channel~4_combout\);

-- Location: FF_X51_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|channel~4_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|channel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|channel\(3));

-- Location: LCCOMB_X51_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|channel\(3) & ((!\adc2|adc_mega_0|ADC_CTRL|channel\(2)) # (!\adc2|adc_mega_0|ADC_CTRL|channel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|channel\(1),
	datac => \adc2|adc_mega_0|ADC_CTRL|channel\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|channel\(3),
	combout => \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\);

-- Location: LCCOMB_X51_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~1_combout\ = (\rst~input_o\ & (\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\ & !\adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~1_combout\);

-- Location: FF_X51_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\);

-- Location: LCCOMB_X52_Y53_N8
\adc2|adc_mega_0|CH0[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0[6]~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\,
	combout => \adc2|adc_mega_0|CH0[6]~1_combout\);

-- Location: LCCOMB_X51_Y52_N20
\adc2|adc_mega_0|go~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|go~0_combout\ = !\adc2|adc_mega_0|CH0[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|CH0[6]~1_combout\,
	combout => \adc2|adc_mega_0|go~0_combout\);

-- Location: FF_X51_Y52_N21
\adc2|adc_mega_0|go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|go~q\);

-- Location: LCCOMB_X51_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|nextState.turnOnSequencerState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|nextState.turnOnSequencerState~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\ & (\adc2|adc_mega_0|go~q\ & (\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ & \rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\,
	datab => \adc2|adc_mega_0|go~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datad => \rst~input_o\,
	combout => \adc2|adc_mega_0|ADC_CTRL|nextState.turnOnSequencerState~0_combout\);

-- Location: FF_X51_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|nextState.turnOnSequencerState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\);

-- Location: LCCOMB_X51_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|sequencer_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|sequencer_on~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\) # (\adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|sequencer_on~0_combout\);

-- Location: FF_X51_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|sequencer_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|sequencer_on~0_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\);

-- Location: LCCOMB_X51_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|Selector1~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\) # ((\adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\ & (\adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\ & \adc2|adc_mega_0|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|sequencer_on~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.idleState~q\,
	datad => \adc2|adc_mega_0|go~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|Selector1~0_combout\);

-- Location: FF_X45_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\);

-- Location: LCCOMB_X45_Y51_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~8_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(0) $ (VCC)
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\ = CARRY(\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(0),
	datad => VCC,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\);

-- Location: LCCOMB_X47_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\) # (\adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~0_combout\);

-- Location: FF_X47_Y52_N7
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\);

-- Location: FF_X45_Y52_N27
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\);

-- Location: LCCOMB_X47_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\) # 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~0_combout\);

-- Location: FF_X47_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\);

-- Location: LCCOMB_X47_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0_combout\);

-- Location: LCCOMB_X47_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\ & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\);

-- Location: FF_X47_Y52_N1
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\);

-- Location: FF_X45_Y52_N31
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\);

-- Location: FF_X45_Y52_N9
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\);

-- Location: LCCOMB_X46_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~0_combout\);

-- Location: LCCOMB_X46_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~0_combout\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\ & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\);

-- Location: FF_X46_Y52_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\);

-- Location: LCCOMB_X45_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.WAIT_PEND_DLY1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.WAIT_PEND_DLY1~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\ & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.WAIT_PEND_DLY1~0_combout\);

-- Location: FF_X45_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.WAIT_PEND_DLY1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\);

-- Location: LCCOMB_X49_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\) # 
-- ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~0_combout\);

-- Location: FF_X49_Y52_N31
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\);

-- Location: LCCOMB_X45_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\) # 
-- ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~0_combout\);

-- Location: FF_X46_Y52_N3
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\);

-- Location: LCCOMB_X46_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\);

-- Location: LCCOMB_X47_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~0_combout\) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~0_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2_combout\);

-- Location: FF_X47_Y52_N19
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\);

-- Location: LCCOMB_X47_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.GETCMD_W~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.GETCMD_W~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.GETCMD_W~0_combout\);

-- Location: FF_X47_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD_W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.GETCMD_W~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD_W~q\);

-- Location: LCCOMB_X46_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD_W~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD_W~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0_combout\);

-- Location: FF_X46_Y52_N29
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\);

-- Location: LCCOMB_X46_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~1_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0_combout\);

-- Location: FF_X46_Y52_N9
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\);

-- Location: LCCOMB_X46_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\);

-- Location: LCCOMB_X45_Y51_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\)) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\);

-- Location: FF_X45_Y51_N29
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\);

-- Location: LCCOMB_X45_Y51_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\);

-- Location: PLL_1
\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 10000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_fbout\,
	inclk => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_INCLK_bus\,
	locked => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\,
	fbout => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_fbout\,
	clk => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X44_Y45_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\) # 
-- (\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0_combout\);

-- Location: FF_X44_Y45_N29
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\);

-- Location: LCCOMB_X45_Y51_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\ & (((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6) 
-- & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\)) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\ & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_locked\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0_combout\);

-- Location: FF_X45_Y51_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\);

-- Location: LCCOMB_X45_Y51_N26
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\);

-- Location: FF_X45_Y51_N9
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(0));

-- Location: LCCOMB_X45_Y51_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~10_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(1) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\)) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(1) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\) # (GND)))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\ = CARRY((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(1),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~9\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\);

-- Location: FF_X45_Y51_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(1));

-- Location: LCCOMB_X45_Y51_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~12_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(2) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\ $ (GND))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(2) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\ & VCC))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\ = CARRY((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(2) & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(2),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[1]~11\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\);

-- Location: FF_X45_Y51_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(2));

-- Location: LCCOMB_X45_Y51_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~14_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(3) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\)) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(3) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\) # (GND)))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\ = CARRY((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(3),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[2]~13\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\);

-- Location: FF_X45_Y51_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(3));

-- Location: LCCOMB_X45_Y51_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~16_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(4) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\ $ (GND))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(4) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\ & VCC))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\ = CARRY((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(4) & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(4),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[3]~15\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\);

-- Location: FF_X45_Y51_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(4));

-- Location: LCCOMB_X45_Y51_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~18_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(5) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\)) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(5) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\) # (GND)))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\ = CARRY((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(5),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[4]~17\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\);

-- Location: FF_X45_Y51_N19
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(5));

-- Location: LCCOMB_X45_Y51_N20
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~20_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\ $ (GND))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\ & VCC))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~21\ = CARRY((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6) & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[5]~19\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~21\);

-- Location: FF_X45_Y51_N21
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6));

-- Location: LCCOMB_X45_Y51_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[7]~22_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7) $ 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7),
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[6]~21\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[7]~22_combout\);

-- Location: FF_X45_Y51_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[7]~22_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|arc_to_conv~combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7));

-- Location: LCCOMB_X45_Y51_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6))))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7) & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(6),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0_combout\);

-- Location: FF_X45_Y51_N3
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\);

-- Location: LCCOMB_X45_Y51_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # 
-- (((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X45_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~1_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ & ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_valid~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~1_combout\);

-- Location: LCCOMB_X45_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~2_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~1_combout\ & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~1_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND_DLY1~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~2_combout\);

-- Location: LCCOMB_X46_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0_combout\ & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector8~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~0_combout\);

-- Location: LCCOMB_X44_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~2_combout\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~0_combout\ & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0_combout\ & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~2_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector7~0_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector6~2_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\);

-- Location: LCCOMB_X45_Y51_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PRE_CONV~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\);

-- Location: LCCOMB_X44_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\ & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\);

-- Location: LCCOMB_X44_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~1_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~0_combout\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\ & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~0_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~1_combout\);

-- Location: FF_X44_Y52_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector18~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~q\);

-- Location: LCCOMB_X44_Y48_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ = !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\);

-- Location: LCCOMB_X49_Y48_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X47_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ $ (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2_combout\);

-- Location: FF_X47_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0));

-- Location: LCCOMB_X47_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\);

-- Location: LCCOMB_X47_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\ & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2) & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3_combout\);

-- Location: FF_X47_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1));

-- Location: LCCOMB_X47_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1) & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~0_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1_combout\);

-- Location: FF_X47_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2));

-- Location: LCCOMB_X47_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2) & 
-- (((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2) & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\) # (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~3_combout\);

-- Location: LCCOMB_X47_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~4_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~3_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~4_combout\);

-- Location: FF_X47_Y52_N9
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~4_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(2));

-- Location: LCCOMB_X44_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector14~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(2) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\) # (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(2),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector14~0_combout\);

-- Location: FF_X45_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\);

-- Location: FF_X45_Y52_N21
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\);

-- Location: LCCOMB_X45_Y51_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7) & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|int_timer\(7),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~0_combout\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1_combout\);

-- Location: LCCOMB_X44_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0_combout\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0_combout\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1_combout\) # 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector1~0_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector2~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector3~1_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\);

-- Location: LCCOMB_X44_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\);

-- Location: FF_X44_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector14~0_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2));

-- Location: LCCOMB_X44_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~4_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~3_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~0_combout\);

-- Location: FF_X45_Y52_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\);

-- Location: LCCOMB_X45_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\) # ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\)))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X44_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0_combout\ & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~0_combout\ & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\ & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector0~0_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector11~1_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~1_combout\);

-- Location: FF_X44_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector13~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3));

-- Location: LCCOMB_X47_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- (((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0))))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_csr|run~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~0_combout\);

-- Location: FF_X47_Y52_N21
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~0_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(0));

-- Location: LCCOMB_X44_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector16~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(0) & 
-- (((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(0) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr14~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector16~0_combout\);

-- Location: FF_X44_Y52_N21
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector16~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0));

-- Location: LCCOMB_X47_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2) & 
-- ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(1),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel\(2),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~1_combout\);

-- Location: LCCOMB_X47_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~2_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|seq_state~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_ready~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~1_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~2_combout\);

-- Location: FF_X47_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel~2_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(1));

-- Location: LCCOMB_X44_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector15~0_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(1) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\) # (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_channel\(1),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector9~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector15~0_combout\);

-- Location: FF_X44_Y52_N31
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector15~0_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1));

-- Location: LCCOMB_X44_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr4~0_combout\ = ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2) 
-- & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1)))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr4~0_combout\);

-- Location: LCCOMB_X44_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr3~0_combout\ = ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2) & 
-- ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1)) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0)))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2) & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) & 
-- !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1)))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr3~0_combout\);

-- Location: LCCOMB_X44_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr2~0_combout\ = ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) $ (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1)))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2) & ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1)) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0))))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr2~0_combout\);

-- Location: LCCOMB_X44_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr1~0_combout\ = ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) & 
-- ((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1)))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2)))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr1~0_combout\);

-- Location: LCCOMB_X44_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr0~0_combout\ = ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1) & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0) & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2)))) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(1),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(3),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|chsel\(2),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|decoder|WideOr0~0_combout\);

-- Location: ADCBLOCK_X43_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 63,
	clkdiv => 2,
	device_partname_fivechar_prefix => "10m50",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 0,
	refsel => 0,
	reserve_block => "false",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 1)
-- pragma translate_on
PORT MAP (
	soc => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|soc~q\,
	usr_pwd => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\,
	tsen => \~GND~combout\,
	clkin_from_pll_c0 => \adc2|adc_mega_0|ADC_CTRL|adc_pll|auto_generated|wire_pll1_clk\(0),
	chsel => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\,
	eoc => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|eoc\,
	dout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\);

-- Location: LCCOMB_X45_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|clkout_adccore\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|clkout_adccore\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X45_Y52_N1
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\);

-- Location: LCCOMB_X45_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X45_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0));

-- Location: LCCOMB_X45_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~2_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0) & 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~2_combout\);

-- Location: LCCOMB_X45_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~2_combout\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~2_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\);

-- Location: LCCOMB_X44_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector17~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|soc~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector5~3_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector4~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|soc~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|WideOr16~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector17~0_combout\);

-- Location: FF_X44_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|soc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|Selector17~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|soc~q\);

-- Location: FF_X46_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|eoc\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\);

-- Location: LCCOMB_X46_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X46_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0));

-- Location: FF_X46_Y52_N19
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\);

-- Location: LCCOMB_X45_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\ & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\);

-- Location: FF_X45_Y52_N7
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state_nxt.CONV_DLY1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\);

-- Location: FF_X46_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\);

-- Location: LCCOMB_X49_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_rsp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_rsp~combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_rsp~combout\);

-- Location: FF_X49_Y52_N9
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_rsp~combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\);

-- Location: LCCOMB_X47_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~1_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3_combout\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1_combout\ & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2_combout\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[1]~3_combout\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[2]~1_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|slot_sel_nxt[0]~2_combout\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|valid_req~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~1_combout\);

-- Location: FF_X47_Y52_N27
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~1_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~q\);

-- Location: LCCOMB_X49_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~q\))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sequencer_internal|u_seq_ctrl|cmd_eop~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~0_combout\);

-- Location: FF_X49_Y52_N19
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~q\);

-- Location: LCCOMB_X49_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~q\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|cmd_eop_dly~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~0_combout\);

-- Location: FF_X49_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~q\);

-- Location: LCCOMB_X52_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~q\) 
-- # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\ & !\adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\)))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\ & 
-- (((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\ & !\adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~0_combout\);

-- Location: FF_X52_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\);

-- Location: LCCOMB_X52_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|s_eop~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~feeder_combout\);

-- Location: FF_X52_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~q\);

-- Location: LCCOMB_X51_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|Selector1~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\ & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|Selector1~1_combout\);

-- Location: FF_X51_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|Selector1~1_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\);

-- Location: LCCOMB_X51_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|Selector2~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\ & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~q\) # 
-- ((\adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\ & \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\)))) # (!\adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\ & 
-- (\adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\ & (\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|currState.pendingConversionState~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|nextState.doneConversionState~0_combout\,
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|irq~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|Selector2~0_combout\);

-- Location: FF_X51_Y52_N1
\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\);

-- Location: LCCOMB_X52_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~feeder_combout\);

-- Location: FF_X52_Y52_N3
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\);

-- Location: LCCOMB_X45_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\);

-- Location: LCCOMB_X46_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\ & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.WAIT_PEND~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|eoc_hl~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\);

-- Location: FF_X45_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(0));

-- Location: LCCOMB_X49_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(0) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(0),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~0_combout\);

-- Location: FF_X49_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(0));

-- Location: LCCOMB_X52_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~6_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(0) & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\ $ 
-- (VCC))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(0) & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\ & VCC))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\ = CARRY((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(0) & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(0),
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\,
	datad => VCC,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~6_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\);

-- Location: LCCOMB_X52_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\ & \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_eop~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\);

-- Location: FF_X52_Y52_N7
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~6_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(0));

-- Location: LCCOMB_X52_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~8_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(1) & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\)) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(1) & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\) # (GND)))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\ = CARRY((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(1),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[0]~7\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~8_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\);

-- Location: FF_X52_Y52_N9
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~8_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(1));

-- Location: LCCOMB_X52_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~10_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(2) & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\ $ 
-- (GND))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(2) & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\ & VCC))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\ = CARRY((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(2) & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(2),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[1]~9\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~10_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\);

-- Location: FF_X52_Y52_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~10_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(2));

-- Location: LCCOMB_X52_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~12_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(3) & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\)) # 
-- (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(3) & ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\) # (GND)))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\ = CARRY((!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(3),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[2]~11\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~12_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\);

-- Location: FF_X52_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~12_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(3));

-- Location: LCCOMB_X52_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~14_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(4) & (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\ $ 
-- (GND))) # (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(4) & (!\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\ & VCC))
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~15\ = CARRY((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(4) & !\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(4),
	datad => VCC,
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[3]~13\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~14_combout\,
	cout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~15\);

-- Location: FF_X52_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~14_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(4));

-- Location: LCCOMB_X52_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[5]~16_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~15\ $ (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(5),
	cin => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[4]~15\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[5]~16_combout\);

-- Location: FF_X52_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num[5]~16_combout\,
	clrn => \rst~input_o\,
	sclr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|set_eop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|slot_num\(5));

-- Location: LCCOMB_X51_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|sample_store_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|sample_store_address[0]~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\ & (\adc2|adc_mega_0|ADC_CTRL|channel\(0))) # (!\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\ & 
-- ((!\adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|channel\(0),
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.turnOnSequencerState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|sample_store_address[0]~0_combout\);

-- Location: LCCOMB_X52_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|sample_store_address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|sample_store_address[1]~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|channel\(1) & \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|channel\(1),
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|sample_store_address[1]~1_combout\);

-- Location: LCCOMB_X52_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|sample_store_address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|sample_store_address[2]~2_combout\ = (\adc2|adc_mega_0|ADC_CTRL|channel\(2) & \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|channel\(2),
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|sample_store_address[2]~2_combout\);

-- Location: LCCOMB_X52_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|sample_store_address[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|sample_store_address[3]~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|channel\(3) & \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|channel\(3),
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|sample_store_address[3]~3_combout\);

-- Location: LCCOMB_X45_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\);

-- Location: FF_X45_Y52_N29
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(1));

-- Location: LCCOMB_X49_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~11_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(1) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(1),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~11_combout\);

-- Location: FF_X49_Y52_N29
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(1));

-- Location: LCCOMB_X45_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\);

-- Location: FF_X45_Y52_N19
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(2));

-- Location: LCCOMB_X49_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~10_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(2) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~10_combout\);

-- Location: FF_X49_Y52_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(2));

-- Location: LCCOMB_X46_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\);

-- Location: FF_X46_Y52_N27
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(3));

-- Location: LCCOMB_X49_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~9_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(3) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(3),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~9_combout\);

-- Location: FF_X49_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(3));

-- Location: LCCOMB_X45_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\);

-- Location: FF_X45_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(4));

-- Location: LCCOMB_X49_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~8_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(4) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(4),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~8_combout\);

-- Location: FF_X49_Y52_N27
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(4));

-- Location: LCCOMB_X46_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\);

-- Location: FF_X46_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(5));

-- Location: LCCOMB_X49_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~7_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(5) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(5),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~7_combout\);

-- Location: FF_X49_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(5));

-- Location: LCCOMB_X46_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\);

-- Location: FF_X46_Y52_N21
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(6));

-- Location: LCCOMB_X49_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~6_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(6) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(6),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~6_combout\);

-- Location: FF_X49_Y52_N7
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(6));

-- Location: LCCOMB_X45_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\);

-- Location: FF_X45_Y52_N3
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(7));

-- Location: LCCOMB_X49_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~5_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(7) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(7),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~5_combout\);

-- Location: FF_X49_Y52_N1
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(7));

-- Location: FF_X46_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(8));

-- Location: LCCOMB_X49_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(8) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(8),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~1_combout\);

-- Location: FF_X49_Y52_N21
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(8));

-- Location: LCCOMB_X46_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\);

-- Location: FF_X46_Y52_N31
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(9));

-- Location: LCCOMB_X49_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(9) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(9),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~3_combout\);

-- Location: FF_X49_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(9));

-- Location: LCCOMB_X46_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\);

-- Location: FF_X46_Y52_N7
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(10));

-- Location: LCCOMB_X49_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~4_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(10) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(10),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~4_combout\);

-- Location: FF_X49_Y52_N3
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(10));

-- Location: LCCOMB_X46_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\);

-- Location: FF_X46_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(11));

-- Location: LCCOMB_X49_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~2_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(11) & 
-- ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\) # ((\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|dout_flp\(11),
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|pend~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|ctrl_state.PUTRESP_PEND~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~2_combout\);

-- Location: FF_X49_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_data\(11));

-- Location: M9K_X53_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ADC_2:adc2|ADC_2_adc_mega_0:adc_mega_0|altera_up_avalon_adv_adc:ADC_CTRL|DE10_Lite_ADC_Core_modular_adc_0:max10_adc_core|altera_modular_adc_sample_store:sample_store_internal|altera_modular_adc_sample_store_ram:u_ss_ram|altsyncram:altsyncram_component|altsyncram_v5s1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|control_internal|u_control_fsm|rsp_valid~q\,
	portbre => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y52_N10
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[10]~4_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(10),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[10]~4_combout\);

-- Location: FF_X54_Y52_N11
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[10]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(10));

-- Location: LCCOMB_X54_Y52_N26
\adc2|adc_mega_0|ADC_CTRL|reading0[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(10),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\);

-- Location: LCCOMB_X52_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|reading0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[3]~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|channel\(1) & (!\adc2|adc_mega_0|ADC_CTRL|channel\(0) & ((\adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\) # 
-- (\adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|channel\(1),
	datab => \adc2|adc_mega_0|ADC_CTRL|channel\(0),
	datac => \adc2|adc_mega_0|ADC_CTRL|currState.readConversionState~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|currState.doneConversionState~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~0_combout\);

-- Location: LCCOMB_X52_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|reading0[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\ = (!\adc2|adc_mega_0|ADC_CTRL|channel\(2) & (!\adc2|adc_mega_0|ADC_CTRL|channel\(3) & \adc2|adc_mega_0|ADC_CTRL|reading0[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|channel\(2),
	datac => \adc2|adc_mega_0|ADC_CTRL|channel\(3),
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~0_combout\,
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\);

-- Location: FF_X54_Y52_N27
\adc2|adc_mega_0|ADC_CTRL|reading0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(10));

-- Location: LCCOMB_X54_Y51_N6
\adc2|adc_mega_0|CH0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~5_combout\ = (\adc2|adc_mega_0|ADC_CTRL|reading0\(10) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|reading0\(10),
	datad => \rst~input_o\,
	combout => \adc2|adc_mega_0|CH0~5_combout\);

-- Location: FF_X55_Y51_N5
\adc2|adc_mega_0|CH0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|CH0~5_combout\,
	sload => VCC,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(10));

-- Location: LCCOMB_X54_Y52_N28
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[8]~1_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(8) & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(8),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[8]~1_combout\);

-- Location: FF_X54_Y52_N29
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[8]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(8));

-- Location: LCCOMB_X54_Y52_N8
\adc2|adc_mega_0|ADC_CTRL|reading0[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(8),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\);

-- Location: FF_X54_Y52_N9
\adc2|adc_mega_0|ADC_CTRL|reading0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(8));

-- Location: LCCOMB_X54_Y51_N16
\adc2|adc_mega_0|CH0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~2_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(8),
	combout => \adc2|adc_mega_0|CH0~2_combout\);

-- Location: FF_X55_Y51_N3
\adc2|adc_mega_0|CH0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|CH0~2_combout\,
	sload => VCC,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(8));

-- Location: LCCOMB_X54_Y52_N16
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[7]~5_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(7),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[7]~5_combout\);

-- Location: FF_X54_Y52_N17
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[7]~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(7));

-- Location: FF_X55_Y51_N7
\adc2|adc_mega_0|ADC_CTRL|reading0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(7),
	sload => VCC,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(7));

-- Location: LCCOMB_X55_Y51_N6
\adc2|adc_mega_0|CH0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~6_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \adc2|adc_mega_0|ADC_CTRL|reading0\(7),
	combout => \adc2|adc_mega_0|CH0~6_combout\);

-- Location: FF_X56_Y51_N31
\adc2|adc_mega_0|CH0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|CH0~6_combout\,
	sload => VCC,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(7));

-- Location: LCCOMB_X54_Y52_N14
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[6]~6_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(6),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[6]~6_combout\);

-- Location: FF_X54_Y52_N15
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[6]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(6));

-- Location: LCCOMB_X54_Y51_N20
\adc2|adc_mega_0|ADC_CTRL|reading0[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(6),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\);

-- Location: FF_X54_Y51_N21
\adc2|adc_mega_0|ADC_CTRL|reading0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(6));

-- Location: LCCOMB_X55_Y51_N10
\adc2|adc_mega_0|CH0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~7_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(6),
	combout => \adc2|adc_mega_0|CH0~7_combout\);

-- Location: FF_X55_Y51_N11
\adc2|adc_mega_0|CH0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0~7_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(6));

-- Location: LCCOMB_X54_Y52_N12
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[9]~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(9),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[9]~3_combout\);

-- Location: FF_X54_Y52_N13
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[9]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(9));

-- Location: LCCOMB_X54_Y52_N4
\adc2|adc_mega_0|ADC_CTRL|reading0[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(9),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\);

-- Location: FF_X54_Y52_N5
\adc2|adc_mega_0|ADC_CTRL|reading0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(9));

-- Location: LCCOMB_X54_Y51_N24
\adc2|adc_mega_0|CH0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~4_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(9),
	combout => \adc2|adc_mega_0|CH0~4_combout\);

-- Location: FF_X56_Y51_N15
\adc2|adc_mega_0|CH0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|CH0~4_combout\,
	sload => VCC,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(9));

-- Location: LCCOMB_X54_Y52_N24
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[5]~7_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(5),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[5]~7_combout\);

-- Location: FF_X54_Y52_N25
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[5]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(5));

-- Location: LCCOMB_X54_Y51_N14
\adc2|adc_mega_0|ADC_CTRL|reading0[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(5),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\);

-- Location: FF_X54_Y51_N15
\adc2|adc_mega_0|ADC_CTRL|reading0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(5));

-- Location: LCCOMB_X55_Y51_N28
\adc2|adc_mega_0|CH0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~8_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(5),
	combout => \adc2|adc_mega_0|CH0~8_combout\);

-- Location: FF_X55_Y51_N29
\adc2|adc_mega_0|CH0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0~8_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(5));

-- Location: LCCOMB_X55_Y51_N14
\bcd_conversion|z~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~69_combout\ = (\adc2|adc_mega_0|CH0\(9) & (((!\adc2|adc_mega_0|CH0\(6) & !\adc2|adc_mega_0|CH0\(5))) # (!\adc2|adc_mega_0|CH0\(7)))) # (!\adc2|adc_mega_0|CH0\(9) & (((\adc2|adc_mega_0|CH0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(6),
	datab => \adc2|adc_mega_0|CH0\(9),
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \adc2|adc_mega_0|CH0\(5),
	combout => \bcd_conversion|z~69_combout\);

-- Location: LCCOMB_X56_Y51_N26
\bcd_conversion|z~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~70_combout\ = (\bcd_conversion|z~69_combout\) # (\adc2|adc_mega_0|CH0\(8) $ (\adc2|adc_mega_0|CH0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(8),
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \bcd_conversion|z~69_combout\,
	combout => \bcd_conversion|z~70_combout\);

-- Location: LCCOMB_X54_Y52_N18
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[11]~2_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(11),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[11]~2_combout\);

-- Location: FF_X54_Y52_N19
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[11]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(11));

-- Location: LCCOMB_X54_Y52_N6
\adc2|adc_mega_0|ADC_CTRL|reading0[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(11),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\);

-- Location: FF_X54_Y52_N7
\adc2|adc_mega_0|ADC_CTRL|reading0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(11));

-- Location: LCCOMB_X54_Y51_N2
\adc2|adc_mega_0|CH0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~3_combout\ = (\adc2|adc_mega_0|ADC_CTRL|reading0\(11) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|reading0\(11),
	datad => \rst~input_o\,
	combout => \adc2|adc_mega_0|CH0~3_combout\);

-- Location: FF_X56_Y51_N17
\adc2|adc_mega_0|CH0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc2|adc_mega_0|CH0~3_combout\,
	sload => VCC,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(11));

-- Location: LCCOMB_X56_Y51_N14
\bcd_conversion|z~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~68_combout\ = (\adc2|adc_mega_0|CH0\(10) & (\bcd_conversion|z~70_combout\ & \adc2|adc_mega_0|CH0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(10),
	datab => \bcd_conversion|z~70_combout\,
	datad => \adc2|adc_mega_0|CH0\(11),
	combout => \bcd_conversion|z~68_combout\);

-- Location: LCCOMB_X55_Y51_N2
\bcd_conversion|z~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~40_combout\ = (\adc2|adc_mega_0|CH0\(10) & ((\adc2|adc_mega_0|CH0\(9) & ((\adc2|adc_mega_0|CH0\(8)) # (!\adc2|adc_mega_0|CH0\(11)))) # (!\adc2|adc_mega_0|CH0\(9) & (\adc2|adc_mega_0|CH0\(8) & !\adc2|adc_mega_0|CH0\(11))))) # 
-- (!\adc2|adc_mega_0|CH0\(10) & (!\adc2|adc_mega_0|CH0\(9) & ((\adc2|adc_mega_0|CH0\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(10),
	datab => \adc2|adc_mega_0|CH0\(9),
	datac => \adc2|adc_mega_0|CH0\(8),
	datad => \adc2|adc_mega_0|CH0\(11),
	combout => \bcd_conversion|z~40_combout\);

-- Location: LCCOMB_X54_Y51_N10
\bcd_conversion|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|LessThan0~0_combout\ = (\adc2|adc_mega_0|CH0\(11) & ((\adc2|adc_mega_0|CH0\(10)) # (\adc2|adc_mega_0|CH0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|CH0\(10),
	datac => \adc2|adc_mega_0|CH0\(11),
	datad => \adc2|adc_mega_0|CH0\(9),
	combout => \bcd_conversion|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y51_N12
\bcd_conversion|z~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~20_combout\ = (\adc2|adc_mega_0|CH0\(11) & (!\adc2|adc_mega_0|CH0\(9) & ((\adc2|adc_mega_0|CH0\(10)) # (!\adc2|adc_mega_0|CH0\(8))))) # (!\adc2|adc_mega_0|CH0\(11) & (\adc2|adc_mega_0|CH0\(9) & ((\adc2|adc_mega_0|CH0\(8)) # 
-- (!\adc2|adc_mega_0|CH0\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(8),
	datab => \adc2|adc_mega_0|CH0\(11),
	datac => \adc2|adc_mega_0|CH0\(9),
	datad => \adc2|adc_mega_0|CH0\(10),
	combout => \bcd_conversion|z~20_combout\);

-- Location: LCCOMB_X56_Y51_N28
\bcd_conversion|z~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~18_combout\ = (\adc2|adc_mega_0|CH0\(8) & (\adc2|adc_mega_0|CH0\(10) $ (((\adc2|adc_mega_0|CH0\(9)) # (!\adc2|adc_mega_0|CH0\(11)))))) # (!\adc2|adc_mega_0|CH0\(8) & ((\adc2|adc_mega_0|CH0\(11) & (!\adc2|adc_mega_0|CH0\(9) & 
-- !\adc2|adc_mega_0|CH0\(10))) # (!\adc2|adc_mega_0|CH0\(11) & (\adc2|adc_mega_0|CH0\(9) & \adc2|adc_mega_0|CH0\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(8),
	datab => \adc2|adc_mega_0|CH0\(11),
	datac => \adc2|adc_mega_0|CH0\(9),
	datad => \adc2|adc_mega_0|CH0\(10),
	combout => \bcd_conversion|z~18_combout\);

-- Location: LCCOMB_X56_Y51_N18
\bcd_conversion|z~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~19_combout\ = (\adc2|adc_mega_0|CH0\(8) & (\adc2|adc_mega_0|CH0\(11) & (!\adc2|adc_mega_0|CH0\(9) & !\adc2|adc_mega_0|CH0\(10)))) # (!\adc2|adc_mega_0|CH0\(8) & (\adc2|adc_mega_0|CH0\(10) & (\adc2|adc_mega_0|CH0\(11) $ 
-- (!\adc2|adc_mega_0|CH0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(8),
	datab => \adc2|adc_mega_0|CH0\(11),
	datac => \adc2|adc_mega_0|CH0\(9),
	datad => \adc2|adc_mega_0|CH0\(10),
	combout => \bcd_conversion|z~19_combout\);

-- Location: LCCOMB_X56_Y51_N2
\bcd_conversion|z~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~41_combout\ = \bcd_conversion|z~19_combout\ $ ((((!\bcd_conversion|z~18_combout\ & !\adc2|adc_mega_0|CH0\(7))) # (!\bcd_conversion|z~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~20_combout\,
	datab => \bcd_conversion|z~18_combout\,
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \bcd_conversion|z~19_combout\,
	combout => \bcd_conversion|z~41_combout\);

-- Location: LCCOMB_X57_Y51_N28
\bcd_conversion|bcd[14]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[14]~23_combout\ = (\bcd_conversion|LessThan0~0_combout\ & ((\bcd_conversion|z~40_combout\) # (!\bcd_conversion|z~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_conversion|z~40_combout\,
	datac => \bcd_conversion|LessThan0~0_combout\,
	datad => \bcd_conversion|z~41_combout\,
	combout => \bcd_conversion|bcd[14]~23_combout\);

-- Location: LCCOMB_X56_Y51_N8
\bcd_conversion|z~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~23_combout\ = (\bcd_conversion|z~18_combout\ & ((\adc2|adc_mega_0|CH0\(7)) # ((!\bcd_conversion|z~20_combout\ & !\bcd_conversion|z~19_combout\)))) # (!\bcd_conversion|z~18_combout\ & (((!\adc2|adc_mega_0|CH0\(7) & 
-- \bcd_conversion|z~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~20_combout\,
	datab => \bcd_conversion|z~18_combout\,
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \bcd_conversion|z~19_combout\,
	combout => \bcd_conversion|z~23_combout\);

-- Location: LCCOMB_X56_Y51_N22
\bcd_conversion|z~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~22_combout\ = (\bcd_conversion|z~20_combout\ & (!\bcd_conversion|z~18_combout\ & (!\adc2|adc_mega_0|CH0\(7)))) # (!\bcd_conversion|z~20_combout\ & (\bcd_conversion|z~19_combout\ & ((\bcd_conversion|z~18_combout\) # 
-- (\adc2|adc_mega_0|CH0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~20_combout\,
	datab => \bcd_conversion|z~18_combout\,
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \bcd_conversion|z~19_combout\,
	combout => \bcd_conversion|z~22_combout\);

-- Location: LCCOMB_X56_Y51_N0
\bcd_conversion|z~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~21_combout\ = (\bcd_conversion|z~20_combout\ & (!\adc2|adc_mega_0|CH0\(7) & ((\bcd_conversion|z~18_combout\) # (\bcd_conversion|z~19_combout\)))) # (!\bcd_conversion|z~20_combout\ & ((\adc2|adc_mega_0|CH0\(7) $ 
-- (\bcd_conversion|z~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~20_combout\,
	datab => \bcd_conversion|z~18_combout\,
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \bcd_conversion|z~19_combout\,
	combout => \bcd_conversion|z~21_combout\);

-- Location: LCCOMB_X56_Y51_N24
\bcd_conversion|z~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~39_combout\ = \bcd_conversion|z~22_combout\ $ ((((!\adc2|adc_mega_0|CH0\(6) & !\bcd_conversion|z~21_combout\)) # (!\bcd_conversion|z~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(6),
	datab => \bcd_conversion|z~23_combout\,
	datac => \bcd_conversion|z~22_combout\,
	datad => \bcd_conversion|z~21_combout\,
	combout => \bcd_conversion|z~39_combout\);

-- Location: LCCOMB_X57_Y51_N30
\bcd_conversion|z~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~56_combout\ = (\bcd_conversion|z~41_combout\ & ((\bcd_conversion|z~40_combout\ & ((\bcd_conversion|LessThan0~0_combout\) # (\bcd_conversion|z~39_combout\))) # (!\bcd_conversion|z~40_combout\ & (!\bcd_conversion|LessThan0~0_combout\)))) # 
-- (!\bcd_conversion|z~41_combout\ & (((\bcd_conversion|LessThan0~0_combout\ & \bcd_conversion|z~39_combout\)) # (!\bcd_conversion|z~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~41_combout\,
	datab => \bcd_conversion|z~40_combout\,
	datac => \bcd_conversion|LessThan0~0_combout\,
	datad => \bcd_conversion|z~39_combout\,
	combout => \bcd_conversion|z~56_combout\);

-- Location: LCCOMB_X57_Y51_N14
\bcd_conversion|z~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~66_combout\ = (\bcd_conversion|z~40_combout\ & (\bcd_conversion|z~39_combout\ & (\bcd_conversion|z~41_combout\ $ (\bcd_conversion|LessThan0~0_combout\)))) # (!\bcd_conversion|z~40_combout\ & (\bcd_conversion|z~41_combout\ & 
-- (\bcd_conversion|LessThan0~0_combout\ & !\bcd_conversion|z~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~41_combout\,
	datab => \bcd_conversion|LessThan0~0_combout\,
	datac => \bcd_conversion|z~40_combout\,
	datad => \bcd_conversion|z~39_combout\,
	combout => \bcd_conversion|z~66_combout\);

-- Location: LCCOMB_X57_Y51_N24
\bcd_conversion|z~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~64_combout\ = (\bcd_conversion|z~40_combout\ & ((\bcd_conversion|z~41_combout\ & ((\bcd_conversion|z~39_combout\) # (!\bcd_conversion|LessThan0~0_combout\))) # (!\bcd_conversion|z~41_combout\ & ((\bcd_conversion|LessThan0~0_combout\) # 
-- (!\bcd_conversion|z~39_combout\))))) # (!\bcd_conversion|z~40_combout\ & (\bcd_conversion|z~39_combout\ $ (((\bcd_conversion|z~41_combout\ & \bcd_conversion|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~41_combout\,
	datab => \bcd_conversion|LessThan0~0_combout\,
	datac => \bcd_conversion|z~40_combout\,
	datad => \bcd_conversion|z~39_combout\,
	combout => \bcd_conversion|z~64_combout\);

-- Location: LCCOMB_X55_Y51_N8
\bcd_conversion|z~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~73_combout\ = (\adc2|adc_mega_0|CH0\(8) & (((!\adc2|adc_mega_0|CH0\(11)) # (!\adc2|adc_mega_0|CH0\(10))))) # (!\adc2|adc_mega_0|CH0\(8) & ((\adc2|adc_mega_0|CH0\(7) & (\adc2|adc_mega_0|CH0\(10) & \adc2|adc_mega_0|CH0\(11))) # 
-- (!\adc2|adc_mega_0|CH0\(7) & (!\adc2|adc_mega_0|CH0\(10) & !\adc2|adc_mega_0|CH0\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(7),
	datab => \adc2|adc_mega_0|CH0\(8),
	datac => \adc2|adc_mega_0|CH0\(10),
	datad => \adc2|adc_mega_0|CH0\(11),
	combout => \bcd_conversion|z~73_combout\);

-- Location: LCCOMB_X55_Y51_N18
\bcd_conversion|z~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~74_combout\ = (\bcd_conversion|z~73_combout\ & ((\adc2|adc_mega_0|CH0\(10)) # ((!\adc2|adc_mega_0|CH0\(8)) # (!\adc2|adc_mega_0|CH0\(9))))) # (!\bcd_conversion|z~73_combout\ & ((\adc2|adc_mega_0|CH0\(10) & (\adc2|adc_mega_0|CH0\(9) $ 
-- (\adc2|adc_mega_0|CH0\(8)))) # (!\adc2|adc_mega_0|CH0\(10) & (!\adc2|adc_mega_0|CH0\(9) & !\adc2|adc_mega_0|CH0\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~73_combout\,
	datab => \adc2|adc_mega_0|CH0\(10),
	datac => \adc2|adc_mega_0|CH0\(9),
	datad => \adc2|adc_mega_0|CH0\(8),
	combout => \bcd_conversion|z~74_combout\);

-- Location: LCCOMB_X55_Y51_N12
\bcd_conversion|z~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~71_combout\ = (\adc2|adc_mega_0|CH0\(10) & ((\adc2|adc_mega_0|CH0\(7) & (\adc2|adc_mega_0|CH0\(8) & !\adc2|adc_mega_0|CH0\(11))) # (!\adc2|adc_mega_0|CH0\(7) & (!\adc2|adc_mega_0|CH0\(8) & \adc2|adc_mega_0|CH0\(11))))) # 
-- (!\adc2|adc_mega_0|CH0\(10) & (((\adc2|adc_mega_0|CH0\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(7),
	datab => \adc2|adc_mega_0|CH0\(8),
	datac => \adc2|adc_mega_0|CH0\(10),
	datad => \adc2|adc_mega_0|CH0\(11),
	combout => \bcd_conversion|z~71_combout\);

-- Location: LCCOMB_X55_Y51_N26
\bcd_conversion|z~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~72_combout\ = (\bcd_conversion|z~71_combout\ & ((\adc2|adc_mega_0|CH0\(9) $ (!\adc2|adc_mega_0|CH0\(8))) # (!\adc2|adc_mega_0|CH0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~71_combout\,
	datab => \adc2|adc_mega_0|CH0\(9),
	datac => \adc2|adc_mega_0|CH0\(10),
	datad => \adc2|adc_mega_0|CH0\(8),
	combout => \bcd_conversion|z~72_combout\);

-- Location: LCCOMB_X56_Y51_N20
\bcd_conversion|z~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~65_combout\ = \bcd_conversion|z~74_combout\ $ (((\bcd_conversion|z~39_combout\) # (!\bcd_conversion|z~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_conversion|z~74_combout\,
	datac => \bcd_conversion|z~72_combout\,
	datad => \bcd_conversion|z~39_combout\,
	combout => \bcd_conversion|z~65_combout\);

-- Location: LCCOMB_X56_Y51_N10
\bcd_conversion|z~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~26_combout\ = (\adc2|adc_mega_0|CH0\(6) & (((\bcd_conversion|z~21_combout\)))) # (!\adc2|adc_mega_0|CH0\(6) & ((\bcd_conversion|z~22_combout\ & ((!\bcd_conversion|z~21_combout\))) # (!\bcd_conversion|z~22_combout\ & 
-- (!\bcd_conversion|z~23_combout\ & \bcd_conversion|z~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(6),
	datab => \bcd_conversion|z~23_combout\,
	datac => \bcd_conversion|z~22_combout\,
	datad => \bcd_conversion|z~21_combout\,
	combout => \bcd_conversion|z~26_combout\);

-- Location: LCCOMB_X56_Y51_N4
\bcd_conversion|z~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~25_combout\ = (\bcd_conversion|z~23_combout\ & (!\adc2|adc_mega_0|CH0\(6) & ((!\bcd_conversion|z~21_combout\)))) # (!\bcd_conversion|z~23_combout\ & (\bcd_conversion|z~22_combout\ & ((\adc2|adc_mega_0|CH0\(6)) # 
-- (\bcd_conversion|z~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(6),
	datab => \bcd_conversion|z~23_combout\,
	datac => \bcd_conversion|z~22_combout\,
	datad => \bcd_conversion|z~21_combout\,
	combout => \bcd_conversion|z~25_combout\);

-- Location: LCCOMB_X56_Y51_N6
\bcd_conversion|z~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~24_combout\ = (\adc2|adc_mega_0|CH0\(6) & (!\bcd_conversion|z~23_combout\ & (!\bcd_conversion|z~22_combout\))) # (!\adc2|adc_mega_0|CH0\(6) & ((\bcd_conversion|z~22_combout\) # ((\bcd_conversion|z~23_combout\ & 
-- \bcd_conversion|z~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(6),
	datab => \bcd_conversion|z~23_combout\,
	datac => \bcd_conversion|z~22_combout\,
	datad => \bcd_conversion|z~21_combout\,
	combout => \bcd_conversion|z~24_combout\);

-- Location: LCCOMB_X58_Y51_N10
\bcd_conversion|z~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~67_combout\ = \bcd_conversion|z~25_combout\ $ ((((!\adc2|adc_mega_0|CH0\(5) & !\bcd_conversion|z~24_combout\)) # (!\bcd_conversion|z~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(5),
	datab => \bcd_conversion|z~26_combout\,
	datac => \bcd_conversion|z~25_combout\,
	datad => \bcd_conversion|z~24_combout\,
	combout => \bcd_conversion|z~67_combout\);

-- Location: LCCOMB_X58_Y51_N18
\bcd_conversion|z~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~55_combout\ = \bcd_conversion|z~66_combout\ $ ((((\bcd_conversion|z~64_combout\ & \bcd_conversion|z~67_combout\)) # (!\bcd_conversion|z~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~66_combout\,
	datab => \bcd_conversion|z~64_combout\,
	datac => \bcd_conversion|z~65_combout\,
	datad => \bcd_conversion|z~67_combout\,
	combout => \bcd_conversion|z~55_combout\);

-- Location: LCCOMB_X57_Y51_N20
\bcd_conversion|z~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~58_combout\ = (\bcd_conversion|bcd[14]~23_combout\) # ((\bcd_conversion|z~56_combout\) # (\bcd_conversion|z~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_conversion|bcd[14]~23_combout\,
	datac => \bcd_conversion|z~56_combout\,
	datad => \bcd_conversion|z~55_combout\,
	combout => \bcd_conversion|z~58_combout\);

-- Location: LCCOMB_X57_Y51_N22
\bcd_conversion|z~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~63_combout\ = (!\bcd_conversion|z~55_combout\ & (((\bcd_conversion|z~41_combout\ & !\bcd_conversion|z~40_combout\)) # (!\bcd_conversion|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~41_combout\,
	datab => \bcd_conversion|z~40_combout\,
	datac => \bcd_conversion|LessThan0~0_combout\,
	datad => \bcd_conversion|z~55_combout\,
	combout => \bcd_conversion|z~63_combout\);

-- Location: LCCOMB_X58_Y51_N6
\bcd_conversion|z~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~43_combout\ = (\bcd_conversion|z~66_combout\ & (\bcd_conversion|z~64_combout\ $ (((\bcd_conversion|z~67_combout\))))) # (!\bcd_conversion|z~66_combout\ & ((\bcd_conversion|z~64_combout\) # ((\bcd_conversion|z~65_combout\ & 
-- \bcd_conversion|z~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~66_combout\,
	datab => \bcd_conversion|z~64_combout\,
	datac => \bcd_conversion|z~65_combout\,
	datad => \bcd_conversion|z~67_combout\,
	combout => \bcd_conversion|z~43_combout\);

-- Location: LCCOMB_X58_Y51_N8
\bcd_conversion|z~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~44_combout\ = (\bcd_conversion|z~65_combout\ & (((\bcd_conversion|z~64_combout\ & \bcd_conversion|z~67_combout\)))) # (!\bcd_conversion|z~65_combout\ & (\bcd_conversion|z~66_combout\ & ((!\bcd_conversion|z~67_combout\) # 
-- (!\bcd_conversion|z~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~66_combout\,
	datab => \bcd_conversion|z~64_combout\,
	datac => \bcd_conversion|z~65_combout\,
	datad => \bcd_conversion|z~67_combout\,
	combout => \bcd_conversion|z~44_combout\);

-- Location: LCCOMB_X58_Y51_N4
\bcd_conversion|z~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~42_combout\ = (\bcd_conversion|z~66_combout\ & (((!\bcd_conversion|z~67_combout\)))) # (!\bcd_conversion|z~66_combout\ & ((\bcd_conversion|z~65_combout\ & ((\bcd_conversion|z~64_combout\) # (!\bcd_conversion|z~67_combout\))) # 
-- (!\bcd_conversion|z~65_combout\ & ((\bcd_conversion|z~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~66_combout\,
	datab => \bcd_conversion|z~64_combout\,
	datac => \bcd_conversion|z~65_combout\,
	datad => \bcd_conversion|z~67_combout\,
	combout => \bcd_conversion|z~42_combout\);

-- Location: LCCOMB_X59_Y51_N10
\bcd_conversion|z~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~28_combout\ = (\bcd_conversion|z~26_combout\ & (!\adc2|adc_mega_0|CH0\(5) & ((!\bcd_conversion|z~24_combout\)))) # (!\bcd_conversion|z~26_combout\ & (\bcd_conversion|z~25_combout\ & ((\adc2|adc_mega_0|CH0\(5)) # 
-- (\bcd_conversion|z~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(5),
	datab => \bcd_conversion|z~26_combout\,
	datac => \bcd_conversion|z~25_combout\,
	datad => \bcd_conversion|z~24_combout\,
	combout => \bcd_conversion|z~28_combout\);

-- Location: LCCOMB_X54_Y52_N22
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[4]~8_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(4),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[4]~8_combout\);

-- Location: FF_X54_Y52_N23
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[4]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(4));

-- Location: LCCOMB_X54_Y51_N12
\adc2|adc_mega_0|ADC_CTRL|reading0[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(4),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\);

-- Location: FF_X54_Y51_N13
\adc2|adc_mega_0|ADC_CTRL|reading0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(4));

-- Location: LCCOMB_X55_Y51_N30
\adc2|adc_mega_0|CH0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~9_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(4),
	combout => \adc2|adc_mega_0|CH0~9_combout\);

-- Location: FF_X55_Y51_N31
\adc2|adc_mega_0|CH0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0~9_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(4));

-- Location: LCCOMB_X59_Y51_N4
\bcd_conversion|z~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~29_combout\ = (\adc2|adc_mega_0|CH0\(5) & (((\bcd_conversion|z~24_combout\)))) # (!\adc2|adc_mega_0|CH0\(5) & ((\bcd_conversion|z~25_combout\ & ((!\bcd_conversion|z~24_combout\))) # (!\bcd_conversion|z~25_combout\ & 
-- (!\bcd_conversion|z~26_combout\ & \bcd_conversion|z~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(5),
	datab => \bcd_conversion|z~26_combout\,
	datac => \bcd_conversion|z~25_combout\,
	datad => \bcd_conversion|z~24_combout\,
	combout => \bcd_conversion|z~29_combout\);

-- Location: LCCOMB_X59_Y51_N12
\bcd_conversion|z~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~27_combout\ = (\adc2|adc_mega_0|CH0\(5) & (!\bcd_conversion|z~26_combout\ & (!\bcd_conversion|z~25_combout\))) # (!\adc2|adc_mega_0|CH0\(5) & ((\bcd_conversion|z~25_combout\) # ((\bcd_conversion|z~26_combout\ & 
-- \bcd_conversion|z~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(5),
	datab => \bcd_conversion|z~26_combout\,
	datac => \bcd_conversion|z~25_combout\,
	datad => \bcd_conversion|z~24_combout\,
	combout => \bcd_conversion|z~27_combout\);

-- Location: LCCOMB_X59_Y51_N22
\bcd_conversion|z~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~45_combout\ = \bcd_conversion|z~28_combout\ $ ((((!\adc2|adc_mega_0|CH0\(4) & !\bcd_conversion|z~27_combout\)) # (!\bcd_conversion|z~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~28_combout\,
	datab => \adc2|adc_mega_0|CH0\(4),
	datac => \bcd_conversion|z~29_combout\,
	datad => \bcd_conversion|z~27_combout\,
	combout => \bcd_conversion|z~45_combout\);

-- Location: LCCOMB_X58_Y51_N16
\bcd_conversion|z~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~54_combout\ = \bcd_conversion|z~44_combout\ $ (((\bcd_conversion|z~43_combout\) # ((\bcd_conversion|z~42_combout\ & \bcd_conversion|z~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~43_combout\,
	datab => \bcd_conversion|z~44_combout\,
	datac => \bcd_conversion|z~42_combout\,
	datad => \bcd_conversion|z~45_combout\,
	combout => \bcd_conversion|z~54_combout\);

-- Location: LCCOMB_X57_Y51_N10
\bcd_conversion|z~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~59_combout\ = \bcd_conversion|z~63_combout\ $ (((\bcd_conversion|z~54_combout\ & ((\bcd_conversion|z~68_combout\) # (!\bcd_conversion|z~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|z~58_combout\,
	datac => \bcd_conversion|z~63_combout\,
	datad => \bcd_conversion|z~54_combout\,
	combout => \bcd_conversion|z~59_combout\);

-- Location: LCCOMB_X57_Y51_N12
\bcd_conversion|LessThan14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|LessThan14~0_combout\ = (!\bcd_conversion|z~56_combout\ & ((\bcd_conversion|bcd[14]~23_combout\ & (!\bcd_conversion|z~55_combout\ & !\bcd_conversion|z~54_combout\)) # (!\bcd_conversion|bcd[14]~23_combout\ & 
-- ((!\bcd_conversion|z~54_combout\) # (!\bcd_conversion|z~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[14]~23_combout\,
	datab => \bcd_conversion|z~55_combout\,
	datac => \bcd_conversion|z~56_combout\,
	datad => \bcd_conversion|z~54_combout\,
	combout => \bcd_conversion|LessThan14~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\bcd_conversion|z~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~57_combout\ = \bcd_conversion|z~54_combout\ $ (((\bcd_conversion|z~68_combout\) # (\bcd_conversion|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|z~54_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \bcd_conversion|z~57_combout\);

-- Location: LCCOMB_X57_Y51_N0
\bcd_conversion|z~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~60_combout\ = (!\bcd_conversion|z~56_combout\ & ((!\bcd_conversion|z~55_combout\) # (!\bcd_conversion|bcd[14]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_conversion|bcd[14]~23_combout\,
	datac => \bcd_conversion|z~56_combout\,
	datad => \bcd_conversion|z~55_combout\,
	combout => \bcd_conversion|z~60_combout\);

-- Location: LCCOMB_X57_Y51_N26
\bcd_conversion|z~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~61_combout\ = (\bcd_conversion|z~60_combout\ & (((!\bcd_conversion|z~63_combout\ & \bcd_conversion|z~54_combout\)))) # (!\bcd_conversion|z~60_combout\ & (\bcd_conversion|z~68_combout\ & ((\bcd_conversion|z~63_combout\) # 
-- (!\bcd_conversion|z~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|z~60_combout\,
	datac => \bcd_conversion|z~63_combout\,
	datad => \bcd_conversion|z~54_combout\,
	combout => \bcd_conversion|z~61_combout\);

-- Location: LCCOMB_X58_Y51_N22
\bcd_conversion|z~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~48_combout\ = (\bcd_conversion|z~43_combout\ & (\bcd_conversion|z~44_combout\ & ((!\bcd_conversion|z~45_combout\) # (!\bcd_conversion|z~42_combout\)))) # (!\bcd_conversion|z~43_combout\ & (((\bcd_conversion|z~42_combout\ & 
-- \bcd_conversion|z~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~43_combout\,
	datab => \bcd_conversion|z~44_combout\,
	datac => \bcd_conversion|z~42_combout\,
	datad => \bcd_conversion|z~45_combout\,
	combout => \bcd_conversion|z~48_combout\);

-- Location: LCCOMB_X58_Y51_N20
\bcd_conversion|z~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~47_combout\ = (\bcd_conversion|z~44_combout\ & ((\bcd_conversion|z~42_combout\ $ (\bcd_conversion|z~45_combout\)))) # (!\bcd_conversion|z~44_combout\ & ((\bcd_conversion|z~42_combout\) # ((!\bcd_conversion|z~43_combout\ & 
-- \bcd_conversion|z~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~43_combout\,
	datab => \bcd_conversion|z~44_combout\,
	datac => \bcd_conversion|z~42_combout\,
	datad => \bcd_conversion|z~45_combout\,
	combout => \bcd_conversion|z~47_combout\);

-- Location: LCCOMB_X58_Y51_N14
\bcd_conversion|z~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~46_combout\ = (\bcd_conversion|z~43_combout\ & (\bcd_conversion|z~44_combout\ $ (((\bcd_conversion|z~45_combout\))))) # (!\bcd_conversion|z~43_combout\ & (((!\bcd_conversion|z~44_combout\ & \bcd_conversion|z~42_combout\)) # 
-- (!\bcd_conversion|z~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~43_combout\,
	datab => \bcd_conversion|z~44_combout\,
	datac => \bcd_conversion|z~42_combout\,
	datad => \bcd_conversion|z~45_combout\,
	combout => \bcd_conversion|z~46_combout\);

-- Location: LCCOMB_X54_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[3]~9_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(3),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[3]~9_combout\);

-- Location: FF_X54_Y52_N1
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[3]~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(3));

-- Location: LCCOMB_X54_Y52_N20
\adc2|adc_mega_0|ADC_CTRL|reading0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(3),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\);

-- Location: FF_X54_Y52_N21
\adc2|adc_mega_0|ADC_CTRL|reading0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(3));

-- Location: LCCOMB_X55_Y51_N24
\adc2|adc_mega_0|CH0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~10_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(3),
	combout => \adc2|adc_mega_0|CH0~10_combout\);

-- Location: FF_X55_Y51_N25
\adc2|adc_mega_0|CH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0~10_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(3));

-- Location: LCCOMB_X59_Y51_N18
\bcd_conversion|z~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~30_combout\ = (\bcd_conversion|z~28_combout\ & (!\adc2|adc_mega_0|CH0\(4))) # (!\bcd_conversion|z~28_combout\ & ((\adc2|adc_mega_0|CH0\(4) & (!\bcd_conversion|z~29_combout\)) # (!\adc2|adc_mega_0|CH0\(4) & (\bcd_conversion|z~29_combout\ 
-- & \bcd_conversion|z~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~28_combout\,
	datab => \adc2|adc_mega_0|CH0\(4),
	datac => \bcd_conversion|z~29_combout\,
	datad => \bcd_conversion|z~27_combout\,
	combout => \bcd_conversion|z~30_combout\);

-- Location: LCCOMB_X59_Y51_N26
\bcd_conversion|z~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~32_combout\ = (\bcd_conversion|z~28_combout\ & (\adc2|adc_mega_0|CH0\(4) $ (((!\bcd_conversion|z~27_combout\))))) # (!\bcd_conversion|z~28_combout\ & (\bcd_conversion|z~27_combout\ & ((\adc2|adc_mega_0|CH0\(4)) # 
-- (!\bcd_conversion|z~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~28_combout\,
	datab => \adc2|adc_mega_0|CH0\(4),
	datac => \bcd_conversion|z~29_combout\,
	datad => \bcd_conversion|z~27_combout\,
	combout => \bcd_conversion|z~32_combout\);

-- Location: LCCOMB_X59_Y51_N16
\bcd_conversion|z~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~31_combout\ = (\bcd_conversion|z~29_combout\ & (((!\adc2|adc_mega_0|CH0\(4) & !\bcd_conversion|z~27_combout\)))) # (!\bcd_conversion|z~29_combout\ & (\bcd_conversion|z~28_combout\ & ((\adc2|adc_mega_0|CH0\(4)) # 
-- (\bcd_conversion|z~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~28_combout\,
	datab => \adc2|adc_mega_0|CH0\(4),
	datac => \bcd_conversion|z~29_combout\,
	datad => \bcd_conversion|z~27_combout\,
	combout => \bcd_conversion|z~31_combout\);

-- Location: LCCOMB_X59_Y51_N28
\bcd_conversion|z~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~49_combout\ = \bcd_conversion|z~31_combout\ $ ((((!\adc2|adc_mega_0|CH0\(3) & !\bcd_conversion|z~30_combout\)) # (!\bcd_conversion|z~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(3),
	datab => \bcd_conversion|z~30_combout\,
	datac => \bcd_conversion|z~32_combout\,
	datad => \bcd_conversion|z~31_combout\,
	combout => \bcd_conversion|z~49_combout\);

-- Location: LCCOMB_X58_Y51_N24
\bcd_conversion|z~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~62_combout\ = \bcd_conversion|z~48_combout\ $ (((\bcd_conversion|z~47_combout\) # ((\bcd_conversion|z~46_combout\ & \bcd_conversion|z~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~48_combout\,
	datab => \bcd_conversion|z~47_combout\,
	datac => \bcd_conversion|z~46_combout\,
	datad => \bcd_conversion|z~49_combout\,
	combout => \bcd_conversion|z~62_combout\);

-- Location: LCCOMB_X57_Y51_N6
\bcd_conversion|bcd[12]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[12]~27_combout\ = \bcd_conversion|z~61_combout\ $ ((((\bcd_conversion|z~57_combout\ & \bcd_conversion|z~62_combout\)) # (!\bcd_conversion|z~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~59_combout\,
	datab => \bcd_conversion|z~57_combout\,
	datac => \bcd_conversion|z~61_combout\,
	datad => \bcd_conversion|z~62_combout\,
	combout => \bcd_conversion|bcd[12]~27_combout\);

-- Location: LCCOMB_X52_Y52_N0
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[1]~11_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[1]~11_combout\);

-- Location: FF_X52_Y52_N1
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[1]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(1));

-- Location: LCCOMB_X52_Y51_N8
\adc2|adc_mega_0|ADC_CTRL|reading0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(1),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\);

-- Location: FF_X52_Y51_N9
\adc2|adc_mega_0|ADC_CTRL|reading0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(1));

-- Location: LCCOMB_X55_Y51_N4
\adc2|adc_mega_0|CH0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~12_combout\ = (\rst~input_o\ & \adc2|adc_mega_0|ADC_CTRL|reading0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \adc2|adc_mega_0|ADC_CTRL|reading0\(1),
	combout => \adc2|adc_mega_0|CH0~12_combout\);

-- Location: LCCOMB_X54_Y51_N4
\adc2|adc_mega_0|CH0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0[1]~feeder_combout\ = \adc2|adc_mega_0|CH0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|CH0~12_combout\,
	combout => \adc2|adc_mega_0|CH0[1]~feeder_combout\);

-- Location: FF_X54_Y51_N5
\adc2|adc_mega_0|CH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0[1]~feeder_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(1));

-- Location: LCCOMB_X59_Y51_N0
\bcd_conversion|z~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~35_combout\ = (\adc2|adc_mega_0|CH0\(3) & (\bcd_conversion|z~30_combout\)) # (!\adc2|adc_mega_0|CH0\(3) & ((\bcd_conversion|z~30_combout\ & (!\bcd_conversion|z~32_combout\ & !\bcd_conversion|z~31_combout\)) # 
-- (!\bcd_conversion|z~30_combout\ & ((\bcd_conversion|z~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(3),
	datab => \bcd_conversion|z~30_combout\,
	datac => \bcd_conversion|z~32_combout\,
	datad => \bcd_conversion|z~31_combout\,
	combout => \bcd_conversion|z~35_combout\);

-- Location: LCCOMB_X54_Y52_N2
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[2]~10_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(2) & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(2),
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[2]~10_combout\);

-- Location: FF_X54_Y52_N3
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[2]~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(2));

-- Location: LCCOMB_X55_Y51_N20
\adc2|adc_mega_0|ADC_CTRL|reading0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(2),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\);

-- Location: FF_X55_Y51_N21
\adc2|adc_mega_0|ADC_CTRL|reading0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(2));

-- Location: LCCOMB_X55_Y51_N22
\adc2|adc_mega_0|CH0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~11_combout\ = (\adc2|adc_mega_0|ADC_CTRL|reading0\(2) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|reading0\(2),
	datac => \rst~input_o\,
	combout => \adc2|adc_mega_0|CH0~11_combout\);

-- Location: FF_X55_Y51_N23
\adc2|adc_mega_0|CH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0~11_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(2));

-- Location: LCCOMB_X59_Y51_N6
\bcd_conversion|z~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~34_combout\ = (\bcd_conversion|z~32_combout\ & (!\adc2|adc_mega_0|CH0\(3) & (!\bcd_conversion|z~30_combout\))) # (!\bcd_conversion|z~32_combout\ & (\bcd_conversion|z~31_combout\ & ((\adc2|adc_mega_0|CH0\(3)) # 
-- (\bcd_conversion|z~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(3),
	datab => \bcd_conversion|z~30_combout\,
	datac => \bcd_conversion|z~32_combout\,
	datad => \bcd_conversion|z~31_combout\,
	combout => \bcd_conversion|z~34_combout\);

-- Location: LCCOMB_X59_Y51_N24
\bcd_conversion|z~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~33_combout\ = (\adc2|adc_mega_0|CH0\(3) & (((!\bcd_conversion|z~32_combout\ & !\bcd_conversion|z~31_combout\)))) # (!\adc2|adc_mega_0|CH0\(3) & ((\bcd_conversion|z~31_combout\) # ((\bcd_conversion|z~30_combout\ & 
-- \bcd_conversion|z~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(3),
	datab => \bcd_conversion|z~30_combout\,
	datac => \bcd_conversion|z~32_combout\,
	datad => \bcd_conversion|z~31_combout\,
	combout => \bcd_conversion|z~33_combout\);

-- Location: LCCOMB_X60_Y51_N0
\bcd_conversion|z~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~36_combout\ = (\bcd_conversion|z~35_combout\ & (!\adc2|adc_mega_0|CH0\(2) & ((\bcd_conversion|z~34_combout\) # (\bcd_conversion|z~33_combout\)))) # (!\bcd_conversion|z~35_combout\ & (\adc2|adc_mega_0|CH0\(2) $ 
-- ((\bcd_conversion|z~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~35_combout\,
	datab => \adc2|adc_mega_0|CH0\(2),
	datac => \bcd_conversion|z~34_combout\,
	datad => \bcd_conversion|z~33_combout\,
	combout => \bcd_conversion|z~36_combout\);

-- Location: LCCOMB_X60_Y51_N4
\bcd_conversion|z~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~38_combout\ = (\adc2|adc_mega_0|CH0\(2) & (((\bcd_conversion|z~33_combout\)))) # (!\adc2|adc_mega_0|CH0\(2) & ((\bcd_conversion|z~34_combout\ & ((!\bcd_conversion|z~33_combout\))) # (!\bcd_conversion|z~34_combout\ & 
-- (!\bcd_conversion|z~35_combout\ & \bcd_conversion|z~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~35_combout\,
	datab => \adc2|adc_mega_0|CH0\(2),
	datac => \bcd_conversion|z~34_combout\,
	datad => \bcd_conversion|z~33_combout\,
	combout => \bcd_conversion|z~38_combout\);

-- Location: LCCOMB_X60_Y51_N18
\bcd_conversion|z~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~37_combout\ = (\bcd_conversion|z~35_combout\ & (!\adc2|adc_mega_0|CH0\(2) & ((!\bcd_conversion|z~33_combout\)))) # (!\bcd_conversion|z~35_combout\ & (\bcd_conversion|z~34_combout\ & ((\adc2|adc_mega_0|CH0\(2)) # 
-- (\bcd_conversion|z~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~35_combout\,
	datab => \adc2|adc_mega_0|CH0\(2),
	datac => \bcd_conversion|z~34_combout\,
	datad => \bcd_conversion|z~33_combout\,
	combout => \bcd_conversion|z~37_combout\);

-- Location: LCCOMB_X60_Y51_N26
\bcd_conversion|bcd[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[4]~18_combout\ = \bcd_conversion|z~37_combout\ $ ((((!\adc2|adc_mega_0|CH0\(1) & !\bcd_conversion|z~36_combout\)) # (!\bcd_conversion|z~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(1),
	datab => \bcd_conversion|z~36_combout\,
	datac => \bcd_conversion|z~38_combout\,
	datad => \bcd_conversion|z~37_combout\,
	combout => \bcd_conversion|bcd[4]~18_combout\);

-- Location: LCCOMB_X60_Y48_N10
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ((\i2cSlave|data_from_master_reg\(2) & ((\bcd_conversion|bcd[4]~18_combout\))) # (!\i2cSlave|data_from_master_reg\(2) & (\bcd_conversion|bcd[12]~27_combout\))) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datab => \Mux0~1_combout\,
	datac => \bcd_conversion|bcd[12]~27_combout\,
	datad => \bcd_conversion|bcd[4]~18_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X60_Y45_N0
\i2cSlave|data_valid_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_valid_reg~feeder_combout\ = \i2cSlave|data_from_master_reg[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_from_master_reg[7]~0_combout\,
	combout => \i2cSlave|data_valid_reg~feeder_combout\);

-- Location: FF_X60_Y45_N1
\i2cSlave|data_valid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_valid_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_valid_reg~q\);

-- Location: FF_X60_Y48_N11
\data_to_master[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(4));

-- Location: LCCOMB_X60_Y48_N24
\i2cSlave|data_to_master_reg[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[4]~4_combout\ = !data_to_master(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_to_master(4),
	combout => \i2cSlave|data_to_master_reg[4]~4_combout\);

-- Location: LCCOMB_X59_Y45_N24
\i2cSlave|data_to_master_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[0]~0_combout\ = (\i2cSlave|SDA_debounce|out_reg~q\ & (\i2cSlave|cmd_reg~q\ & ((\i2cSlave|state_reg~20_combout\)))) # (!\i2cSlave|SDA_debounce|out_reg~q\ & ((\i2cSlave|continue_reg~0_combout\) # ((\i2cSlave|cmd_reg~q\ & 
-- \i2cSlave|state_reg~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|SDA_debounce|out_reg~q\,
	datab => \i2cSlave|cmd_reg~q\,
	datac => \i2cSlave|continue_reg~0_combout\,
	datad => \i2cSlave|state_reg~20_combout\,
	combout => \i2cSlave|data_to_master_reg[0]~0_combout\);

-- Location: FF_X60_Y48_N25
\i2cSlave|data_to_master_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[4]~4_combout\,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(4));

-- Location: LCCOMB_X58_Y51_N12
\bcd_conversion|z~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~50_combout\ = (\bcd_conversion|z~48_combout\ & (((!\bcd_conversion|z~49_combout\)))) # (!\bcd_conversion|z~48_combout\ & ((\bcd_conversion|z~47_combout\ & ((\bcd_conversion|z~49_combout\))) # (!\bcd_conversion|z~47_combout\ & 
-- ((\bcd_conversion|z~46_combout\) # (!\bcd_conversion|z~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~48_combout\,
	datab => \bcd_conversion|z~47_combout\,
	datac => \bcd_conversion|z~46_combout\,
	datad => \bcd_conversion|z~49_combout\,
	combout => \bcd_conversion|z~50_combout\);

-- Location: LCCOMB_X58_Y51_N0
\bcd_conversion|z~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~52_combout\ = (\bcd_conversion|z~47_combout\ & (\bcd_conversion|z~48_combout\ & ((!\bcd_conversion|z~49_combout\) # (!\bcd_conversion|z~46_combout\)))) # (!\bcd_conversion|z~47_combout\ & (((\bcd_conversion|z~46_combout\ & 
-- \bcd_conversion|z~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~48_combout\,
	datab => \bcd_conversion|z~47_combout\,
	datac => \bcd_conversion|z~46_combout\,
	datad => \bcd_conversion|z~49_combout\,
	combout => \bcd_conversion|z~52_combout\);

-- Location: LCCOMB_X58_Y51_N26
\bcd_conversion|z~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~51_combout\ = (\bcd_conversion|z~48_combout\ & ((\bcd_conversion|z~46_combout\ $ (\bcd_conversion|z~49_combout\)))) # (!\bcd_conversion|z~48_combout\ & ((\bcd_conversion|z~46_combout\) # ((!\bcd_conversion|z~47_combout\ & 
-- \bcd_conversion|z~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~48_combout\,
	datab => \bcd_conversion|z~47_combout\,
	datac => \bcd_conversion|z~46_combout\,
	datad => \bcd_conversion|z~49_combout\,
	combout => \bcd_conversion|z~51_combout\);

-- Location: LCCOMB_X59_Y51_N2
\bcd_conversion|z~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|z~53_combout\ = \bcd_conversion|z~34_combout\ $ ((((!\adc2|adc_mega_0|CH0\(2) & !\bcd_conversion|z~33_combout\)) # (!\bcd_conversion|z~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~34_combout\,
	datab => \bcd_conversion|z~35_combout\,
	datac => \adc2|adc_mega_0|CH0\(2),
	datad => \bcd_conversion|z~33_combout\,
	combout => \bcd_conversion|z~53_combout\);

-- Location: LCCOMB_X58_Y51_N30
\bcd_conversion|bcd[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[5]~19_combout\ = (\bcd_conversion|z~52_combout\ & (((!\bcd_conversion|z~53_combout\)))) # (!\bcd_conversion|z~52_combout\ & ((\bcd_conversion|z~51_combout\ & ((\bcd_conversion|z~53_combout\))) # (!\bcd_conversion|z~51_combout\ & 
-- ((\bcd_conversion|z~50_combout\) # (!\bcd_conversion|z~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~50_combout\,
	datab => \bcd_conversion|z~52_combout\,
	datac => \bcd_conversion|z~51_combout\,
	datad => \bcd_conversion|z~53_combout\,
	combout => \bcd_conversion|bcd[5]~19_combout\);

-- Location: LCCOMB_X57_Y51_N16
\bcd_conversion|bcd[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[13]~28_combout\ = \bcd_conversion|z~68_combout\ $ (!\bcd_conversion|LessThan14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \bcd_conversion|bcd[13]~28_combout\);

-- Location: LCCOMB_X60_Y48_N14
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~1_combout\ & ((\i2cSlave|data_from_master_reg\(2) & (!\bcd_conversion|bcd[5]~19_combout\)) # (!\i2cSlave|data_from_master_reg\(2) & ((!\bcd_conversion|bcd[13]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datab => \Mux0~1_combout\,
	datac => \bcd_conversion|bcd[5]~19_combout\,
	datad => \bcd_conversion|bcd[13]~28_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X60_Y48_N15
\data_to_master[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(5));

-- Location: FF_X60_Y48_N5
\i2cSlave|data_to_master_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(5),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(5));

-- Location: LCCOMB_X56_Y51_N30
\bcd_conversion|bcd[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[14]~3_combout\ = (\adc2|adc_mega_0|CH0\(8) & (\adc2|adc_mega_0|CH0\(7) & ((\adc2|adc_mega_0|CH0\(5)) # (\adc2|adc_mega_0|CH0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(8),
	datab => \adc2|adc_mega_0|CH0\(5),
	datac => \adc2|adc_mega_0|CH0\(7),
	datad => \adc2|adc_mega_0|CH0\(6),
	combout => \bcd_conversion|bcd[14]~3_combout\);

-- Location: LCCOMB_X56_Y51_N16
\bcd_conversion|bcd[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[14]~29_combout\ = (\adc2|adc_mega_0|CH0\(10) & (\adc2|adc_mega_0|CH0\(9) & (\adc2|adc_mega_0|CH0\(11) & \bcd_conversion|bcd[14]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(10),
	datab => \adc2|adc_mega_0|CH0\(9),
	datac => \adc2|adc_mega_0|CH0\(11),
	datad => \bcd_conversion|bcd[14]~3_combout\,
	combout => \bcd_conversion|bcd[14]~29_combout\);

-- Location: LCCOMB_X58_Y51_N28
\bcd_conversion|bcd[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[6]~20_combout\ = (\bcd_conversion|z~50_combout\ & (((!\bcd_conversion|z~53_combout\)) # (!\bcd_conversion|z~52_combout\))) # (!\bcd_conversion|z~50_combout\ & (\bcd_conversion|z~53_combout\ & ((\bcd_conversion|z~52_combout\) # 
-- (!\bcd_conversion|z~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~50_combout\,
	datab => \bcd_conversion|z~52_combout\,
	datac => \bcd_conversion|z~51_combout\,
	datad => \bcd_conversion|z~53_combout\,
	combout => \bcd_conversion|bcd[6]~20_combout\);

-- Location: LCCOMB_X60_Y48_N22
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((\i2cSlave|data_from_master_reg\(2) & ((\bcd_conversion|bcd[6]~20_combout\))) # (!\i2cSlave|data_from_master_reg\(2) & (!\bcd_conversion|bcd[14]~29_combout\))) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datab => \Mux0~1_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X60_Y48_N23
\data_to_master[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(6));

-- Location: LCCOMB_X60_Y48_N2
\i2cSlave|data_to_master_reg[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[6]~3_combout\ = !data_to_master(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_to_master(6),
	combout => \i2cSlave|data_to_master_reg[6]~3_combout\);

-- Location: FF_X60_Y48_N3
\i2cSlave|data_to_master_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[6]~3_combout\,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(6));

-- Location: LCCOMB_X59_Y51_N20
\bcd_conversion|bcd[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[7]~21_combout\ = (\bcd_conversion|z~51_combout\ & (\bcd_conversion|z~52_combout\ & ((!\bcd_conversion|z~50_combout\) # (!\bcd_conversion|z~53_combout\)))) # (!\bcd_conversion|z~51_combout\ & (\bcd_conversion|z~53_combout\ & 
-- ((\bcd_conversion|z~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~51_combout\,
	datab => \bcd_conversion|z~53_combout\,
	datac => \bcd_conversion|z~52_combout\,
	datad => \bcd_conversion|z~50_combout\,
	combout => \bcd_conversion|bcd[7]~21_combout\);

-- Location: LCCOMB_X60_Y48_N26
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\i2cSlave|data_from_master_reg\(2) & (\bcd_conversion|bcd[7]~21_combout\ & \Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datac => \bcd_conversion|bcd[7]~21_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X60_Y48_N27
\data_to_master[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~2_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(7));

-- Location: FF_X60_Y48_N13
\i2cSlave|data_to_master_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(7),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(7));

-- Location: LCCOMB_X60_Y48_N12
\i2cSlave|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~2_combout\ = (\i2cSlave|bits_processed_reg\(1) & (((\i2cSlave|bits_processed_reg\(0))))) # (!\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|data_to_master_reg\(6))) # (!\i2cSlave|bits_processed_reg\(0) & 
-- ((\i2cSlave|data_to_master_reg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|data_to_master_reg\(6),
	datac => \i2cSlave|data_to_master_reg\(7),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|Mux0~2_combout\);

-- Location: LCCOMB_X60_Y48_N4
\i2cSlave|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~3_combout\ = (\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|Mux0~2_combout\ & (\i2cSlave|data_to_master_reg\(4))) # (!\i2cSlave|Mux0~2_combout\ & ((\i2cSlave|data_to_master_reg\(5)))))) # (!\i2cSlave|bits_processed_reg\(1) & 
-- (((\i2cSlave|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|data_to_master_reg\(4),
	datac => \i2cSlave|data_to_master_reg\(5),
	datad => \i2cSlave|Mux0~2_combout\,
	combout => \i2cSlave|Mux0~3_combout\);

-- Location: LCCOMB_X54_Y52_N30
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[0]~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\ & 
-- \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|ram_rd_en_flp~q\,
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|u_ss_ram|altsyncram_component|auto_generated|q_b\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[0]~0_combout\);

-- Location: FF_X54_Y52_N31
\adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata_nxt[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(0));

-- Location: LCCOMB_X55_Y51_N0
\adc2|adc_mega_0|ADC_CTRL|reading0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\ = \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc2|adc_mega_0|ADC_CTRL|max10_adc_core|sample_store_internal|readdata\(0),
	combout => \adc2|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\);

-- Location: FF_X55_Y51_N1
\adc2|adc_mega_0|ADC_CTRL|reading0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\,
	ena => \adc2|adc_mega_0|ADC_CTRL|reading0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|ADC_CTRL|reading0\(0));

-- Location: LCCOMB_X55_Y51_N16
\adc2|adc_mega_0|CH0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adc2|adc_mega_0|CH0~0_combout\ = (\adc2|adc_mega_0|ADC_CTRL|reading0\(0) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc2|adc_mega_0|ADC_CTRL|reading0\(0),
	datac => \rst~input_o\,
	combout => \adc2|adc_mega_0|CH0~0_combout\);

-- Location: FF_X55_Y51_N17
\adc2|adc_mega_0|CH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adc2|adc_mega_0|CH0~0_combout\,
	ena => \adc2|adc_mega_0|CH0[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc2|adc_mega_0|CH0\(0));

-- Location: LCCOMB_X58_Y51_N2
\bcd_conversion|bcd[8]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[8]~22_combout\ = \bcd_conversion|z~52_combout\ $ (((\bcd_conversion|z~51_combout\) # ((\bcd_conversion|z~50_combout\ & \bcd_conversion|z~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~50_combout\,
	datab => \bcd_conversion|z~52_combout\,
	datac => \bcd_conversion|z~51_combout\,
	datad => \bcd_conversion|z~53_combout\,
	combout => \bcd_conversion|bcd[8]~22_combout\);

-- Location: LCCOMB_X60_Y48_N16
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ((\i2cSlave|data_from_master_reg\(2) & (!\adc2|adc_mega_0|CH0\(0))) # (!\i2cSlave|data_from_master_reg\(2) & ((\bcd_conversion|bcd[8]~22_combout\)))) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(0),
	datab => \Mux0~1_combout\,
	datac => \i2cSlave|data_from_master_reg\(2),
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X60_Y48_N17
\data_to_master[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(0));

-- Location: LCCOMB_X60_Y48_N28
\i2cSlave|data_to_master_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[0]~2_combout\ = !data_to_master(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_to_master(0),
	combout => \i2cSlave|data_to_master_reg[0]~2_combout\);

-- Location: FF_X60_Y48_N29
\i2cSlave|data_to_master_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[0]~2_combout\,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(0));

-- Location: LCCOMB_X57_Y51_N8
\bcd_conversion|bcd[9]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[9]~24_combout\ = (\bcd_conversion|z~59_combout\ & (((\bcd_conversion|z~57_combout\ & !\bcd_conversion|z~61_combout\)) # (!\bcd_conversion|z~62_combout\))) # (!\bcd_conversion|z~59_combout\ & ((\bcd_conversion|z~61_combout\ $ 
-- (\bcd_conversion|z~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~59_combout\,
	datab => \bcd_conversion|z~57_combout\,
	datac => \bcd_conversion|z~61_combout\,
	datad => \bcd_conversion|z~62_combout\,
	combout => \bcd_conversion|bcd[9]~24_combout\);

-- Location: LCCOMB_X60_Y51_N22
\bcd_conversion|bcd[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[1]~15_combout\ = (\adc2|adc_mega_0|CH0\(1) & (((!\bcd_conversion|z~38_combout\ & !\bcd_conversion|z~37_combout\)))) # (!\adc2|adc_mega_0|CH0\(1) & ((\bcd_conversion|z~37_combout\) # ((\bcd_conversion|z~36_combout\ & 
-- \bcd_conversion|z~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(1),
	datab => \bcd_conversion|z~36_combout\,
	datac => \bcd_conversion|z~38_combout\,
	datad => \bcd_conversion|z~37_combout\,
	combout => \bcd_conversion|bcd[1]~15_combout\);

-- Location: LCCOMB_X60_Y48_N8
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~1_combout\ & ((\i2cSlave|data_from_master_reg\(2) & ((\bcd_conversion|bcd[1]~15_combout\))) # (!\i2cSlave|data_from_master_reg\(2) & (!\bcd_conversion|bcd[9]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datab => \Mux0~1_combout\,
	datac => \bcd_conversion|bcd[9]~24_combout\,
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X60_Y48_N9
\data_to_master[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(1));

-- Location: FF_X60_Y48_N21
\i2cSlave|data_to_master_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(1),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(1));

-- Location: LCCOMB_X57_Y51_N4
\bcd_conversion|bcd[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[11]~26_combout\ = (\bcd_conversion|z~59_combout\ & (\bcd_conversion|z~57_combout\ & ((\bcd_conversion|z~62_combout\)))) # (!\bcd_conversion|z~59_combout\ & (\bcd_conversion|z~61_combout\ & ((!\bcd_conversion|z~62_combout\) # 
-- (!\bcd_conversion|z~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~59_combout\,
	datab => \bcd_conversion|z~57_combout\,
	datac => \bcd_conversion|z~61_combout\,
	datad => \bcd_conversion|z~62_combout\,
	combout => \bcd_conversion|bcd[11]~26_combout\);

-- Location: LCCOMB_X60_Y51_N14
\bcd_conversion|bcd[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[3]~17_combout\ = (\bcd_conversion|z~38_combout\ & (!\adc2|adc_mega_0|CH0\(1) & (!\bcd_conversion|z~36_combout\))) # (!\bcd_conversion|z~38_combout\ & (\bcd_conversion|z~37_combout\ & ((\adc2|adc_mega_0|CH0\(1)) # 
-- (\bcd_conversion|z~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(1),
	datab => \bcd_conversion|z~36_combout\,
	datac => \bcd_conversion|z~38_combout\,
	datad => \bcd_conversion|z~37_combout\,
	combout => \bcd_conversion|bcd[3]~17_combout\);

-- Location: LCCOMB_X60_Y48_N30
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux0~1_combout\ & ((\i2cSlave|data_from_master_reg\(2) & ((\bcd_conversion|bcd[3]~17_combout\))) # (!\i2cSlave|data_from_master_reg\(2) & (\bcd_conversion|bcd[11]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datab => \Mux0~1_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[3]~17_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X60_Y48_N31
\data_to_master[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(3));

-- Location: FF_X60_Y48_N1
\i2cSlave|data_to_master_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(3),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(3));

-- Location: LCCOMB_X57_Y51_N2
\bcd_conversion|bcd[10]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[10]~25_combout\ = (\bcd_conversion|z~57_combout\ & (((!\bcd_conversion|z~62_combout\) # (!\bcd_conversion|z~61_combout\)))) # (!\bcd_conversion|z~57_combout\ & (\bcd_conversion|z~62_combout\ & ((\bcd_conversion|z~59_combout\) # 
-- (\bcd_conversion|z~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~59_combout\,
	datab => \bcd_conversion|z~57_combout\,
	datac => \bcd_conversion|z~61_combout\,
	datad => \bcd_conversion|z~62_combout\,
	combout => \bcd_conversion|bcd[10]~25_combout\);

-- Location: LCCOMB_X60_Y51_N16
\bcd_conversion|bcd[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_conversion|bcd[2]~16_combout\ = (\adc2|adc_mega_0|CH0\(1) & (\bcd_conversion|z~36_combout\)) # (!\adc2|adc_mega_0|CH0\(1) & ((\bcd_conversion|z~36_combout\ & (!\bcd_conversion|z~38_combout\ & !\bcd_conversion|z~37_combout\)) # 
-- (!\bcd_conversion|z~36_combout\ & ((\bcd_conversion|z~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(1),
	datab => \bcd_conversion|z~36_combout\,
	datac => \bcd_conversion|z~38_combout\,
	datad => \bcd_conversion|z~37_combout\,
	combout => \bcd_conversion|bcd[2]~16_combout\);

-- Location: LCCOMB_X60_Y48_N18
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ((\i2cSlave|data_from_master_reg\(2) & ((!\bcd_conversion|bcd[2]~16_combout\))) # (!\i2cSlave|data_from_master_reg\(2) & (\bcd_conversion|bcd[10]~25_combout\))) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_from_master_reg\(2),
	datab => \Mux0~1_combout\,
	datac => \bcd_conversion|bcd[10]~25_combout\,
	datad => \bcd_conversion|bcd[2]~16_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X60_Y48_N19
\data_to_master[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(2));

-- Location: LCCOMB_X60_Y48_N6
\i2cSlave|data_to_master_reg[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[2]~1_combout\ = !data_to_master(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_to_master(2),
	combout => \i2cSlave|data_to_master_reg[2]~1_combout\);

-- Location: FF_X60_Y48_N7
\i2cSlave|data_to_master_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[2]~1_combout\,
	ena => \i2cSlave|data_to_master_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(2));

-- Location: LCCOMB_X60_Y48_N0
\i2cSlave|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~0_combout\ = (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(0))) # (!\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|bits_processed_reg\(0) & ((\i2cSlave|data_to_master_reg\(2)))) # (!\i2cSlave|bits_processed_reg\(0) & 
-- (\i2cSlave|data_to_master_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|data_to_master_reg\(3),
	datad => \i2cSlave|data_to_master_reg\(2),
	combout => \i2cSlave|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y48_N20
\i2cSlave|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~1_combout\ = (\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|Mux0~0_combout\ & (\i2cSlave|data_to_master_reg\(0))) # (!\i2cSlave|Mux0~0_combout\ & ((\i2cSlave|data_to_master_reg\(1)))))) # (!\i2cSlave|bits_processed_reg\(1) & 
-- (((\i2cSlave|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|data_to_master_reg\(0),
	datac => \i2cSlave|data_to_master_reg\(1),
	datad => \i2cSlave|Mux0~0_combout\,
	combout => \i2cSlave|Mux0~1_combout\);

-- Location: LCCOMB_X59_Y42_N4
\i2cSlave|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~4_combout\ = (\i2cSlave|bits_processed_reg\(2) & ((\i2cSlave|Mux0~1_combout\))) # (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Mux0~3_combout\,
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Mux0~1_combout\,
	combout => \i2cSlave|Mux0~4_combout\);

-- Location: FF_X59_Y42_N5
\i2cSlave|sda_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|Mux0~4_combout\,
	sclr => \i2cSlave|ALT_INV_state_reg.read~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_o_reg~q\);

-- Location: LCCOMB_X59_Y44_N16
\i2cSlave|sda_wen_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cSlave|sda_wen_reg~0_combout\ = (\i2cSlave|state_reg.read~q\) # (\i2cSlave|state_reg.answer_ack_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|state_reg.read~q\,
	datad => \i2cSlave|state_reg.answer_ack_start~q\,
	combout => \i2cSlave|sda_wen_reg~0_combout\);

-- Location: FF_X59_Y44_N17
\i2cSlave|sda_wen_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|sda_wen_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_wen_reg~q\);

-- Location: LCCOMB_X60_Y51_N8
\d_0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux6~0_combout\ = (\bcd_conversion|bcd[2]~16_combout\ & (!\bcd_conversion|bcd[1]~15_combout\ & (\adc2|adc_mega_0|CH0\(0) $ (!\bcd_conversion|bcd[3]~17_combout\)))) # (!\bcd_conversion|bcd[2]~16_combout\ & (\adc2|adc_mega_0|CH0\(0) & 
-- (\bcd_conversion|bcd[1]~15_combout\ $ (!\bcd_conversion|bcd[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc2|adc_mega_0|CH0\(0),
	datab => \bcd_conversion|bcd[2]~16_combout\,
	datac => \bcd_conversion|bcd[1]~15_combout\,
	datad => \bcd_conversion|bcd[3]~17_combout\,
	combout => \d_0|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y50_N12
\d_0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux5~0_combout\ = (\bcd_conversion|bcd[3]~17_combout\ & ((\adc2|adc_mega_0|CH0\(0) & ((\bcd_conversion|bcd[1]~15_combout\))) # (!\adc2|adc_mega_0|CH0\(0) & (\bcd_conversion|bcd[2]~16_combout\)))) # (!\bcd_conversion|bcd[3]~17_combout\ & 
-- (\bcd_conversion|bcd[2]~16_combout\ & (\adc2|adc_mega_0|CH0\(0) $ (\bcd_conversion|bcd[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[2]~16_combout\,
	datab => \bcd_conversion|bcd[3]~17_combout\,
	datac => \adc2|adc_mega_0|CH0\(0),
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \d_0|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y50_N10
\d_0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux4~0_combout\ = (\bcd_conversion|bcd[2]~16_combout\ & (\bcd_conversion|bcd[3]~17_combout\ & ((\bcd_conversion|bcd[1]~15_combout\) # (!\adc2|adc_mega_0|CH0\(0))))) # (!\bcd_conversion|bcd[2]~16_combout\ & (!\bcd_conversion|bcd[3]~17_combout\ & 
-- (!\adc2|adc_mega_0|CH0\(0) & \bcd_conversion|bcd[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[2]~16_combout\,
	datab => \bcd_conversion|bcd[3]~17_combout\,
	datac => \adc2|adc_mega_0|CH0\(0),
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \d_0|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y50_N8
\d_0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux3~0_combout\ = (\bcd_conversion|bcd[1]~15_combout\ & ((\bcd_conversion|bcd[2]~16_combout\ & ((\adc2|adc_mega_0|CH0\(0)))) # (!\bcd_conversion|bcd[2]~16_combout\ & (\bcd_conversion|bcd[3]~17_combout\ & !\adc2|adc_mega_0|CH0\(0))))) # 
-- (!\bcd_conversion|bcd[1]~15_combout\ & (!\bcd_conversion|bcd[3]~17_combout\ & (\bcd_conversion|bcd[2]~16_combout\ $ (\adc2|adc_mega_0|CH0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[2]~16_combout\,
	datab => \bcd_conversion|bcd[3]~17_combout\,
	datac => \adc2|adc_mega_0|CH0\(0),
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \d_0|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y50_N6
\d_0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux2~0_combout\ = (\bcd_conversion|bcd[1]~15_combout\ & (((!\bcd_conversion|bcd[3]~17_combout\ & \adc2|adc_mega_0|CH0\(0))))) # (!\bcd_conversion|bcd[1]~15_combout\ & ((\bcd_conversion|bcd[2]~16_combout\ & (!\bcd_conversion|bcd[3]~17_combout\)) # 
-- (!\bcd_conversion|bcd[2]~16_combout\ & ((\adc2|adc_mega_0|CH0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[2]~16_combout\,
	datab => \bcd_conversion|bcd[3]~17_combout\,
	datac => \adc2|adc_mega_0|CH0\(0),
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \d_0|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y50_N20
\d_0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux1~0_combout\ = (\bcd_conversion|bcd[2]~16_combout\ & (\adc2|adc_mega_0|CH0\(0) & (\bcd_conversion|bcd[3]~17_combout\ $ (\bcd_conversion|bcd[1]~15_combout\)))) # (!\bcd_conversion|bcd[2]~16_combout\ & (!\bcd_conversion|bcd[3]~17_combout\ & 
-- ((\adc2|adc_mega_0|CH0\(0)) # (\bcd_conversion|bcd[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[2]~16_combout\,
	datab => \bcd_conversion|bcd[3]~17_combout\,
	datac => \adc2|adc_mega_0|CH0\(0),
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \d_0|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y50_N30
\d_0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_0|Mux0~0_combout\ = (\adc2|adc_mega_0|CH0\(0) & ((\bcd_conversion|bcd[3]~17_combout\) # (\bcd_conversion|bcd[2]~16_combout\ $ (\bcd_conversion|bcd[1]~15_combout\)))) # (!\adc2|adc_mega_0|CH0\(0) & ((\bcd_conversion|bcd[1]~15_combout\) # 
-- (\bcd_conversion|bcd[2]~16_combout\ $ (\bcd_conversion|bcd[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[2]~16_combout\,
	datab => \bcd_conversion|bcd[3]~17_combout\,
	datac => \adc2|adc_mega_0|CH0\(0),
	datad => \bcd_conversion|bcd[1]~15_combout\,
	combout => \d_0|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y50_N24
\d_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux6~0_combout\ = (\bcd_conversion|bcd[7]~21_combout\ & (!\bcd_conversion|bcd[4]~18_combout\ & (\bcd_conversion|bcd[5]~19_combout\ $ (\bcd_conversion|bcd[6]~20_combout\)))) # (!\bcd_conversion|bcd[7]~21_combout\ & (\bcd_conversion|bcd[5]~19_combout\ 
-- & (\bcd_conversion|bcd[4]~18_combout\ $ (\bcd_conversion|bcd[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y50_N30
\d_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux5~0_combout\ = (\bcd_conversion|bcd[7]~21_combout\ & ((\bcd_conversion|bcd[4]~18_combout\ & ((!\bcd_conversion|bcd[6]~20_combout\))) # (!\bcd_conversion|bcd[4]~18_combout\ & (!\bcd_conversion|bcd[5]~19_combout\)))) # 
-- (!\bcd_conversion|bcd[7]~21_combout\ & (!\bcd_conversion|bcd[6]~20_combout\ & (\bcd_conversion|bcd[5]~19_combout\ $ (\bcd_conversion|bcd[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y50_N8
\d_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux4~0_combout\ = (\bcd_conversion|bcd[7]~21_combout\ & (!\bcd_conversion|bcd[6]~20_combout\ & ((\bcd_conversion|bcd[4]~18_combout\) # (!\bcd_conversion|bcd[5]~19_combout\)))) # (!\bcd_conversion|bcd[7]~21_combout\ & 
-- (!\bcd_conversion|bcd[5]~19_combout\ & (\bcd_conversion|bcd[4]~18_combout\ & \bcd_conversion|bcd[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y50_N10
\d_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux3~0_combout\ = (\bcd_conversion|bcd[5]~19_combout\ & (!\bcd_conversion|bcd[7]~21_combout\ & (\bcd_conversion|bcd[4]~18_combout\ $ (\bcd_conversion|bcd[6]~20_combout\)))) # (!\bcd_conversion|bcd[5]~19_combout\ & ((\bcd_conversion|bcd[4]~18_combout\ 
-- & (\bcd_conversion|bcd[7]~21_combout\ & \bcd_conversion|bcd[6]~20_combout\)) # (!\bcd_conversion|bcd[4]~18_combout\ & ((!\bcd_conversion|bcd[6]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y50_N4
\d_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux2~0_combout\ = (\bcd_conversion|bcd[5]~19_combout\ & ((\bcd_conversion|bcd[6]~20_combout\ & ((!\bcd_conversion|bcd[4]~18_combout\))) # (!\bcd_conversion|bcd[6]~20_combout\ & (!\bcd_conversion|bcd[7]~21_combout\)))) # 
-- (!\bcd_conversion|bcd[5]~19_combout\ & (!\bcd_conversion|bcd[7]~21_combout\ & (!\bcd_conversion|bcd[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y50_N22
\d_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux1~0_combout\ = (\bcd_conversion|bcd[5]~19_combout\ & (!\bcd_conversion|bcd[4]~18_combout\ & (\bcd_conversion|bcd[7]~21_combout\ $ (\bcd_conversion|bcd[6]~20_combout\)))) # (!\bcd_conversion|bcd[5]~19_combout\ & (!\bcd_conversion|bcd[7]~21_combout\ 
-- & ((\bcd_conversion|bcd[6]~20_combout\) # (!\bcd_conversion|bcd[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y50_N28
\d_1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_1|Mux0~0_combout\ = (\bcd_conversion|bcd[4]~18_combout\ & ((\bcd_conversion|bcd[7]~21_combout\ $ (!\bcd_conversion|bcd[6]~20_combout\)) # (!\bcd_conversion|bcd[5]~19_combout\))) # (!\bcd_conversion|bcd[4]~18_combout\ & 
-- ((\bcd_conversion|bcd[7]~21_combout\) # (\bcd_conversion|bcd[5]~19_combout\ $ (\bcd_conversion|bcd[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[7]~21_combout\,
	datab => \bcd_conversion|bcd[5]~19_combout\,
	datac => \bcd_conversion|bcd[4]~18_combout\,
	datad => \bcd_conversion|bcd[6]~20_combout\,
	combout => \d_1|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y47_N8
\d_2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux6~0_combout\ = (\bcd_conversion|bcd[10]~25_combout\ & (!\bcd_conversion|bcd[8]~22_combout\ & (\bcd_conversion|bcd[9]~24_combout\ $ (\bcd_conversion|bcd[11]~26_combout\)))) # (!\bcd_conversion|bcd[10]~25_combout\ & 
-- (\bcd_conversion|bcd[9]~24_combout\ & (\bcd_conversion|bcd[11]~26_combout\ $ (\bcd_conversion|bcd[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y47_N26
\d_2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux5~0_combout\ = (\bcd_conversion|bcd[9]~24_combout\ & (!\bcd_conversion|bcd[10]~25_combout\ & (\bcd_conversion|bcd[11]~26_combout\ $ (!\bcd_conversion|bcd[8]~22_combout\)))) # (!\bcd_conversion|bcd[9]~24_combout\ & 
-- ((\bcd_conversion|bcd[8]~22_combout\ & (!\bcd_conversion|bcd[10]~25_combout\)) # (!\bcd_conversion|bcd[8]~22_combout\ & ((\bcd_conversion|bcd[11]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y47_N12
\d_2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux4~0_combout\ = (\bcd_conversion|bcd[10]~25_combout\ & (!\bcd_conversion|bcd[9]~24_combout\ & (!\bcd_conversion|bcd[11]~26_combout\ & \bcd_conversion|bcd[8]~22_combout\))) # (!\bcd_conversion|bcd[10]~25_combout\ & 
-- (\bcd_conversion|bcd[11]~26_combout\ & ((\bcd_conversion|bcd[8]~22_combout\) # (!\bcd_conversion|bcd[9]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y47_N6
\d_2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux3~0_combout\ = (\bcd_conversion|bcd[9]~24_combout\ & (!\bcd_conversion|bcd[11]~26_combout\ & (\bcd_conversion|bcd[10]~25_combout\ $ (\bcd_conversion|bcd[8]~22_combout\)))) # (!\bcd_conversion|bcd[9]~24_combout\ & 
-- ((\bcd_conversion|bcd[10]~25_combout\ & (\bcd_conversion|bcd[11]~26_combout\ & \bcd_conversion|bcd[8]~22_combout\)) # (!\bcd_conversion|bcd[10]~25_combout\ & ((!\bcd_conversion|bcd[8]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y47_N28
\d_2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux2~0_combout\ = (\bcd_conversion|bcd[9]~24_combout\ & ((\bcd_conversion|bcd[10]~25_combout\ & ((!\bcd_conversion|bcd[8]~22_combout\))) # (!\bcd_conversion|bcd[10]~25_combout\ & (!\bcd_conversion|bcd[11]~26_combout\)))) # 
-- (!\bcd_conversion|bcd[9]~24_combout\ & (((!\bcd_conversion|bcd[11]~26_combout\ & !\bcd_conversion|bcd[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y47_N18
\d_2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux1~0_combout\ = (\bcd_conversion|bcd[9]~24_combout\ & (!\bcd_conversion|bcd[8]~22_combout\ & (\bcd_conversion|bcd[10]~25_combout\ $ (\bcd_conversion|bcd[11]~26_combout\)))) # (!\bcd_conversion|bcd[9]~24_combout\ & 
-- (!\bcd_conversion|bcd[11]~26_combout\ & ((\bcd_conversion|bcd[10]~25_combout\) # (!\bcd_conversion|bcd[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y47_N20
\d_2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_2|Mux0~0_combout\ = (\bcd_conversion|bcd[8]~22_combout\ & ((\bcd_conversion|bcd[10]~25_combout\ $ (!\bcd_conversion|bcd[11]~26_combout\)) # (!\bcd_conversion|bcd[9]~24_combout\))) # (!\bcd_conversion|bcd[8]~22_combout\ & 
-- ((\bcd_conversion|bcd[11]~26_combout\) # (\bcd_conversion|bcd[9]~24_combout\ $ (\bcd_conversion|bcd[10]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|bcd[9]~24_combout\,
	datab => \bcd_conversion|bcd[10]~25_combout\,
	datac => \bcd_conversion|bcd[11]~26_combout\,
	datad => \bcd_conversion|bcd[8]~22_combout\,
	combout => \d_2|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y51_N12
\d_3|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux6~2_combout\ = (\bcd_conversion|z~68_combout\ & ((\bcd_conversion|bcd[12]~27_combout\ $ (\bcd_conversion|bcd[14]~29_combout\)) # (!\bcd_conversion|LessThan14~0_combout\))) # (!\bcd_conversion|z~68_combout\ & 
-- ((\bcd_conversion|LessThan14~0_combout\) # (\bcd_conversion|bcd[12]~27_combout\ $ (\bcd_conversion|bcd[14]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux6~2_combout\);

-- Location: LCCOMB_X60_Y51_N10
\d_3|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux5~2_combout\ = (\bcd_conversion|z~68_combout\ $ (\bcd_conversion|bcd[12]~27_combout\ $ (\bcd_conversion|LessThan14~0_combout\))) # (!\bcd_conversion|bcd[14]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux5~2_combout\);

-- Location: LCCOMB_X60_Y51_N24
\d_3|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux4~2_combout\ = (\bcd_conversion|bcd[12]~27_combout\ & (!\bcd_conversion|bcd[14]~29_combout\ & (\bcd_conversion|z~68_combout\ $ (\bcd_conversion|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux4~2_combout\);

-- Location: LCCOMB_X60_Y51_N2
\d_3|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux3~2_combout\ = (\bcd_conversion|bcd[12]~27_combout\ & (\bcd_conversion|bcd[14]~29_combout\ & (\bcd_conversion|z~68_combout\ $ (!\bcd_conversion|LessThan14~0_combout\)))) # (!\bcd_conversion|bcd[12]~27_combout\ & (\bcd_conversion|z~68_combout\ $ 
-- (\bcd_conversion|bcd[14]~29_combout\ $ (!\bcd_conversion|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux3~2_combout\);

-- Location: LCCOMB_X60_Y51_N28
\d_3|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux2~2_combout\ = ((\bcd_conversion|bcd[14]~29_combout\ & (\bcd_conversion|z~68_combout\ $ (!\bcd_conversion|LessThan14~0_combout\)))) # (!\bcd_conversion|bcd[12]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux2~2_combout\);

-- Location: LCCOMB_X60_Y51_N6
\d_3|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux1~2_combout\ = (\bcd_conversion|bcd[12]~27_combout\ & ((\bcd_conversion|bcd[14]~29_combout\) # (\bcd_conversion|z~68_combout\ $ (!\bcd_conversion|LessThan14~0_combout\)))) # (!\bcd_conversion|bcd[12]~27_combout\ & 
-- (\bcd_conversion|bcd[14]~29_combout\ & (\bcd_conversion|z~68_combout\ $ (!\bcd_conversion|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux1~2_combout\);

-- Location: LCCOMB_X60_Y51_N20
\d_3|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d_3|Mux0~2_combout\ = (\bcd_conversion|bcd[14]~29_combout\ & ((\bcd_conversion|bcd[12]~27_combout\) # (\bcd_conversion|z~68_combout\ $ (!\bcd_conversion|LessThan14~0_combout\)))) # (!\bcd_conversion|bcd[14]~29_combout\ & (\bcd_conversion|z~68_combout\ $ 
-- (((\bcd_conversion|LessThan14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_conversion|z~68_combout\,
	datab => \bcd_conversion|bcd[12]~27_combout\,
	datac => \bcd_conversion|bcd[14]~29_combout\,
	datad => \bcd_conversion|LessThan14~0_combout\,
	combout => \d_3|Mux0~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


