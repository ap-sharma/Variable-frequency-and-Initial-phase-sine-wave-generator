-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "09/01/2022 15:04:42"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MCP4921 IS
    PORT (
	oncycle : IN std_logic_vector(3 DOWNTO 0);
	offcycle : IN std_logic_vector(3 DOWNTO 0);
	clk_50MHz : IN std_logic;
	reset : IN std_logic;
	Dout : OUT std_logic;
	CS : OUT std_logic;
	Sclk : OUT std_logic;
	LDAC : OUT std_logic
	);
END MCP4921;

-- Design Ports Information
-- Dout	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CS	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Sclk	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LDAC	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oncycle[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oncycle[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oncycle[2]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oncycle[3]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- offcycle[1]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- offcycle[0]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- offcycle[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- offcycle[2]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MCP4921 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_oncycle : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_offcycle : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Dout : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_Sclk : std_logic;
SIGNAL ww_LDAC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK_25MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Dout~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \Sclk~output_o\ : std_logic;
SIGNAL \LDAC~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \CLK_25MHz~0_combout\ : std_logic;
SIGNAL \CLK_25MHz~feeder_combout\ : std_logic;
SIGNAL \CLK_25MHz~q\ : std_logic;
SIGNAL \CLK_25MHz~clkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \count_1KHz~3_combout\ : std_logic;
SIGNAL \count_1KHz[0]~1_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \count_1KHz~0_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \count_1KHz~2_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \count_1KHz~4_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \count_1KHz~5_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \count_1KHz[9]~feeder_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \offcycle[1]~input_o\ : std_logic;
SIGNAL \offcycle[3]~input_o\ : std_logic;
SIGNAL \offcycle[0]~input_o\ : std_logic;
SIGNAL \offcycle[2]~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \oncycle[0]~input_o\ : std_logic;
SIGNAL \oncycle[1]~input_o\ : std_logic;
SIGNAL \oncount~6_combout\ : std_logic;
SIGNAL \bit_count[6]~1_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \bit_count[7]~2_combout\ : std_logic;
SIGNAL \bit_count[1]~3_combout\ : std_logic;
SIGNAL \bit_count[4]~4_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \bit_count[5]~5_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \bit_count[6]~6_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \bit_count[7]~7_combout\ : std_logic;
SIGNAL \bit_count[7]~8_combout\ : std_logic;
SIGNAL \bit_count[7]~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \bit_count~10_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \bit_count~9_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \bit_count~12_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \bit_count~11_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \oncount[3]~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \point_count[0]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \point_count~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \point_count~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \point_count~0_combout\ : std_logic;
SIGNAL \oncount[3]~3_combout\ : std_logic;
SIGNAL \oncount[3]~5_combout\ : std_logic;
SIGNAL \oncount~2_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \oncycle[2]~input_o\ : std_logic;
SIGNAL \oncycle[3]~input_o\ : std_logic;
SIGNAL \oncount~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \oncount~7_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \offcount~3_combout\ : std_logic;
SIGNAL \offcount[3]~4_combout\ : std_logic;
SIGNAL \offcount[3]~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \point_count1[0]~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \point_count1~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \point_count1~0_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \offcount[3]~5_combout\ : std_logic;
SIGNAL \offcount[3]~6_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \counter[2]~3_combout\ : std_logic;
SIGNAL \offcount[3]~7_combout\ : std_logic;
SIGNAL \offcount[3]~8_combout\ : std_logic;
SIGNAL \offcount~9_combout\ : std_logic;
SIGNAL \offcount~11_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \offcount~10_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter[0]~9_combout\ : std_logic;
SIGNAL \counter[2]~15_combout\ : std_logic;
SIGNAL \counter[2]~16_combout\ : std_logic;
SIGNAL \counter[2]~12_combout\ : std_logic;
SIGNAL \counter[2]~11_combout\ : std_logic;
SIGNAL \counter[2]~13_combout\ : std_logic;
SIGNAL \counter[2]~17_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[0]~8_combout\ : std_logic;
SIGNAL \counter[0]~10_combout\ : std_logic;
SIGNAL \counter[0]~14_combout\ : std_logic;
SIGNAL \op_bit[12]~21_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \phase~2_combout\ : std_logic;
SIGNAL \phase[0]~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \POINT~5_combout\ : std_logic;
SIGNAL \phase[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \POINT~0_combout\ : std_logic;
SIGNAL \POINT~1_combout\ : std_logic;
SIGNAL \op_bit~0_combout\ : std_logic;
SIGNAL \op_bit~3_combout\ : std_logic;
SIGNAL \op_bit[5]~1_combout\ : std_logic;
SIGNAL \op_bit[11]~2_combout\ : std_logic;
SIGNAL \op_bit[11]~4_combout\ : std_logic;
SIGNAL \op_bit~9_combout\ : std_logic;
SIGNAL \op_bit~10_combout\ : std_logic;
SIGNAL \POINT~2_combout\ : std_logic;
SIGNAL \op_bit~5_combout\ : std_logic;
SIGNAL \op_bit~6_combout\ : std_logic;
SIGNAL \op_bit~7_combout\ : std_logic;
SIGNAL \POINT~3_combout\ : std_logic;
SIGNAL \POINT~4_combout\ : std_logic;
SIGNAL \op_bit~8_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \op_bit~14_combout\ : std_logic;
SIGNAL \POINT~8_combout\ : std_logic;
SIGNAL \op_bit~15_combout\ : std_logic;
SIGNAL \POINT~6_combout\ : std_logic;
SIGNAL \POINT~7_combout\ : std_logic;
SIGNAL \op_bit~11_combout\ : std_logic;
SIGNAL \op_bit~12_combout\ : std_logic;
SIGNAL \op_bit~13_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \POINT~9_combout\ : std_logic;
SIGNAL \op_bit~16_combout\ : std_logic;
SIGNAL \POINT~13_combout\ : std_logic;
SIGNAL \op_bit~20_combout\ : std_logic;
SIGNAL \POINT~10_combout\ : std_logic;
SIGNAL \op_bit~17_combout\ : std_logic;
SIGNAL \op_bit~18_combout\ : std_logic;
SIGNAL \POINT~11_combout\ : std_logic;
SIGNAL \POINT~12_combout\ : std_logic;
SIGNAL \op_bit~19_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Dout~2_combout\ : std_logic;
SIGNAL \Dout~3_combout\ : std_logic;
SIGNAL \Dout~4_combout\ : std_logic;
SIGNAL \Dout~reg0feeder_combout\ : std_logic;
SIGNAL \Dout~reg0_q\ : std_logic;
SIGNAL \CS~0_combout\ : std_logic;
SIGNAL \CS~reg0feeder_combout\ : std_logic;
SIGNAL \LDAC~0_combout\ : std_logic;
SIGNAL \LDAC~1_combout\ : std_logic;
SIGNAL \LDAC~2_combout\ : std_logic;
SIGNAL \CS~reg0_q\ : std_logic;
SIGNAL \LDAC~3_combout\ : std_logic;
SIGNAL \LDAC~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL point_count1 : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_count : std_logic_vector(7 DOWNTO 0);
SIGNAL op_bit : std_logic_vector(15 DOWNTO 0);
SIGNAL offcount : std_logic_vector(3 DOWNTO 0);
SIGNAL oncount : std_logic_vector(3 DOWNTO 0);
SIGNAL count_1KHz : std_logic_vector(15 DOWNTO 0);
SIGNAL phase : std_logic_vector(4 DOWNTO 0);
SIGNAL point_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_CLK_25MHz~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_oncycle <= oncycle;
ww_offcycle <= offcycle;
ww_clk_50MHz <= clk_50MHz;
ww_reset <= reset;
Dout <= ww_Dout;
CS <= ww_CS;
Sclk <= ww_Sclk;
LDAC <= ww_LDAC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK_25MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_25MHz~q\);
\ALT_INV_CLK_25MHz~clkctrl_outclk\ <= NOT \CLK_25MHz~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X36_Y0_N9
\Dout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout~reg0_q\,
	devoe => ww_devoe,
	o => \Dout~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\CS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CS~reg0_q\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\Sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_25MHz~q\,
	devoe => ww_devoe,
	o => \Sclk~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\LDAC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LDAC~reg0_q\,
	devoe => ww_devoe,
	o => \LDAC~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: LCCOMB_X26_Y2_N28
\CLK_25MHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_25MHz~0_combout\ = !\CLK_25MHz~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK_25MHz~q\,
	combout => \CLK_25MHz~0_combout\);

-- Location: LCCOMB_X26_Y2_N16
\CLK_25MHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_25MHz~feeder_combout\ = \CLK_25MHz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_25MHz~0_combout\,
	combout => \CLK_25MHz~feeder_combout\);

-- Location: FF_X26_Y2_N17
CLK_25MHz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \CLK_25MHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_25MHz~q\);

-- Location: CLKCTRL_G15
\CLK_25MHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_25MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_25MHz~clkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X30_Y3_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(1) & (counter(0) & !counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y3_N0
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = count_1KHz(0) $ (VCC)
-- \Add5~1\ = CARRY(count_1KHz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X31_Y3_N14
\count_1KHz~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz~3_combout\ = (!\Equal7~4_combout\ & \Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datac => \Add5~0_combout\,
	combout => \count_1KHz~3_combout\);

-- Location: LCCOMB_X28_Y3_N8
\count_1KHz[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz[0]~1_combout\ = (!counter(2) & (!\reset~input_o\ & (counter(1) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => \reset~input_o\,
	combout => \count_1KHz[0]~1_combout\);

-- Location: FF_X31_Y3_N15
\count_1KHz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \count_1KHz~3_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(0));

-- Location: LCCOMB_X32_Y3_N2
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (count_1KHz(1) & (!\Add5~1\)) # (!count_1KHz(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!count_1KHz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1KHz(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X31_Y3_N30
\count_1KHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz~0_combout\ = (!\Equal7~4_combout\ & \Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~4_combout\,
	datad => \Add5~2_combout\,
	combout => \count_1KHz~0_combout\);

-- Location: FF_X31_Y3_N31
\count_1KHz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \count_1KHz~0_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(1));

-- Location: LCCOMB_X32_Y3_N4
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (count_1KHz(2) & (\Add5~3\ $ (GND))) # (!count_1KHz(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((count_1KHz(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1KHz(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X31_Y3_N28
\count_1KHz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz~2_combout\ = (!\Equal7~4_combout\ & \Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~4_combout\,
	datad => \Add5~4_combout\,
	combout => \count_1KHz~2_combout\);

-- Location: FF_X31_Y3_N29
\count_1KHz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \count_1KHz~2_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(2));

-- Location: LCCOMB_X32_Y3_N6
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (count_1KHz(3) & (!\Add5~5\)) # (!count_1KHz(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!count_1KHz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X32_Y3_N7
\count_1KHz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add5~6_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(3));

-- Location: LCCOMB_X32_Y3_N8
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (count_1KHz(4) & (\Add5~7\ $ (GND))) # (!count_1KHz(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((count_1KHz(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X31_Y3_N10
\count_1KHz~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz~4_combout\ = (!\Equal7~4_combout\ & \Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datac => \Add5~8_combout\,
	combout => \count_1KHz~4_combout\);

-- Location: FF_X31_Y3_N11
\count_1KHz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \count_1KHz~4_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(4));

-- Location: LCCOMB_X32_Y3_N10
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (count_1KHz(5) & (!\Add5~9\)) # (!count_1KHz(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!count_1KHz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: FF_X32_Y3_N11
\count_1KHz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add5~10_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(5));

-- Location: LCCOMB_X32_Y3_N12
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (count_1KHz(6) & (\Add5~11\ $ (GND))) # (!count_1KHz(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((count_1KHz(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X31_Y3_N20
\count_1KHz~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz~5_combout\ = (!\Equal7~4_combout\ & \Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datac => \Add5~12_combout\,
	combout => \count_1KHz~5_combout\);

-- Location: FF_X31_Y3_N21
\count_1KHz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \count_1KHz~5_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(6));

-- Location: LCCOMB_X32_Y3_N14
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (count_1KHz(7) & (!\Add5~13\)) # (!count_1KHz(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!count_1KHz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1KHz(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X32_Y3_N15
\count_1KHz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add5~14_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(7));

-- Location: LCCOMB_X32_Y3_N16
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (count_1KHz(8) & (\Add5~15\ $ (GND))) # (!count_1KHz(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((count_1KHz(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X31_Y3_N1
\count_1KHz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \Add5~16_combout\,
	sload => VCC,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(8));

-- Location: LCCOMB_X32_Y3_N18
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (count_1KHz(9) & (!\Add5~17\)) # (!count_1KHz(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!count_1KHz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1KHz(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X31_Y3_N24
\count_1KHz[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1KHz[9]~feeder_combout\ = \Add5~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add5~18_combout\,
	combout => \count_1KHz[9]~feeder_combout\);

-- Location: FF_X31_Y3_N25
\count_1KHz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \count_1KHz[9]~feeder_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(9));

-- Location: LCCOMB_X32_Y3_N20
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (count_1KHz(10) & (\Add5~19\ $ (GND))) # (!count_1KHz(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((count_1KHz(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1KHz(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X31_Y3_N7
\count_1KHz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \Add5~20_combout\,
	sload => VCC,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(10));

-- Location: LCCOMB_X32_Y3_N22
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (count_1KHz(11) & (!\Add5~21\)) # (!count_1KHz(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!count_1KHz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: FF_X31_Y3_N13
\count_1KHz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \Add5~22_combout\,
	sload => VCC,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(11));

-- Location: LCCOMB_X31_Y3_N12
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!count_1KHz(10) & (!count_1KHz(8) & (!count_1KHz(11) & !count_1KHz(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(10),
	datab => count_1KHz(8),
	datac => count_1KHz(11),
	datad => count_1KHz(9),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X31_Y3_N4
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (count_1KHz(1) & (count_1KHz(2) & (!count_1KHz(0) & !count_1KHz(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(1),
	datab => count_1KHz(2),
	datac => count_1KHz(0),
	datad => count_1KHz(3),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X32_Y3_N24
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (count_1KHz(12) & (\Add5~23\ $ (GND))) # (!count_1KHz(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((count_1KHz(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: FF_X31_Y3_N27
\count_1KHz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \Add5~24_combout\,
	sload => VCC,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(12));

-- Location: LCCOMB_X32_Y3_N26
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (count_1KHz(13) & (!\Add5~25\)) # (!count_1KHz(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!count_1KHz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: FF_X32_Y3_N27
\count_1KHz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add5~26_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(13));

-- Location: LCCOMB_X32_Y3_N28
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (count_1KHz(14) & (\Add5~27\ $ (GND))) # (!count_1KHz(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((count_1KHz(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1KHz(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: FF_X32_Y3_N29
\count_1KHz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add5~28_combout\,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(14));

-- Location: LCCOMB_X32_Y3_N30
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = \Add5~29\ $ (count_1KHz(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_1KHz(15),
	cin => \Add5~29\,
	combout => \Add5~30_combout\);

-- Location: FF_X31_Y3_N9
\count_1KHz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \Add5~30_combout\,
	sload => VCC,
	ena => \count_1KHz[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1KHz(15));

-- Location: LCCOMB_X31_Y3_N26
\Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!count_1KHz(15) & (!count_1KHz(13) & (!count_1KHz(12) & !count_1KHz(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(15),
	datab => count_1KHz(13),
	datac => count_1KHz(12),
	datad => count_1KHz(14),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X31_Y3_N2
\Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (count_1KHz(4) & (count_1KHz(6) & (!count_1KHz(7) & !count_1KHz(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1KHz(4),
	datab => count_1KHz(6),
	datac => count_1KHz(7),
	datad => count_1KHz(5),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X31_Y3_N22
\Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~2_combout\ & (\Equal7~0_combout\ & (\Equal7~3_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~3_combout\,
	datad => \Equal7~1_combout\,
	combout => \Equal7~4_combout\);

-- Location: IOIBUF_X14_Y0_N8
\offcycle[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offcycle(1),
	o => \offcycle[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\offcycle[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offcycle(3),
	o => \offcycle[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\offcycle[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offcycle(0),
	o => \offcycle[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\offcycle[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offcycle(2),
	o => \offcycle[2]~input_o\);

-- Location: LCCOMB_X28_Y3_N28
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\offcycle[1]~input_o\) # ((\offcycle[3]~input_o\) # ((\offcycle[0]~input_o\) # (\offcycle[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offcycle[1]~input_o\,
	datab => \offcycle[3]~input_o\,
	datac => \offcycle[0]~input_o\,
	datad => \offcycle[2]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: IOIBUF_X6_Y0_N1
\oncycle[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oncycle(0),
	o => \oncycle[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\oncycle[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oncycle(1),
	o => \oncycle[1]~input_o\);

-- Location: LCCOMB_X27_Y3_N8
\oncount~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount~6_combout\ = (!counter(1) & (!counter(2) & (!oncount(0) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => oncount(0),
	datad => counter(0),
	combout => \oncount~6_combout\);

-- Location: LCCOMB_X31_Y4_N18
\bit_count[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[6]~1_combout\ = (!\reset~input_o\ & \bit_count[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \bit_count[7]~0_combout\,
	combout => \bit_count[6]~1_combout\);

-- Location: LCCOMB_X32_Y4_N10
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (bit_count(3) & (!\Add6~5\)) # (!bit_count(3) & (\Add6~5\ & VCC))
-- \Add6~7\ = CARRY((bit_count(3) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X32_Y4_N12
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (bit_count(4) & ((GND) # (!\Add6~7\))) # (!bit_count(4) & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((bit_count(4)) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X30_Y4_N14
\bit_count[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[7]~2_combout\ = (!counter(1) & (counter(0) $ (counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \bit_count[7]~2_combout\);

-- Location: LCCOMB_X31_Y4_N16
\bit_count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[1]~3_combout\ = (\reset~input_o\) # ((\bit_count[7]~2_combout\ & ((\bit_count[7]~0_combout\) # (!\Equal10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[7]~2_combout\,
	datab => \bit_count[7]~0_combout\,
	datac => \reset~input_o\,
	datad => \Equal10~2_combout\,
	combout => \bit_count[1]~3_combout\);

-- Location: LCCOMB_X31_Y4_N22
\bit_count[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[4]~4_combout\ = (\bit_count[1]~3_combout\ & (\bit_count[6]~1_combout\ & (\Add6~8_combout\))) # (!\bit_count[1]~3_combout\ & (((bit_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[6]~1_combout\,
	datab => \Add6~8_combout\,
	datac => bit_count(4),
	datad => \bit_count[1]~3_combout\,
	combout => \bit_count[4]~4_combout\);

-- Location: FF_X31_Y4_N23
\bit_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(4));

-- Location: LCCOMB_X32_Y4_N14
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (bit_count(5) & (\Add6~9\ & VCC)) # (!bit_count(5) & (!\Add6~9\))
-- \Add6~11\ = CARRY((!bit_count(5) & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X31_Y4_N8
\bit_count[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[5]~5_combout\ = (\bit_count[1]~3_combout\ & (\bit_count[6]~1_combout\ & (\Add6~10_combout\))) # (!\bit_count[1]~3_combout\ & (((bit_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[6]~1_combout\,
	datab => \Add6~10_combout\,
	datac => bit_count(5),
	datad => \bit_count[1]~3_combout\,
	combout => \bit_count[5]~5_combout\);

-- Location: FF_X31_Y4_N9
\bit_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(5));

-- Location: LCCOMB_X32_Y4_N16
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (bit_count(6) & ((GND) # (!\Add6~11\))) # (!bit_count(6) & (\Add6~11\ $ (GND)))
-- \Add6~13\ = CARRY((bit_count(6)) # (!\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X31_Y4_N2
\bit_count[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[6]~6_combout\ = (\bit_count[1]~3_combout\ & (\bit_count[6]~1_combout\ & ((\Add6~12_combout\)))) # (!\bit_count[1]~3_combout\ & (((bit_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[6]~1_combout\,
	datab => \bit_count[1]~3_combout\,
	datac => bit_count(6),
	datad => \Add6~12_combout\,
	combout => \bit_count[6]~6_combout\);

-- Location: FF_X31_Y4_N3
\bit_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(6));

-- Location: LCCOMB_X32_Y4_N18
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = \Add6~13\ $ (!bit_count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_count(7),
	cin => \Add6~13\,
	combout => \Add6~14_combout\);

-- Location: LCCOMB_X31_Y4_N6
\bit_count[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[7]~7_combout\ = (\bit_count[7]~2_combout\ & (\bit_count[7]~0_combout\ & \Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[7]~2_combout\,
	datab => \bit_count[7]~0_combout\,
	datad => \Add6~14_combout\,
	combout => \bit_count[7]~7_combout\);

-- Location: LCCOMB_X31_Y4_N24
\bit_count[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[7]~8_combout\ = (\bit_count[7]~7_combout\) # ((bit_count(7) & ((\Equal10~2_combout\) # (!\bit_count[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[7]~2_combout\,
	datab => \Equal10~2_combout\,
	datac => bit_count(7),
	datad => \bit_count[7]~7_combout\,
	combout => \bit_count[7]~8_combout\);

-- Location: FF_X31_Y4_N25
\bit_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count[7]~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(7));

-- Location: LCCOMB_X31_Y4_N28
\bit_count[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[7]~0_combout\ = (!bit_count(4) & (!bit_count(7) & (!bit_count(5) & !bit_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(4),
	datab => bit_count(7),
	datac => bit_count(5),
	datad => bit_count(6),
	combout => \bit_count[7]~0_combout\);

-- Location: LCCOMB_X32_Y4_N4
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = bit_count(0) $ (GND)
-- \Add6~1\ = CARRY(!bit_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X31_Y4_N14
\bit_count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~10_combout\ = (\bit_count[7]~0_combout\ & (!\reset~input_o\ & !\Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_count[7]~0_combout\,
	datac => \reset~input_o\,
	datad => \Add6~0_combout\,
	combout => \bit_count~10_combout\);

-- Location: FF_X30_Y4_N17
\bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \bit_count~10_combout\,
	sload => VCC,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(0));

-- Location: LCCOMB_X32_Y4_N6
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (bit_count(1) & (!\Add6~1\)) # (!bit_count(1) & (\Add6~1\ & VCC))
-- \Add6~3\ = CARRY((bit_count(1) & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_count(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X30_Y4_N28
\bit_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~9_combout\ = (\bit_count[7]~0_combout\ & (!\reset~input_o\ & !\Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_count[7]~0_combout\,
	datac => \reset~input_o\,
	datad => \Add6~2_combout\,
	combout => \bit_count~9_combout\);

-- Location: FF_X30_Y4_N29
\bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count~9_combout\,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(1));

-- Location: LCCOMB_X32_Y4_N8
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (bit_count(2) & (\Add6~3\ $ (GND))) # (!bit_count(2) & ((GND) # (!\Add6~3\)))
-- \Add6~5\ = CARRY((!\Add6~3\) # (!bit_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X31_Y4_N0
\bit_count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~12_combout\ = (!\reset~input_o\ & (!\Add6~4_combout\ & \bit_count[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Add6~4_combout\,
	datad => \bit_count[7]~0_combout\,
	combout => \bit_count~12_combout\);

-- Location: FF_X31_Y4_N1
\bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count~12_combout\,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(2));

-- Location: LCCOMB_X31_Y4_N26
\bit_count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~11_combout\ = (!\reset~input_o\ & (!\Add6~6_combout\ & \bit_count[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Add6~6_combout\,
	datad => \bit_count[7]~0_combout\,
	combout => \bit_count~11_combout\);

-- Location: FF_X31_Y4_N27
\bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \bit_count~11_combout\,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(3));

-- Location: LCCOMB_X31_Y4_N30
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (bit_count(3)) # ((bit_count(2)) # ((bit_count(0)) # (bit_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(3),
	datab => bit_count(2),
	datac => bit_count(0),
	datad => bit_count(1),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X31_Y4_N12
\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (((!bit_count(7)) # (!bit_count(5))) # (!bit_count(6))) # (!bit_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(4),
	datab => bit_count(6),
	datac => bit_count(5),
	datad => bit_count(7),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X31_Y3_N0
\Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (\Equal10~0_combout\) # (\Equal10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X31_Y3_N16
\oncount[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount[3]~4_combout\ = (\Equal0~0_combout\ & (!\Equal0~2_combout\ & (!\Equal10~2_combout\ & \process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal10~2_combout\,
	datad => \process_1~4_combout\,
	combout => \oncount[3]~4_combout\);

-- Location: LCCOMB_X34_Y3_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = point_count(0) $ (VCC)
-- \Add0~1\ = CARRY(point_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X34_Y3_N24
\point_count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count[0]~1_combout\ = (!\reset~input_o\ & (\Equal0~2_combout\ & \Equal7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Equal0~2_combout\,
	datad => \Equal7~4_combout\,
	combout => \point_count[0]~1_combout\);

-- Location: FF_X34_Y3_N7
\point_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(0));

-- Location: LCCOMB_X34_Y3_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (point_count(1) & (!\Add0~1\)) # (!point_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!point_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => point_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X34_Y3_N9
\point_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(1));

-- Location: LCCOMB_X34_Y3_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (point_count(2) & (\Add0~3\ $ (GND))) # (!point_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((point_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X34_Y3_N11
\point_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(2));

-- Location: LCCOMB_X34_Y3_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (point_count(3) & (!\Add0~5\)) # (!point_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!point_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y3_N28
\point_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count~3_combout\ = (\Add0~6_combout\ & !\point_count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \point_count~0_combout\,
	combout => \point_count~3_combout\);

-- Location: FF_X34_Y3_N29
\point_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \point_count~3_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(3));

-- Location: LCCOMB_X34_Y3_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (point_count(4) & (\Add0~7\ $ (GND))) # (!point_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((point_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => point_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X34_Y3_N30
\point_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count~2_combout\ = (!\point_count~0_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \point_count~0_combout\,
	datac => \Add0~8_combout\,
	combout => \point_count~2_combout\);

-- Location: FF_X34_Y3_N31
\point_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \point_count~2_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(4));

-- Location: LCCOMB_X34_Y3_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (point_count(5) & (!\Add0~9\)) # (!point_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!point_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X34_Y3_N17
\point_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(5));

-- Location: LCCOMB_X34_Y3_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (point_count(6) & (\Add0~11\ $ (GND))) # (!point_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((point_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => point_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X34_Y3_N19
\point_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(6));

-- Location: LCCOMB_X34_Y3_N20
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = point_count(7) $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => point_count(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: FF_X34_Y3_N21
\point_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \point_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count(7));

-- Location: LCCOMB_X34_Y3_N4
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!point_count(5) & (!point_count(6) & !point_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => point_count(5),
	datac => point_count(6),
	datad => point_count(7),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X34_Y3_N0
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (point_count(0) & (point_count(1) & point_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count(0),
	datac => point_count(1),
	datad => point_count(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X34_Y3_N22
\point_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count~0_combout\ = (point_count(4) & (!point_count(3) & (\Equal2~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count(4),
	datab => point_count(3),
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \point_count~0_combout\);

-- Location: LCCOMB_X31_Y3_N8
\oncount[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount[3]~3_combout\ = (\Equal7~4_combout\ & (\Equal0~2_combout\ & \point_count~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datab => \Equal0~2_combout\,
	datad => \point_count~0_combout\,
	combout => \oncount[3]~3_combout\);

-- Location: LCCOMB_X31_Y3_N6
\oncount[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount[3]~5_combout\ = (!\reset~input_o\ & ((\oncount[3]~4_combout\) # (\oncount[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \oncount[3]~4_combout\,
	datad => \oncount[3]~3_combout\,
	combout => \oncount[3]~5_combout\);

-- Location: FF_X27_Y3_N9
\oncount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \oncount~6_combout\,
	ena => \oncount[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => oncount(0));

-- Location: LCCOMB_X27_Y3_N18
\oncount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount~2_combout\ = (\Equal0~2_combout\ & (oncount(0) $ (oncount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => oncount(0),
	datac => oncount(1),
	datad => \Equal0~2_combout\,
	combout => \oncount~2_combout\);

-- Location: FF_X27_Y3_N19
\oncount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \oncount~2_combout\,
	ena => \oncount[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => oncount(1));

-- Location: LCCOMB_X27_Y3_N22
\process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\oncycle[0]~input_o\ & (oncount(0) & (\oncycle[1]~input_o\ $ (!oncount(1))))) # (!\oncycle[0]~input_o\ & (!oncount(0) & (\oncycle[1]~input_o\ $ (!oncount(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oncycle[0]~input_o\,
	datab => \oncycle[1]~input_o\,
	datac => oncount(0),
	datad => oncount(1),
	combout => \process_1~2_combout\);

-- Location: IOIBUF_X6_Y0_N29
\oncycle[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oncycle(2),
	o => \oncycle[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\oncycle[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oncycle(3),
	o => \oncycle[3]~input_o\);

-- Location: LCCOMB_X27_Y3_N26
\oncount~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount~8_combout\ = (\Equal0~2_combout\ & (oncount(2) $ (((oncount(1) & oncount(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => oncount(1),
	datab => oncount(0),
	datac => oncount(2),
	datad => \Equal0~2_combout\,
	combout => \oncount~8_combout\);

-- Location: FF_X27_Y3_N27
\oncount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \oncount~8_combout\,
	ena => \oncount[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => oncount(2));

-- Location: LCCOMB_X27_Y3_N28
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (oncount(0) & oncount(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => oncount(0),
	datad => oncount(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X27_Y3_N24
\oncount~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oncount~7_combout\ = (\Equal0~2_combout\ & (oncount(3) $ (((oncount(2) & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => oncount(2),
	datab => \Add2~0_combout\,
	datac => oncount(3),
	datad => \Equal0~2_combout\,
	combout => \oncount~7_combout\);

-- Location: FF_X27_Y3_N25
\oncount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \oncount~7_combout\,
	ena => \oncount[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => oncount(3));

-- Location: LCCOMB_X27_Y3_N16
\process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\oncycle[2]~input_o\ & (oncount(2) & (\oncycle[3]~input_o\ $ (!oncount(3))))) # (!\oncycle[2]~input_o\ & (!oncount(2) & (\oncycle[3]~input_o\ $ (!oncount(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oncycle[2]~input_o\,
	datab => \oncycle[3]~input_o\,
	datac => oncount(2),
	datad => oncount(3),
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X27_Y3_N10
\process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\LessThan2~0_combout\ & (\process_1~2_combout\ & \process_1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \process_1~2_combout\,
	datad => \process_1~3_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X31_Y3_N18
\counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (\Equal0~0_combout\ & (!\process_1~4_combout\ & (!\Equal10~0_combout\ & !\Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \process_1~4_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \counter~18_combout\);

-- Location: LCCOMB_X27_Y3_N20
\LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\oncycle[0]~input_o\) # ((\oncycle[3]~input_o\) # ((\oncycle[2]~input_o\) # (\oncycle[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oncycle[0]~input_o\,
	datab => \oncycle[3]~input_o\,
	datac => \oncycle[2]~input_o\,
	datad => \oncycle[1]~input_o\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X29_Y3_N12
\offcount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount~3_combout\ = (!counter(2) & (counter(1) & (!offcount(0) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => offcount(0),
	datad => counter(0),
	combout => \offcount~3_combout\);

-- Location: LCCOMB_X29_Y3_N30
\offcount[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount[3]~4_combout\ = (!\reset~input_o\ & (!\Equal0~2_combout\ & ((\LessThan7~0_combout\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \reset~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \offcount[3]~4_combout\);

-- Location: LCCOMB_X30_Y3_N24
\offcount[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount[3]~2_combout\ = (counter(2)) # (counter(1) $ (!counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \offcount[3]~2_combout\);

-- Location: LCCOMB_X28_Y4_N12
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = point_count1(0) $ (VCC)
-- \Add3~1\ = CARRY(point_count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count1(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X28_Y4_N2
\point_count1[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count1[0]~1_combout\ = (!\Equal0~2_combout\ & (!\reset~input_o\ & (\Equal0~1_combout\ & \Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \reset~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Equal7~4_combout\,
	combout => \point_count1[0]~1_combout\);

-- Location: FF_X28_Y4_N13
\point_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add3~0_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(0));

-- Location: LCCOMB_X28_Y4_N14
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (point_count1(1) & (!\Add3~1\)) # (!point_count1(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!point_count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count1(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X28_Y4_N15
\point_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add3~2_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(1));

-- Location: LCCOMB_X28_Y4_N16
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (point_count1(2) & (\Add3~3\ $ (GND))) # (!point_count1(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((point_count1(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count1(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X28_Y4_N17
\point_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add3~4_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(2));

-- Location: LCCOMB_X28_Y4_N18
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (point_count1(3) & (!\Add3~5\)) # (!point_count1(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!point_count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => point_count1(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X28_Y4_N30
\point_count1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count1~2_combout\ = (!\offcount[3]~5_combout\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \offcount[3]~5_combout\,
	datad => \Add3~6_combout\,
	combout => \point_count1~2_combout\);

-- Location: FF_X28_Y4_N31
\point_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \point_count1~2_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(3));

-- Location: LCCOMB_X28_Y4_N20
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (point_count1(4) & (\Add3~7\ $ (GND))) # (!point_count1(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((point_count1(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count1(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X28_Y4_N8
\point_count1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \point_count1~0_combout\ = (\Add3~8_combout\ & !\offcount[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~8_combout\,
	datad => \offcount[3]~5_combout\,
	combout => \point_count1~0_combout\);

-- Location: FF_X28_Y4_N9
\point_count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \point_count1~0_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(4));

-- Location: LCCOMB_X28_Y4_N22
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (point_count1(5) & (!\Add3~9\)) # (!point_count1(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!point_count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count1(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X28_Y4_N23
\point_count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add3~10_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(5));

-- Location: LCCOMB_X28_Y4_N24
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (point_count1(6) & (\Add3~11\ $ (GND))) # (!point_count1(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((point_count1(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => point_count1(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X28_Y4_N25
\point_count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add3~12_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(6));

-- Location: LCCOMB_X28_Y4_N26
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add3~13\ $ (point_count1(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => point_count1(7),
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: FF_X28_Y4_N27
\point_count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add3~14_combout\,
	ena => \point_count1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point_count1(7));

-- Location: LCCOMB_X28_Y4_N4
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!point_count1(7) & (!point_count1(5) & !point_count1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count1(7),
	datac => point_count1(5),
	datad => point_count1(6),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X28_Y4_N6
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (point_count1(0) & (point_count1(1) & point_count1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count1(0),
	datac => point_count1(1),
	datad => point_count1(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\offcount[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount[3]~5_combout\ = (!point_count1(3) & (point_count1(4) & (\Equal8~0_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count1(3),
	datab => point_count1(4),
	datac => \Equal8~0_combout\,
	datad => \LessThan4~0_combout\,
	combout => \offcount[3]~5_combout\);

-- Location: LCCOMB_X29_Y3_N4
\offcount[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount[3]~6_combout\ = (\Equal0~1_combout\ & (((\offcount[3]~5_combout\ & \Equal7~4_combout\)))) # (!\Equal0~1_combout\ & (\process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \process_1~1_combout\,
	datac => \offcount[3]~5_combout\,
	datad => \Equal7~4_combout\,
	combout => \offcount[3]~6_combout\);

-- Location: LCCOMB_X28_Y3_N30
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\offcycle[1]~input_o\ & (offcount(1) & (\offcycle[0]~input_o\ $ (!offcount(0))))) # (!\offcycle[1]~input_o\ & (!offcount(1) & (\offcycle[0]~input_o\ $ (!offcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offcycle[1]~input_o\,
	datab => \offcycle[0]~input_o\,
	datac => offcount(0),
	datad => offcount(1),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X28_Y3_N16
\counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~3_combout\ = (!counter(0) & (counter(2) & !counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \counter[2]~3_combout\);

-- Location: LCCOMB_X29_Y3_N6
\offcount[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount[3]~7_combout\ = (\Equal0~1_combout\) # ((\process_1~0_combout\ & (\counter[2]~3_combout\ & !\Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \process_1~0_combout\,
	datac => \counter[2]~3_combout\,
	datad => \Equal10~2_combout\,
	combout => \offcount[3]~7_combout\);

-- Location: LCCOMB_X29_Y3_N24
\offcount[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount[3]~8_combout\ = (\offcount[3]~4_combout\ & (\offcount[3]~2_combout\ & (\offcount[3]~6_combout\ & \offcount[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offcount[3]~4_combout\,
	datab => \offcount[3]~2_combout\,
	datac => \offcount[3]~6_combout\,
	datad => \offcount[3]~7_combout\,
	combout => \offcount[3]~8_combout\);

-- Location: FF_X29_Y3_N13
\offcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \offcount~3_combout\,
	ena => \offcount[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => offcount(0));

-- Location: LCCOMB_X29_Y3_N26
\offcount~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount~9_combout\ = (\Equal0~1_combout\ & (offcount(1) $ (offcount(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => offcount(1),
	datad => offcount(0),
	combout => \offcount~9_combout\);

-- Location: FF_X29_Y3_N27
\offcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \offcount~9_combout\,
	ena => \offcount[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => offcount(1));

-- Location: LCCOMB_X29_Y3_N16
\offcount~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount~11_combout\ = (\Equal0~1_combout\ & (offcount(2) $ (((offcount(1) & offcount(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => offcount(1),
	datac => offcount(2),
	datad => offcount(0),
	combout => \offcount~11_combout\);

-- Location: FF_X29_Y3_N17
\offcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \offcount~11_combout\,
	ena => \offcount[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => offcount(2));

-- Location: LCCOMB_X29_Y3_N18
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (offcount(1) & offcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => offcount(1),
	datad => offcount(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X29_Y3_N14
\offcount~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \offcount~10_combout\ = (\Equal0~1_combout\ & (offcount(3) $ (((offcount(2) & \Add4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => offcount(2),
	datac => offcount(3),
	datad => \Add4~0_combout\,
	combout => \offcount~10_combout\);

-- Location: FF_X29_Y3_N15
\offcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \offcount~10_combout\,
	ena => \offcount[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => offcount(3));

-- Location: LCCOMB_X28_Y3_N24
\process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\offcycle[2]~input_o\ & (offcount(2) & (\offcycle[3]~input_o\ $ (!offcount(3))))) # (!\offcycle[2]~input_o\ & (!offcount(2) & (\offcycle[3]~input_o\ $ (!offcount(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offcycle[2]~input_o\,
	datab => \offcycle[3]~input_o\,
	datac => offcount(3),
	datad => offcount(2),
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X28_Y3_N10
\counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = ((\LessThan7~0_combout\ & (\process_1~1_combout\ & \process_1~0_combout\))) # (!\counter[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \process_1~1_combout\,
	datac => \process_1~0_combout\,
	datad => \counter[2]~3_combout\,
	combout => \counter~5_combout\);

-- Location: LCCOMB_X30_Y3_N4
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (!counter(1) & (counter(0) & counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \counter~2_combout\);

-- Location: LCCOMB_X30_Y3_N2
\counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\counter~2_combout\) # ((!\Equal10~1_combout\ & (!\Equal10~0_combout\ & \counter[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal10~0_combout\,
	datac => \counter~2_combout\,
	datad => \counter[2]~3_combout\,
	combout => \counter~4_combout\);

-- Location: LCCOMB_X30_Y3_N28
\counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (counter(2) & ((counter(1)) # ((\counter~5_combout\ & \counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => \counter~5_combout\,
	datad => \counter~4_combout\,
	combout => \counter~6_combout\);

-- Location: LCCOMB_X30_Y3_N16
\counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\counter~18_combout\) # ((\counter~6_combout\) # ((\Equal0~1_combout\ & !\Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal7~4_combout\,
	datac => \counter~18_combout\,
	datad => \counter~6_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X30_Y3_N17
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \counter~7_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X29_Y3_N20
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(0) & (!counter(2) & !counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y3_N4
\counter[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~9_combout\ = (\Equal0~0_combout\ & (\process_1~2_combout\ & (\process_1~3_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \process_1~2_combout\,
	datac => \process_1~3_combout\,
	datad => \LessThan2~0_combout\,
	combout => \counter[0]~9_combout\);

-- Location: LCCOMB_X28_Y3_N12
\counter[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~15_combout\ = (counter(0) & ((counter(2) & ((!\counter~5_combout\))) # (!counter(2) & (counter(1))))) # (!counter(0) & (((!\counter~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => \counter~5_combout\,
	combout => \counter[2]~15_combout\);

-- Location: LCCOMB_X28_Y3_N6
\counter[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~16_combout\ = (!\reset~input_o\ & (!\Equal0~2_combout\ & ((\counter[0]~9_combout\) # (\counter[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~2_combout\,
	datac => \counter[0]~9_combout\,
	datad => \counter[2]~15_combout\,
	combout => \counter[2]~16_combout\);

-- Location: LCCOMB_X30_Y3_N14
\counter[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~12_combout\ = (\Equal0~1_combout\ & (((!\Equal7~4_combout\)))) # (!\Equal0~1_combout\ & (!\Equal0~2_combout\ & ((!\counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal7~4_combout\,
	datac => \Equal0~1_combout\,
	datad => \counter~4_combout\,
	combout => \counter[2]~12_combout\);

-- Location: LCCOMB_X30_Y3_N20
\counter[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~11_combout\ = (\Equal0~0_combout\ & ((\Equal10~2_combout\) # ((\Equal0~2_combout\ & !\Equal7~4_combout\)))) # (!\Equal0~0_combout\ & (\Equal0~2_combout\ & ((!\Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal10~2_combout\,
	datad => \Equal7~4_combout\,
	combout => \counter[2]~11_combout\);

-- Location: LCCOMB_X30_Y3_N6
\counter[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~13_combout\ = (!\reset~input_o\ & ((\counter[2]~11_combout\) # ((\offcount[3]~2_combout\ & \counter[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \offcount[3]~2_combout\,
	datac => \counter[2]~12_combout\,
	datad => \counter[2]~11_combout\,
	combout => \counter[2]~13_combout\);

-- Location: LCCOMB_X29_Y3_N22
\counter[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~17_combout\ = (\counter[2]~13_combout\ & ((counter(2)))) # (!\counter[2]~13_combout\ & (\counter[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[2]~16_combout\,
	datac => counter(2),
	datad => \counter[2]~13_combout\,
	combout => \counter[2]~17_combout\);

-- Location: FF_X29_Y3_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \counter[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X29_Y3_N2
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(0) & (!counter(2) & !counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y3_N18
\counter[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~8_combout\ = (counter(1) & (((counter(2)) # (!\counter~5_combout\)))) # (!counter(1) & ((counter(0) & (counter(2))) # (!counter(0) & ((!\counter~5_combout\) # (!counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => \counter~5_combout\,
	combout => \counter[0]~8_combout\);

-- Location: LCCOMB_X28_Y3_N14
\counter[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~10_combout\ = (!\reset~input_o\ & ((\Equal0~2_combout\) # ((\counter[0]~9_combout\) # (\counter[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~2_combout\,
	datac => \counter[0]~9_combout\,
	datad => \counter[0]~8_combout\,
	combout => \counter[0]~10_combout\);

-- Location: LCCOMB_X29_Y3_N28
\counter[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~14_combout\ = (\counter[2]~13_combout\ & ((counter(0)))) # (!\counter[2]~13_combout\ & (\counter[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~10_combout\,
	datac => counter(0),
	datad => \counter[2]~13_combout\,
	combout => \counter[0]~14_combout\);

-- Location: FF_X29_Y3_N29
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X28_Y4_N0
\op_bit[12]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit[12]~21_combout\ = (op_bit(12)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => op_bit(12),
	datad => \reset~input_o\,
	combout => \op_bit[12]~21_combout\);

-- Location: FF_X28_Y4_N1
\op_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(12));

-- Location: LCCOMB_X29_Y4_N20
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (op_bit(12) & bit_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => op_bit(12),
	datad => bit_count(1),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X33_Y3_N22
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (phase(1) & (!\Add1~1\)) # (!phase(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => phase(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X33_Y3_N24
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (phase(2) & (\Add1~4\ $ (GND))) # (!phase(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((phase(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => phase(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X33_Y3_N0
\phase~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase~2_combout\ = (\phase[0]~0_combout\ & (((\Add1~6_combout\)))) # (!\phase[0]~0_combout\ & ((\reset~input_o\) # ((\point_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \point_count~0_combout\,
	datac => \phase[0]~0_combout\,
	datad => \Add1~6_combout\,
	combout => \phase~2_combout\);

-- Location: LCCOMB_X33_Y3_N4
\phase[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase[0]~1_combout\ = (\reset~input_o\) # ((\Equal0~2_combout\ & \Equal7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~2_combout\,
	datac => \Equal7~4_combout\,
	combout => \phase[0]~1_combout\);

-- Location: FF_X33_Y3_N1
\phase[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \phase~2_combout\,
	ena => \phase[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase(2));

-- Location: LCCOMB_X33_Y3_N26
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (phase(3) & (!\Add1~7\)) # (!phase(3) & ((\Add1~7\) # (GND)))
-- \Add1~9\ = CARRY((!\Add1~7\) # (!phase(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => phase(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X33_Y3_N2
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~8_combout\ & \phase[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datac => \phase[0]~0_combout\,
	combout => \Add1~10_combout\);

-- Location: FF_X33_Y3_N3
\phase[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \phase[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase(3));

-- Location: LCCOMB_X33_Y3_N28
\Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = phase(4) $ (!\Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	cin => \Add1~9\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X33_Y3_N16
\Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (\phase[0]~0_combout\ & \Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phase[0]~0_combout\,
	datad => \Add1~11_combout\,
	combout => \Add1~13_combout\);

-- Location: FF_X33_Y3_N17
\phase[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add1~13_combout\,
	ena => \phase[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase(4));

-- Location: LCCOMB_X33_Y3_N8
\POINT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~5_combout\ = (phase(0) & (phase(1) & (!phase(3) & phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(0),
	datab => phase(1),
	datac => phase(3),
	datad => phase(2),
	combout => \POINT~5_combout\);

-- Location: LCCOMB_X33_Y3_N14
\phase[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase[0]~0_combout\ = (!\point_count~0_combout\ & (!\reset~input_o\ & ((!\POINT~5_combout\) # (!phase(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \point_count~0_combout\,
	datac => \POINT~5_combout\,
	datad => \reset~input_o\,
	combout => \phase[0]~0_combout\);

-- Location: LCCOMB_X33_Y3_N20
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = phase(0) $ (VCC)
-- \Add1~1\ = CARRY(phase(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X33_Y3_N12
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\phase[0]~0_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phase[0]~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X33_Y3_N13
\phase[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \phase[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase(0));

-- Location: LCCOMB_X33_Y3_N18
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~3_combout\ & \phase[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datac => \phase[0]~0_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X33_Y3_N19
\phase[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Add1~5_combout\,
	ena => \phase[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase(1));

-- Location: LCCOMB_X30_Y3_N12
\POINT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~0_combout\ = (!phase(3) & (phase(2) & (phase(1) $ (phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(0),
	datad => phase(2),
	combout => \POINT~0_combout\);

-- Location: LCCOMB_X30_Y3_N22
\POINT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~1_combout\ = (phase(1) & (!phase(3))) # (!phase(1) & ((phase(2)) # ((phase(3) & !phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(0),
	datad => phase(2),
	combout => \POINT~1_combout\);

-- Location: LCCOMB_X30_Y3_N10
\op_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~0_combout\ = (\Equal0~2_combout\ & ((phase(4) & (\POINT~0_combout\)) # (!phase(4) & ((\POINT~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POINT~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \POINT~1_combout\,
	datad => phase(4),
	combout => \op_bit~0_combout\);

-- Location: LCCOMB_X34_Y3_N2
\op_bit~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~3_combout\ = (\Equal2~0_combout\ & ((!point_count(4)) # (!point_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => point_count(3),
	datac => point_count(4),
	datad => \Equal2~0_combout\,
	combout => \op_bit~3_combout\);

-- Location: LCCOMB_X29_Y3_N8
\op_bit[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit[5]~1_combout\ = (!\Equal0~2_combout\ & (((point_count1(3) & point_count1(4))) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => point_count1(3),
	datab => \Equal0~2_combout\,
	datac => point_count1(4),
	datad => \Equal8~0_combout\,
	combout => \op_bit[5]~1_combout\);

-- Location: LCCOMB_X29_Y3_N10
\op_bit[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit[11]~2_combout\ = (counter(2)) # ((\reset~input_o\) # ((\op_bit[5]~1_combout\) # (!\Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \reset~input_o\,
	datac => \op_bit[5]~1_combout\,
	datad => \Equal7~4_combout\,
	combout => \op_bit[11]~2_combout\);

-- Location: LCCOMB_X29_Y3_N0
\op_bit[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit[11]~4_combout\ = (!\op_bit[11]~2_combout\ & ((counter(1) & (counter(0))) # (!counter(1) & (!counter(0) & \op_bit~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => \op_bit~3_combout\,
	datad => \op_bit[11]~2_combout\,
	combout => \op_bit[11]~4_combout\);

-- Location: FF_X30_Y3_N11
\op_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~0_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(10));

-- Location: LCCOMB_X30_Y3_N18
\op_bit~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~9_combout\ = (!phase(4) & ((!phase(2)) # (!phase(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => phase(3),
	datad => phase(2),
	combout => \op_bit~9_combout\);

-- Location: LCCOMB_X30_Y3_N26
\op_bit~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~10_combout\ = ((\POINT~5_combout\) # (\op_bit~9_combout\)) # (!\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \POINT~5_combout\,
	datad => \op_bit~9_combout\,
	combout => \op_bit~10_combout\);

-- Location: FF_X30_Y3_N27
\op_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~10_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(11));

-- Location: LCCOMB_X32_Y4_N22
\POINT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~2_combout\ = (phase(1) & ((phase(3) & ((phase(0)))) # (!phase(3) & (!phase(2) & !phase(0))))) # (!phase(1) & (phase(3) & ((phase(2)) # (!phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~2_combout\);

-- Location: LCCOMB_X32_Y4_N28
\op_bit~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~5_combout\ = (!phase(0) & phase(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(0),
	datad => phase(4),
	combout => \op_bit~5_combout\);

-- Location: LCCOMB_X31_Y4_N4
\op_bit~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~6_combout\ = (phase(2) & (!phase(3) & (!phase(1) & \op_bit~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(2),
	datab => phase(3),
	datac => phase(1),
	datad => \op_bit~5_combout\,
	combout => \op_bit~6_combout\);

-- Location: LCCOMB_X30_Y4_N30
\op_bit~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~7_combout\ = (\Equal0~2_combout\ & ((\op_bit~6_combout\) # ((!phase(4) & !\POINT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \Equal0~2_combout\,
	datac => \POINT~2_combout\,
	datad => \op_bit~6_combout\,
	combout => \op_bit~7_combout\);

-- Location: FF_X30_Y4_N31
\op_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~7_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(9));

-- Location: LCCOMB_X30_Y3_N8
\POINT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~3_combout\ = (phase(1) & (!phase(3) & (phase(0) $ (phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(0),
	datad => phase(2),
	combout => \POINT~3_combout\);

-- Location: LCCOMB_X33_Y3_N30
\POINT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~4_combout\ = (phase(0) & (phase(1) $ (((!phase(2)) # (!phase(3)))))) # (!phase(0) & ((phase(1) & (!phase(3))) # (!phase(1) & ((phase(3)) # (phase(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(0),
	datab => phase(1),
	datac => phase(3),
	datad => phase(2),
	combout => \POINT~4_combout\);

-- Location: LCCOMB_X30_Y3_N0
\op_bit~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~8_combout\ = (\Equal0~2_combout\ & ((phase(4) & (\POINT~3_combout\)) # (!phase(4) & ((\POINT~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \Equal0~2_combout\,
	datac => \POINT~3_combout\,
	datad => \POINT~4_combout\,
	combout => \op_bit~8_combout\);

-- Location: FF_X30_Y3_N1
\op_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~8_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(8));

-- Location: LCCOMB_X30_Y4_N18
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bit_count(1) & ((bit_count(0) & ((op_bit(8)))) # (!bit_count(0) & (op_bit(9))))) # (!bit_count(1) & (((!bit_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(9),
	datab => bit_count(1),
	datac => bit_count(0),
	datad => op_bit(8),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X29_Y4_N30
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (bit_count(1) & (((\Mux0~0_combout\)))) # (!bit_count(1) & ((\Mux0~0_combout\ & ((op_bit(11)))) # (!\Mux0~0_combout\ & (op_bit(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(10),
	datab => bit_count(1),
	datac => op_bit(11),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y4_N10
\op_bit~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~14_combout\ = (phase(2) & (!phase(3) & (phase(1) & \op_bit~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(2),
	datab => phase(3),
	datac => phase(1),
	datad => \op_bit~5_combout\,
	combout => \op_bit~14_combout\);

-- Location: LCCOMB_X29_Y4_N24
\POINT~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~8_combout\ = (phase(3) & (!phase(1) & ((!phase(0)) # (!phase(2))))) # (!phase(3) & ((phase(1)) # ((phase(2)) # (phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(3),
	datab => phase(1),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~8_combout\);

-- Location: LCCOMB_X30_Y4_N8
\op_bit~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~15_combout\ = (\Equal0~2_combout\ & ((\op_bit~14_combout\) # ((!phase(4) & \POINT~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \Equal0~2_combout\,
	datac => \op_bit~14_combout\,
	datad => \POINT~8_combout\,
	combout => \op_bit~15_combout\);

-- Location: FF_X30_Y4_N9
\op_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~15_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(5));

-- Location: LCCOMB_X29_Y4_N26
\POINT~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~6_combout\ = (!phase(3) & ((phase(1) & (!phase(2) & phase(0))) # (!phase(1) & (phase(2) & !phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(3),
	datab => phase(1),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~6_combout\);

-- Location: LCCOMB_X32_Y4_N0
\POINT~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~7_combout\ = (phase(3) & (phase(1) $ (((phase(2)) # (!phase(0)))))) # (!phase(3) & (phase(1) & ((phase(0)) # (!phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~7_combout\);

-- Location: LCCOMB_X30_Y4_N0
\op_bit~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~11_combout\ = (\Equal0~2_combout\ & ((phase(4) & (\POINT~6_combout\)) # (!phase(4) & ((!\POINT~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \Equal0~2_combout\,
	datac => \POINT~6_combout\,
	datad => \POINT~7_combout\,
	combout => \op_bit~11_combout\);

-- Location: FF_X30_Y4_N1
\op_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~11_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(4));

-- Location: LCCOMB_X32_Y4_N26
\op_bit~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~12_combout\ = (phase(3) & ((phase(2) & ((!phase(0)))) # (!phase(2) & (!phase(1) & phase(0))))) # (!phase(3) & (((phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(2),
	datad => phase(0),
	combout => \op_bit~12_combout\);

-- Location: LCCOMB_X31_Y4_N20
\op_bit~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~13_combout\ = (\Equal0~2_combout\ & ((phase(4) & (!phase(3) & !\op_bit~12_combout\)) # (!phase(4) & ((\op_bit~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => phase(3),
	datac => \Equal0~2_combout\,
	datad => \op_bit~12_combout\,
	combout => \op_bit~13_combout\);

-- Location: FF_X30_Y4_N11
\op_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	asdata => \op_bit~13_combout\,
	sload => VCC,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(6));

-- Location: LCCOMB_X30_Y4_N10
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (bit_count(0) & ((bit_count(1) & (op_bit(4))) # (!bit_count(1) & ((op_bit(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(4),
	datab => bit_count(0),
	datac => op_bit(6),
	datad => bit_count(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X30_Y4_N22
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\) # ((!bit_count(0) & op_bit(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_count(0),
	datac => op_bit(5),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X32_Y4_N24
\POINT~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~9_combout\ = (phase(1) & (phase(3) $ (((phase(0)) # (!phase(2)))))) # (!phase(1) & ((phase(3) & (!phase(2))) # (!phase(3) & ((phase(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~9_combout\);

-- Location: LCCOMB_X30_Y4_N12
\op_bit~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~16_combout\ = (\Equal0~2_combout\ & ((\op_bit~6_combout\) # ((!phase(4) & \POINT~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \Equal0~2_combout\,
	datac => \POINT~9_combout\,
	datad => \op_bit~6_combout\,
	combout => \op_bit~16_combout\);

-- Location: FF_X30_Y4_N13
\op_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~16_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(1));

-- Location: LCCOMB_X32_Y4_N20
\POINT~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~13_combout\ = (phase(3) & (!phase(1) & (phase(2) $ (phase(0))))) # (!phase(3) & (((phase(2)) # (phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~13_combout\);

-- Location: LCCOMB_X30_Y4_N20
\op_bit~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~20_combout\ = (\Equal0~2_combout\ & ((\op_bit~14_combout\) # ((!phase(4) & \POINT~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \Equal0~2_combout\,
	datac => \op_bit~14_combout\,
	datad => \POINT~13_combout\,
	combout => \op_bit~20_combout\);

-- Location: FF_X30_Y4_N21
\op_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~20_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(3));

-- Location: LCCOMB_X29_Y4_N22
\POINT~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~10_combout\ = (phase(3) & ((phase(2) & ((!phase(0)))) # (!phase(2) & (!phase(1))))) # (!phase(3) & ((phase(0)) # ((phase(1) & !phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(3),
	datab => phase(1),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~10_combout\);

-- Location: LCCOMB_X30_Y4_N16
\op_bit~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~17_combout\ = (!phase(0) & (!phase(3) & phase(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(0),
	datab => phase(3),
	datad => phase(4),
	combout => \op_bit~17_combout\);

-- Location: LCCOMB_X30_Y4_N26
\op_bit~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~18_combout\ = (\Equal0~2_combout\ & ((\op_bit~17_combout\) # ((!phase(4) & \POINT~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \POINT~10_combout\,
	datac => \Equal0~2_combout\,
	datad => \op_bit~17_combout\,
	combout => \op_bit~18_combout\);

-- Location: FF_X30_Y4_N27
\op_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~18_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(2));

-- Location: LCCOMB_X32_Y4_N30
\POINT~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~11_combout\ = (phase(0) & (phase(1) $ (((phase(3) & phase(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(1),
	datab => phase(3),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~11_combout\);

-- Location: LCCOMB_X29_Y4_N12
\POINT~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POINT~12_combout\ = (phase(3)) # ((phase(0) & ((phase(2)) # (!phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(3),
	datab => phase(1),
	datac => phase(2),
	datad => phase(0),
	combout => \POINT~12_combout\);

-- Location: LCCOMB_X30_Y4_N4
\op_bit~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit~19_combout\ = (\Equal0~2_combout\ & ((phase(4) & ((!\POINT~12_combout\))) # (!phase(4) & (!\POINT~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase(4),
	datab => \POINT~11_combout\,
	datac => \Equal0~2_combout\,
	datad => \POINT~12_combout\,
	combout => \op_bit~19_combout\);

-- Location: FF_X30_Y4_N5
\op_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \op_bit~19_combout\,
	ena => \op_bit[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(0));

-- Location: LCCOMB_X30_Y4_N2
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (bit_count(0) & ((bit_count(1) & ((op_bit(0)))) # (!bit_count(1) & (op_bit(2))))) # (!bit_count(0) & (((!bit_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(2),
	datab => bit_count(0),
	datac => op_bit(0),
	datad => bit_count(1),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X30_Y4_N6
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (bit_count(0) & (((\Mux0~4_combout\)))) # (!bit_count(0) & ((\Mux0~4_combout\ & ((op_bit(3)))) # (!\Mux0~4_combout\ & (op_bit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(1),
	datab => op_bit(3),
	datac => bit_count(0),
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X30_Y4_N24
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (bit_count(3) & ((bit_count(2) & ((\Mux0~5_combout\))) # (!bit_count(2) & (\Mux0~3_combout\)))) # (!bit_count(3) & (!bit_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(3),
	datab => bit_count(2),
	datac => \Mux0~3_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X29_Y4_N6
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (bit_count(3) & (((\Mux0~6_combout\)))) # (!bit_count(3) & ((\Mux0~6_combout\ & (\Mux0~7_combout\)) # (!\Mux0~6_combout\ & ((\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(3),
	datab => \Mux0~7_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X29_Y4_N2
\Dout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout~2_combout\ = (\bit_count[7]~0_combout\ & (((\Mux0~8_combout\)))) # (!\bit_count[7]~0_combout\ & (!\Equal10~0_combout\ & (!\Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[7]~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \Equal10~1_combout\,
	datad => \Mux0~8_combout\,
	combout => \Dout~2_combout\);

-- Location: LCCOMB_X29_Y4_N0
\Dout~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout~3_combout\ = (counter(1) & (((\Dout~reg0_q\)))) # (!counter(1) & ((\Dout~2_combout\) # ((!\bit_count[7]~0_combout\ & \Dout~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[7]~0_combout\,
	datab => counter(1),
	datac => \Dout~reg0_q\,
	datad => \Dout~2_combout\,
	combout => \Dout~3_combout\);

-- Location: LCCOMB_X29_Y4_N10
\Dout~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout~4_combout\ = (\Dout~3_combout\) # (counter(2) $ (((counter(1)) # (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(2),
	datad => \Dout~3_combout\,
	combout => \Dout~4_combout\);

-- Location: LCCOMB_X29_Y4_N8
\Dout~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout~reg0feeder_combout\ = \Dout~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dout~4_combout\,
	combout => \Dout~reg0feeder_combout\);

-- Location: FF_X29_Y4_N9
\Dout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \Dout~reg0feeder_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout~reg0_q\);

-- Location: LCCOMB_X28_Y4_N10
\CS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~0_combout\ = ((counter(0) & ((counter(1)) # (counter(2)))) # (!counter(0) & ((!counter(2))))) # (!\bit_count[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => \bit_count[7]~0_combout\,
	datad => counter(2),
	combout => \CS~0_combout\);

-- Location: LCCOMB_X29_Y4_N14
\CS~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~reg0feeder_combout\ = \CS~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CS~0_combout\,
	combout => \CS~reg0feeder_combout\);

-- Location: LCCOMB_X29_Y4_N28
\LDAC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LDAC~0_combout\ = (counter(0) & (!counter(2) & !counter(1))) # (!counter(0) & (counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \LDAC~0_combout\);

-- Location: LCCOMB_X29_Y4_N18
\LDAC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LDAC~1_combout\ = (!\bit_count[7]~0_combout\ & (\LDAC~0_combout\ & ((\Equal10~0_combout\) # (\Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[7]~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \Equal10~1_combout\,
	datad => \LDAC~0_combout\,
	combout => \LDAC~1_combout\);

-- Location: LCCOMB_X29_Y4_N4
\LDAC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LDAC~2_combout\ = (\reset~input_o\) # ((!\LDAC~1_combout\ & ((!counter(1)) # (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => \reset~input_o\,
	datad => \LDAC~1_combout\,
	combout => \LDAC~2_combout\);

-- Location: FF_X29_Y4_N15
\CS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \CS~reg0feeder_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	ena => \LDAC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS~reg0_q\);

-- Location: LCCOMB_X29_Y4_N16
\LDAC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LDAC~3_combout\ = (counter(0) & (!counter(2))) # (!counter(0) & ((counter(2)) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datad => counter(1),
	combout => \LDAC~3_combout\);

-- Location: FF_X29_Y4_N17
\LDAC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_25MHz~clkctrl_outclk\,
	d => \LDAC~3_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	ena => \LDAC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LDAC~reg0_q\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Dout <= \Dout~output_o\;

ww_CS <= \CS~output_o\;

ww_Sclk <= \Sclk~output_o\;

ww_LDAC <= \LDAC~output_o\;
END structure;


