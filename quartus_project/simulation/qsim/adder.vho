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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "10/21/2021 00:57:18"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic
	);
END adder;

ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \GEN7:0:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \GEN1:1:xor_gate1|Y~combout\ : std_logic;
SIGNAL \GEN7:1:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \GEN2:0:func2|Y~0_combout\ : std_logic;
SIGNAL \func_2|Y~0_combout\ : std_logic;
SIGNAL \func_2|Y~1_combout\ : std_logic;
SIGNAL \GEN7:2:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \func_7|Y~0_combout\ : std_logic;
SIGNAL \GEN7:3:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \GEN2:1:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN3:0:func3|Y~0_combout\ : std_logic;
SIGNAL \GEN3:0:func3|Y~combout\ : std_logic;
SIGNAL \func_3|Y~0_combout\ : std_logic;
SIGNAL \GEN7:4:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \func_8|Y~0_combout\ : std_logic;
SIGNAL \GEN7:5:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \GEN2:2:func2|Y~0_combout\ : std_logic;
SIGNAL \func_9|Y~0_combout\ : std_logic;
SIGNAL \func_9|Y~1_combout\ : std_logic;
SIGNAL \GEN7:6:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \func_17|Y~0_combout\ : std_logic;
SIGNAL \GEN7:7:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \GEN3:1:func3|Y~0_combout\ : std_logic;
SIGNAL \func_4|Y~0_combout\ : std_logic;
SIGNAL \GEN2:3:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN4:0:func4|Y~0_combout\ : std_logic;
SIGNAL \GEN4:0:func4|Y~combout\ : std_logic;
SIGNAL \GEN7:8:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \func_10|Y~0_combout\ : std_logic;
SIGNAL \GEN7:9:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \GEN2:4:func2|Y~0_combout\ : std_logic;
SIGNAL \func_11|Y~0_combout\ : std_logic;
SIGNAL \func_11|Y~1_combout\ : std_logic;
SIGNAL \GEN7:10:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \func_18|Y~0_combout\ : std_logic;
SIGNAL \GEN7:11:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \GEN2:5:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN3:2:func3|Y~0_combout\ : std_logic;
SIGNAL \GEN3:2:func3|Y~combout\ : std_logic;
SIGNAL \func_12|Y~0_combout\ : std_logic;
SIGNAL \GEN7:12:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \func_19|Y~0_combout\ : std_logic;
SIGNAL \GEN7:13:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \GEN2:6:func2|Y~0_combout\ : std_logic;
SIGNAL \func_20|Y~0_combout\ : std_logic;
SIGNAL \func_20|Y~1_combout\ : std_logic;
SIGNAL \GEN7:14:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \func_27|Y~0_combout\ : std_logic;
SIGNAL \GEN7:15:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \GEN3:3:func3|Y~0_combout\ : std_logic;
SIGNAL \GEN4:1:and_gate4|Y~0_combout\ : std_logic;
SIGNAL \func_5|Y~0_combout\ : std_logic;
SIGNAL \GEN2:7:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN5:0:func5|Y~0_combout\ : std_logic;
SIGNAL \GEN5:0:func5|Y~1_combout\ : std_logic;
SIGNAL \GEN5:0:func5|Y~combout\ : std_logic;
SIGNAL \GEN7:16:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \func_13|Y~0_combout\ : std_logic;
SIGNAL \GEN7:17:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \GEN2:8:func2|Y~0_combout\ : std_logic;
SIGNAL \func_14|Y~0_combout\ : std_logic;
SIGNAL \func_14|Y~1_combout\ : std_logic;
SIGNAL \GEN7:18:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \func_21|Y~0_combout\ : std_logic;
SIGNAL \GEN7:19:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \GEN2:9:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN3:4:func3|Y~0_combout\ : std_logic;
SIGNAL \GEN3:4:func3|Y~combout\ : std_logic;
SIGNAL \func_6|Y~0_combout\ : std_logic;
SIGNAL \func_15|Y~0_combout\ : std_logic;
SIGNAL \GEN7:20:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \func_22|Y~0_combout\ : std_logic;
SIGNAL \GEN7:21:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \GEN2:10:func2|Y~0_combout\ : std_logic;
SIGNAL \func_23|Y~0_combout\ : std_logic;
SIGNAL \func_23|Y~1_combout\ : std_logic;
SIGNAL \GEN7:22:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \func_28|Y~0_combout\ : std_logic;
SIGNAL \GEN7:23:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \GEN3:5:func3|Y~0_combout\ : std_logic;
SIGNAL \GEN4:2:func4|Y~2_combout\ : std_logic;
SIGNAL \func_16|Y~0_combout\ : std_logic;
SIGNAL \GEN2:11:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN4:2:func4|Y~3_combout\ : std_logic;
SIGNAL \GEN4:2:func4|Y~combout\ : std_logic;
SIGNAL \GEN7:24:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \func_24|Y~0_combout\ : std_logic;
SIGNAL \GEN7:25:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \GEN2:12:func2|Y~0_combout\ : std_logic;
SIGNAL \func_25|Y~0_combout\ : std_logic;
SIGNAL \func_25|Y~1_combout\ : std_logic;
SIGNAL \GEN7:26:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \func_29|Y~0_combout\ : std_logic;
SIGNAL \GEN7:27:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \GEN2:13:func2|Y~0_combout\ : std_logic;
SIGNAL \GEN3:6:func3|Y~0_combout\ : std_logic;
SIGNAL \GEN3:6:func3|Y~combout\ : std_logic;
SIGNAL \func_26|Y~0_combout\ : std_logic;
SIGNAL \GEN7:28:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \func_30|Y~0_combout\ : std_logic;
SIGNAL \GEN7:29:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \GEN2:14:func2|Y~0_combout\ : std_logic;
SIGNAL \func_31|Y~0_combout\ : std_logic;
SIGNAL \func_31|Y~1_combout\ : std_logic;
SIGNAL \GEN7:30:xor_gate7|Y~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \func_32|Y~0_combout\ : std_logic;
SIGNAL \GEN7:31:xor_gate7|Y~combout\ : std_logic;
SIGNAL \func_6|Y~1_combout\ : std_logic;
SIGNAL \func_6|Y~2_combout\ : std_logic;
SIGNAL \func_6|Y~3_combout\ : std_logic;
SIGNAL \GEN4:3:and_gate4|Y~0_combout\ : std_logic;
SIGNAL \GEN4:3:and_gate4|Y~1_combout\ : std_logic;
SIGNAL \func_6|Y~4_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
ww_Cin <= Cin;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:0:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:1:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:2:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:3:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:4:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:5:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:6:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:7:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:8:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:9:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:10:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:11:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:12:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:13:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:14:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:15:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:16:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:17:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:18:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:19:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:20:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:21:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:22:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:23:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:24:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:25:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:26:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:27:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:28:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:29:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:30:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN7:31:xor_gate7|Y~combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \func_6|Y~4_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\GEN7:0:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:0:xor_gate7|Y~combout\ = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \GEN7:0:xor_gate7|Y~combout\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\GEN1:1:xor_gate1|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN1:1:xor_gate1|Y~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \GEN1:1:xor_gate1|Y~combout\);

\GEN7:1:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:1:xor_gate7|Y~combout\ = \GEN1:1:xor_gate1|Y~combout\ $ (((\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \GEN1:1:xor_gate1|Y~combout\,
	combout => \GEN7:1:xor_gate7|Y~combout\);

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\GEN2:0:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:0:func2|Y~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \GEN2:0:func2|Y~0_combout\);

\func_2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_2|Y~0_combout\ = (\A[0]~input_o\ & (!\B[0]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\)))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \func_2|Y~0_combout\);

\func_2|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_2|Y~1_combout\ = (\Cin~input_o\ & \func_2|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \func_2|Y~0_combout\,
	combout => \func_2|Y~1_combout\);

\GEN7:2:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:2:xor_gate7|Y~combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\GEN2:0:func2|Y~0_combout\) # (\func_2|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \GEN2:0:func2|Y~0_combout\,
	datad => \func_2|Y~1_combout\,
	combout => \GEN7:2:xor_gate7|Y~combout\);

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\func_7|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_7|Y~0_combout\ = (\A[2]~input_o\ & ((\GEN2:0:func2|Y~0_combout\) # ((\func_2|Y~1_combout\) # (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & ((\GEN2:0:func2|Y~0_combout\) # (\func_2|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:0:func2|Y~0_combout\,
	datab => \func_2|Y~1_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \func_7|Y~0_combout\);

\GEN7:3:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:3:xor_gate7|Y~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\func_7|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \func_7|Y~0_combout\,
	combout => \GEN7:3:xor_gate7|Y~combout\);

\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\GEN2:1:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:1:func2|Y~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \GEN2:1:func2|Y~0_combout\);

\GEN3:0:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:0:func3|Y~0_combout\ = (\A[2]~input_o\ & (!\B[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \GEN3:0:func3|Y~0_combout\);

\GEN3:0:func3|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:0:func3|Y~combout\ = (\GEN2:1:func2|Y~0_combout\) # ((\GEN2:0:func2|Y~0_combout\ & \GEN3:0:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:1:func2|Y~0_combout\,
	datab => \GEN2:0:func2|Y~0_combout\,
	datac => \GEN3:0:func3|Y~0_combout\,
	combout => \GEN3:0:func3|Y~combout\);

\func_3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_3|Y~0_combout\ = (\Cin~input_o\ & (\func_2|Y~0_combout\ & \GEN3:0:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \func_2|Y~0_combout\,
	datac => \GEN3:0:func3|Y~0_combout\,
	combout => \func_3|Y~0_combout\);

\GEN7:4:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:4:xor_gate7|Y~combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\GEN3:0:func3|Y~combout\) # (\func_3|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \GEN3:0:func3|Y~combout\,
	datad => \func_3|Y~0_combout\,
	combout => \GEN7:4:xor_gate7|Y~combout\);

\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\func_8|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_8|Y~0_combout\ = (\A[4]~input_o\ & ((\func_3|Y~0_combout\) # ((\GEN3:0:func3|Y~combout\) # (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\func_3|Y~0_combout\) # (\GEN3:0:func3|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_3|Y~0_combout\,
	datab => \GEN3:0:func3|Y~combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \func_8|Y~0_combout\);

\GEN7:5:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:5:xor_gate7|Y~combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\func_8|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \func_8|Y~0_combout\,
	combout => \GEN7:5:xor_gate7|Y~combout\);

\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\GEN2:2:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:2:func2|Y~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \GEN2:2:func2|Y~0_combout\);

\func_9|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_9|Y~0_combout\ = (\A[4]~input_o\ & (!\B[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \func_9|Y~0_combout\);

\func_9|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_9|Y~1_combout\ = (\func_9|Y~0_combout\ & ((\GEN3:0:func3|Y~combout\) # (\func_3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_9|Y~0_combout\,
	datab => \GEN3:0:func3|Y~combout\,
	datac => \func_3|Y~0_combout\,
	combout => \func_9|Y~1_combout\);

\GEN7:6:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:6:xor_gate7|Y~combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (((\GEN2:2:func2|Y~0_combout\) # (\func_9|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \GEN2:2:func2|Y~0_combout\,
	datad => \func_9|Y~1_combout\,
	combout => \GEN7:6:xor_gate7|Y~combout\);

\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\func_17|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_17|Y~0_combout\ = (\A[6]~input_o\ & ((\GEN2:2:func2|Y~0_combout\) # ((\func_9|Y~1_combout\) # (\B[6]~input_o\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\GEN2:2:func2|Y~0_combout\) # (\func_9|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:2:func2|Y~0_combout\,
	datab => \func_9|Y~1_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \func_17|Y~0_combout\);

\GEN7:7:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:7:xor_gate7|Y~combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\func_17|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \func_17|Y~0_combout\,
	combout => \GEN7:7:xor_gate7|Y~combout\);

\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\GEN3:1:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:1:func3|Y~0_combout\ = (\A[6]~input_o\ & (!\B[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \GEN3:1:func3|Y~0_combout\);

\func_4|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_4|Y~0_combout\ = (\func_3|Y~0_combout\ & (\func_9|Y~0_combout\ & \GEN3:1:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_3|Y~0_combout\,
	datab => \func_9|Y~0_combout\,
	datac => \GEN3:1:func3|Y~0_combout\,
	combout => \func_4|Y~0_combout\);

\GEN2:3:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:3:func2|Y~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \GEN2:3:func2|Y~0_combout\);

\GEN4:0:func4|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:0:func4|Y~0_combout\ = (\GEN2:3:func2|Y~0_combout\) # ((\GEN2:2:func2|Y~0_combout\ & \GEN3:1:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:3:func2|Y~0_combout\,
	datab => \GEN2:2:func2|Y~0_combout\,
	datac => \GEN3:1:func3|Y~0_combout\,
	combout => \GEN4:0:func4|Y~0_combout\);

\GEN4:0:func4|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:0:func4|Y~combout\ = (\GEN4:0:func4|Y~0_combout\) # ((\GEN3:0:func3|Y~combout\ & (\func_9|Y~0_combout\ & \GEN3:1:func3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN4:0:func4|Y~0_combout\,
	datab => \GEN3:0:func3|Y~combout\,
	datac => \func_9|Y~0_combout\,
	datad => \GEN3:1:func3|Y~0_combout\,
	combout => \GEN4:0:func4|Y~combout\);

\GEN7:8:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:8:xor_gate7|Y~combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\func_4|Y~0_combout\) # (\GEN4:0:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \func_4|Y~0_combout\,
	datad => \GEN4:0:func4|Y~combout\,
	combout => \GEN7:8:xor_gate7|Y~combout\);

\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\func_10|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_10|Y~0_combout\ = (\A[8]~input_o\ & ((\func_4|Y~0_combout\) # ((\GEN4:0:func4|Y~combout\) # (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\func_4|Y~0_combout\) # (\GEN4:0:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_4|Y~0_combout\,
	datab => \GEN4:0:func4|Y~combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \func_10|Y~0_combout\);

\GEN7:9:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:9:xor_gate7|Y~combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\func_10|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \func_10|Y~0_combout\,
	combout => \GEN7:9:xor_gate7|Y~combout\);

\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\GEN2:4:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:4:func2|Y~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \GEN2:4:func2|Y~0_combout\);

\func_11|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_11|Y~0_combout\ = (\A[8]~input_o\ & (!\B[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \func_11|Y~0_combout\);

\func_11|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_11|Y~1_combout\ = (\func_11|Y~0_combout\ & ((\func_4|Y~0_combout\) # (\GEN4:0:func4|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_11|Y~0_combout\,
	datab => \func_4|Y~0_combout\,
	datac => \GEN4:0:func4|Y~combout\,
	combout => \func_11|Y~1_combout\);

\GEN7:10:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:10:xor_gate7|Y~combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (((\GEN2:4:func2|Y~0_combout\) # (\func_11|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \GEN2:4:func2|Y~0_combout\,
	datad => \func_11|Y~1_combout\,
	combout => \GEN7:10:xor_gate7|Y~combout\);

\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\func_18|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_18|Y~0_combout\ = (\A[10]~input_o\ & ((\GEN2:4:func2|Y~0_combout\) # ((\func_11|Y~1_combout\) # (\B[10]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & ((\GEN2:4:func2|Y~0_combout\) # (\func_11|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:4:func2|Y~0_combout\,
	datab => \func_11|Y~1_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \func_18|Y~0_combout\);

\GEN7:11:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:11:xor_gate7|Y~combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (\func_18|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \func_18|Y~0_combout\,
	combout => \GEN7:11:xor_gate7|Y~combout\);

\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\GEN2:5:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:5:func2|Y~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \GEN2:5:func2|Y~0_combout\);

\GEN3:2:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:2:func3|Y~0_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \GEN3:2:func3|Y~0_combout\);

\GEN3:2:func3|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:2:func3|Y~combout\ = (\GEN2:5:func2|Y~0_combout\) # ((\GEN2:4:func2|Y~0_combout\ & \GEN3:2:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:5:func2|Y~0_combout\,
	datab => \GEN2:4:func2|Y~0_combout\,
	datac => \GEN3:2:func3|Y~0_combout\,
	combout => \GEN3:2:func3|Y~combout\);

\func_12|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_12|Y~0_combout\ = (\func_11|Y~0_combout\ & (\GEN3:2:func3|Y~0_combout\ & ((\func_4|Y~0_combout\) # (\GEN4:0:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_11|Y~0_combout\,
	datab => \GEN3:2:func3|Y~0_combout\,
	datac => \func_4|Y~0_combout\,
	datad => \GEN4:0:func4|Y~combout\,
	combout => \func_12|Y~0_combout\);

\GEN7:12:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:12:xor_gate7|Y~combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (((\GEN3:2:func3|Y~combout\) # (\func_12|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \GEN3:2:func3|Y~combout\,
	datad => \func_12|Y~0_combout\,
	combout => \GEN7:12:xor_gate7|Y~combout\);

\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\func_19|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_19|Y~0_combout\ = (\A[12]~input_o\ & ((\func_12|Y~0_combout\) # ((\GEN3:2:func3|Y~combout\) # (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\func_12|Y~0_combout\) # (\GEN3:2:func3|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_12|Y~0_combout\,
	datab => \GEN3:2:func3|Y~combout\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \func_19|Y~0_combout\);

\GEN7:13:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:13:xor_gate7|Y~combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\func_19|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \func_19|Y~0_combout\,
	combout => \GEN7:13:xor_gate7|Y~combout\);

\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\GEN2:6:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:6:func2|Y~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \GEN2:6:func2|Y~0_combout\);

\func_20|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_20|Y~0_combout\ = (\A[12]~input_o\ & (!\B[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \func_20|Y~0_combout\);

\func_20|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_20|Y~1_combout\ = (\func_20|Y~0_combout\ & ((\GEN3:2:func3|Y~combout\) # (\func_12|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_20|Y~0_combout\,
	datab => \GEN3:2:func3|Y~combout\,
	datac => \func_12|Y~0_combout\,
	combout => \func_20|Y~1_combout\);

\GEN7:14:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:14:xor_gate7|Y~combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (((\GEN2:6:func2|Y~0_combout\) # (\func_20|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \GEN2:6:func2|Y~0_combout\,
	datad => \func_20|Y~1_combout\,
	combout => \GEN7:14:xor_gate7|Y~combout\);

\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\func_27|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_27|Y~0_combout\ = (\A[14]~input_o\ & ((\GEN2:6:func2|Y~0_combout\) # ((\func_20|Y~1_combout\) # (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & ((\GEN2:6:func2|Y~0_combout\) # (\func_20|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:6:func2|Y~0_combout\,
	datab => \func_20|Y~1_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \func_27|Y~0_combout\);

\GEN7:15:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:15:xor_gate7|Y~combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (\func_27|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \func_27|Y~0_combout\,
	combout => \GEN7:15:xor_gate7|Y~combout\);

\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\GEN3:3:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:3:func3|Y~0_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \GEN3:3:func3|Y~0_combout\);

\GEN4:1:and_gate4|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:1:and_gate4|Y~0_combout\ = (\func_11|Y~0_combout\ & (\GEN3:2:func3|Y~0_combout\ & (\func_20|Y~0_combout\ & \GEN3:3:func3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_11|Y~0_combout\,
	datab => \GEN3:2:func3|Y~0_combout\,
	datac => \func_20|Y~0_combout\,
	datad => \GEN3:3:func3|Y~0_combout\,
	combout => \GEN4:1:and_gate4|Y~0_combout\);

\func_5|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_5|Y~0_combout\ = (\func_3|Y~0_combout\ & (\func_9|Y~0_combout\ & (\GEN3:1:func3|Y~0_combout\ & \GEN4:1:and_gate4|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_3|Y~0_combout\,
	datab => \func_9|Y~0_combout\,
	datac => \GEN3:1:func3|Y~0_combout\,
	datad => \GEN4:1:and_gate4|Y~0_combout\,
	combout => \func_5|Y~0_combout\);

\GEN2:7:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:7:func2|Y~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\A[15]~input_o\ & (\B[14]~input_o\ & (\A[14]~input_o\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \GEN2:7:func2|Y~0_combout\);

\GEN5:0:func5|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN5:0:func5|Y~0_combout\ = (\GEN2:7:func2|Y~0_combout\) # ((\GEN2:6:func2|Y~0_combout\ & \GEN3:3:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:7:func2|Y~0_combout\,
	datab => \GEN2:6:func2|Y~0_combout\,
	datac => \GEN3:3:func3|Y~0_combout\,
	combout => \GEN5:0:func5|Y~0_combout\);

\GEN5:0:func5|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN5:0:func5|Y~1_combout\ = (\GEN5:0:func5|Y~0_combout\) # ((\GEN3:2:func3|Y~combout\ & (\func_20|Y~0_combout\ & \GEN3:3:func3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN5:0:func5|Y~0_combout\,
	datab => \GEN3:2:func3|Y~combout\,
	datac => \func_20|Y~0_combout\,
	datad => \GEN3:3:func3|Y~0_combout\,
	combout => \GEN5:0:func5|Y~1_combout\);

\GEN5:0:func5|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN5:0:func5|Y~combout\ = (\GEN5:0:func5|Y~1_combout\) # ((\GEN4:0:func4|Y~combout\ & \GEN4:1:and_gate4|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN5:0:func5|Y~1_combout\,
	datab => \GEN4:0:func4|Y~combout\,
	datac => \GEN4:1:and_gate4|Y~0_combout\,
	combout => \GEN5:0:func5|Y~combout\);

\GEN7:16:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:16:xor_gate7|Y~combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\func_5|Y~0_combout\) # (\GEN5:0:func5|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \func_5|Y~0_combout\,
	datad => \GEN5:0:func5|Y~combout\,
	combout => \GEN7:16:xor_gate7|Y~combout\);

\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\func_13|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_13|Y~0_combout\ = (\A[16]~input_o\ & ((\func_5|Y~0_combout\) # ((\GEN5:0:func5|Y~combout\) # (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\func_5|Y~0_combout\) # (\GEN5:0:func5|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_5|Y~0_combout\,
	datab => \GEN5:0:func5|Y~combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \func_13|Y~0_combout\);

\GEN7:17:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:17:xor_gate7|Y~combout\ = \A[17]~input_o\ $ (\B[17]~input_o\ $ (\func_13|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \func_13|Y~0_combout\,
	combout => \GEN7:17:xor_gate7|Y~combout\);

\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\GEN2:8:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:8:func2|Y~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[16]~input_o\ & (\A[16]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \GEN2:8:func2|Y~0_combout\);

\func_14|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_14|Y~0_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \func_14|Y~0_combout\);

\func_14|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_14|Y~1_combout\ = (\func_14|Y~0_combout\ & ((\GEN5:0:func5|Y~combout\) # ((\func_4|Y~0_combout\ & \GEN4:1:and_gate4|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_14|Y~0_combout\,
	datab => \GEN5:0:func5|Y~combout\,
	datac => \func_4|Y~0_combout\,
	datad => \GEN4:1:and_gate4|Y~0_combout\,
	combout => \func_14|Y~1_combout\);

\GEN7:18:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:18:xor_gate7|Y~combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (((\GEN2:8:func2|Y~0_combout\) # (\func_14|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \GEN2:8:func2|Y~0_combout\,
	datad => \func_14|Y~1_combout\,
	combout => \GEN7:18:xor_gate7|Y~combout\);

\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\func_21|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_21|Y~0_combout\ = (\A[18]~input_o\ & ((\GEN2:8:func2|Y~0_combout\) # ((\func_14|Y~1_combout\) # (\B[18]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & ((\GEN2:8:func2|Y~0_combout\) # (\func_14|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:8:func2|Y~0_combout\,
	datab => \func_14|Y~1_combout\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \func_21|Y~0_combout\);

\GEN7:19:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:19:xor_gate7|Y~combout\ = \A[19]~input_o\ $ (\B[19]~input_o\ $ (\func_21|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \func_21|Y~0_combout\,
	combout => \GEN7:19:xor_gate7|Y~combout\);

\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\GEN2:9:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:9:func2|Y~0_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\A[19]~input_o\ & (\B[18]~input_o\ & (\A[18]~input_o\ & \B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \GEN2:9:func2|Y~0_combout\);

\GEN3:4:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:4:func3|Y~0_combout\ = (\A[18]~input_o\ & (!\B[18]~input_o\ & (\A[19]~input_o\ $ (\B[19]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \GEN3:4:func3|Y~0_combout\);

\GEN3:4:func3|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:4:func3|Y~combout\ = (\GEN2:9:func2|Y~0_combout\) # ((\GEN2:8:func2|Y~0_combout\ & \GEN3:4:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:9:func2|Y~0_combout\,
	datab => \GEN2:8:func2|Y~0_combout\,
	datac => \GEN3:4:func3|Y~0_combout\,
	combout => \GEN3:4:func3|Y~combout\);

\func_6|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_6|Y~0_combout\ = (\GEN5:0:func5|Y~1_combout\) # ((\GEN4:1:and_gate4|Y~0_combout\ & ((\func_4|Y~0_combout\) # (\GEN4:0:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN5:0:func5|Y~1_combout\,
	datab => \GEN4:1:and_gate4|Y~0_combout\,
	datac => \func_4|Y~0_combout\,
	datad => \GEN4:0:func4|Y~combout\,
	combout => \func_6|Y~0_combout\);

\func_15|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_15|Y~0_combout\ = (\func_6|Y~0_combout\ & (\func_14|Y~0_combout\ & \GEN3:4:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_6|Y~0_combout\,
	datab => \func_14|Y~0_combout\,
	datac => \GEN3:4:func3|Y~0_combout\,
	combout => \func_15|Y~0_combout\);

\GEN7:20:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:20:xor_gate7|Y~combout\ = \A[20]~input_o\ $ (\B[20]~input_o\ $ (((\GEN3:4:func3|Y~combout\) # (\func_15|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \GEN3:4:func3|Y~combout\,
	datad => \func_15|Y~0_combout\,
	combout => \GEN7:20:xor_gate7|Y~combout\);

\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\func_22|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_22|Y~0_combout\ = (\A[20]~input_o\ & ((\func_15|Y~0_combout\) # ((\GEN3:4:func3|Y~combout\) # (\B[20]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & ((\func_15|Y~0_combout\) # (\GEN3:4:func3|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_15|Y~0_combout\,
	datab => \GEN3:4:func3|Y~combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \func_22|Y~0_combout\);

\GEN7:21:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:21:xor_gate7|Y~combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\func_22|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \func_22|Y~0_combout\,
	combout => \GEN7:21:xor_gate7|Y~combout\);

\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\GEN2:10:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:10:func2|Y~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[20]~input_o\ & (\A[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \GEN2:10:func2|Y~0_combout\);

\func_23|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_23|Y~0_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \func_23|Y~0_combout\);

\func_23|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_23|Y~1_combout\ = (\func_23|Y~0_combout\ & ((\GEN3:4:func3|Y~combout\) # (\func_15|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_23|Y~0_combout\,
	datab => \GEN3:4:func3|Y~combout\,
	datac => \func_15|Y~0_combout\,
	combout => \func_23|Y~1_combout\);

\GEN7:22:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:22:xor_gate7|Y~combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (((\GEN2:10:func2|Y~0_combout\) # (\func_23|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \GEN2:10:func2|Y~0_combout\,
	datad => \func_23|Y~1_combout\,
	combout => \GEN7:22:xor_gate7|Y~combout\);

\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\func_28|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_28|Y~0_combout\ = (\A[22]~input_o\ & ((\GEN2:10:func2|Y~0_combout\) # ((\func_23|Y~1_combout\) # (\B[22]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & ((\GEN2:10:func2|Y~0_combout\) # (\func_23|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:10:func2|Y~0_combout\,
	datab => \func_23|Y~1_combout\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \func_28|Y~0_combout\);

\GEN7:23:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:23:xor_gate7|Y~combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (\func_28|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \func_28|Y~0_combout\,
	combout => \GEN7:23:xor_gate7|Y~combout\);

\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\GEN3:5:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:5:func3|Y~0_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \GEN3:5:func3|Y~0_combout\);

\GEN4:2:func4|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:2:func4|Y~2_combout\ = (\func_23|Y~0_combout\ & \GEN3:5:func3|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_23|Y~0_combout\,
	datab => \GEN3:5:func3|Y~0_combout\,
	combout => \GEN4:2:func4|Y~2_combout\);

\func_16|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_16|Y~0_combout\ = (\func_6|Y~0_combout\ & (\func_14|Y~0_combout\ & (\GEN3:4:func3|Y~0_combout\ & \GEN4:2:func4|Y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_6|Y~0_combout\,
	datab => \func_14|Y~0_combout\,
	datac => \GEN3:4:func3|Y~0_combout\,
	datad => \GEN4:2:func4|Y~2_combout\,
	combout => \func_16|Y~0_combout\);

\GEN2:11:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:11:func2|Y~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\A[22]~input_o\ & \B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \GEN2:11:func2|Y~0_combout\);

\GEN4:2:func4|Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:2:func4|Y~3_combout\ = (\GEN2:11:func2|Y~0_combout\) # ((\GEN2:10:func2|Y~0_combout\ & \GEN3:5:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:11:func2|Y~0_combout\,
	datab => \GEN2:10:func2|Y~0_combout\,
	datac => \GEN3:5:func3|Y~0_combout\,
	combout => \GEN4:2:func4|Y~3_combout\);

\GEN4:2:func4|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:2:func4|Y~combout\ = (\GEN4:2:func4|Y~3_combout\) # ((\func_23|Y~0_combout\ & (\GEN3:5:func3|Y~0_combout\ & \GEN3:4:func3|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_23|Y~0_combout\,
	datab => \GEN3:5:func3|Y~0_combout\,
	datac => \GEN4:2:func4|Y~3_combout\,
	datad => \GEN3:4:func3|Y~combout\,
	combout => \GEN4:2:func4|Y~combout\);

\GEN7:24:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:24:xor_gate7|Y~combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (((\func_16|Y~0_combout\) # (\GEN4:2:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \func_16|Y~0_combout\,
	datad => \GEN4:2:func4|Y~combout\,
	combout => \GEN7:24:xor_gate7|Y~combout\);

\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\func_24|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_24|Y~0_combout\ = (\A[24]~input_o\ & ((\func_16|Y~0_combout\) # ((\GEN4:2:func4|Y~combout\) # (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\func_16|Y~0_combout\) # (\GEN4:2:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_16|Y~0_combout\,
	datab => \GEN4:2:func4|Y~combout\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \func_24|Y~0_combout\);

\GEN7:25:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:25:xor_gate7|Y~combout\ = \A[25]~input_o\ $ (\B[25]~input_o\ $ (\func_24|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \func_24|Y~0_combout\,
	combout => \GEN7:25:xor_gate7|Y~combout\);

\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\GEN2:12:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:12:func2|Y~0_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \GEN2:12:func2|Y~0_combout\);

\func_25|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_25|Y~0_combout\ = (\A[24]~input_o\ & (!\B[24]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \func_25|Y~0_combout\);

\func_25|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_25|Y~1_combout\ = (\func_25|Y~0_combout\ & ((\func_16|Y~0_combout\) # (\GEN4:2:func4|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_25|Y~0_combout\,
	datab => \func_16|Y~0_combout\,
	datac => \GEN4:2:func4|Y~combout\,
	combout => \func_25|Y~1_combout\);

\GEN7:26:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:26:xor_gate7|Y~combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (((\GEN2:12:func2|Y~0_combout\) # (\func_25|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \GEN2:12:func2|Y~0_combout\,
	datad => \func_25|Y~1_combout\,
	combout => \GEN7:26:xor_gate7|Y~combout\);

\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\func_29|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_29|Y~0_combout\ = (\A[26]~input_o\ & ((\GEN2:12:func2|Y~0_combout\) # ((\func_25|Y~1_combout\) # (\B[26]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & ((\GEN2:12:func2|Y~0_combout\) # (\func_25|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:12:func2|Y~0_combout\,
	datab => \func_25|Y~1_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \func_29|Y~0_combout\);

\GEN7:27:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:27:xor_gate7|Y~combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (\func_29|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \func_29|Y~0_combout\,
	combout => \GEN7:27:xor_gate7|Y~combout\);

\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\GEN2:13:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:13:func2|Y~0_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[26]~input_o\ & (\A[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \GEN2:13:func2|Y~0_combout\);

\GEN3:6:func3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:6:func3|Y~0_combout\ = (\A[26]~input_o\ & (!\B[26]~input_o\ & (\A[27]~input_o\ $ (\B[27]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\A[27]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \GEN3:6:func3|Y~0_combout\);

\GEN3:6:func3|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN3:6:func3|Y~combout\ = (\GEN2:13:func2|Y~0_combout\) # ((\GEN2:12:func2|Y~0_combout\ & \GEN3:6:func3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:13:func2|Y~0_combout\,
	datab => \GEN2:12:func2|Y~0_combout\,
	datac => \GEN3:6:func3|Y~0_combout\,
	combout => \GEN3:6:func3|Y~combout\);

\func_26|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_26|Y~0_combout\ = (\func_25|Y~0_combout\ & (\GEN3:6:func3|Y~0_combout\ & ((\func_16|Y~0_combout\) # (\GEN4:2:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_25|Y~0_combout\,
	datab => \GEN3:6:func3|Y~0_combout\,
	datac => \func_16|Y~0_combout\,
	datad => \GEN4:2:func4|Y~combout\,
	combout => \func_26|Y~0_combout\);

\GEN7:28:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:28:xor_gate7|Y~combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (((\GEN3:6:func3|Y~combout\) # (\func_26|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \GEN3:6:func3|Y~combout\,
	datad => \func_26|Y~0_combout\,
	combout => \GEN7:28:xor_gate7|Y~combout\);

\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\func_30|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_30|Y~0_combout\ = (\A[28]~input_o\ & ((\func_26|Y~0_combout\) # ((\GEN3:6:func3|Y~combout\) # (\B[28]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & ((\func_26|Y~0_combout\) # (\GEN3:6:func3|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_26|Y~0_combout\,
	datab => \GEN3:6:func3|Y~combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \func_30|Y~0_combout\);

\GEN7:29:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:29:xor_gate7|Y~combout\ = \A[29]~input_o\ $ (\B[29]~input_o\ $ (\func_30|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \func_30|Y~0_combout\,
	combout => \GEN7:29:xor_gate7|Y~combout\);

\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\GEN2:14:func2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN2:14:func2|Y~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[28]~input_o\ & (\A[28]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \GEN2:14:func2|Y~0_combout\);

\func_31|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_31|Y~0_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \func_31|Y~0_combout\);

\func_31|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_31|Y~1_combout\ = (\func_31|Y~0_combout\ & ((\GEN3:6:func3|Y~combout\) # (\func_26|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_31|Y~0_combout\,
	datab => \GEN3:6:func3|Y~combout\,
	datac => \func_26|Y~0_combout\,
	combout => \func_31|Y~1_combout\);

\GEN7:30:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:30:xor_gate7|Y~combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (((\GEN2:14:func2|Y~0_combout\) # (\func_31|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \GEN2:14:func2|Y~0_combout\,
	datad => \func_31|Y~1_combout\,
	combout => \GEN7:30:xor_gate7|Y~combout\);

\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\func_32|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_32|Y~0_combout\ = (\A[30]~input_o\ & ((\GEN2:14:func2|Y~0_combout\) # ((\func_31|Y~1_combout\) # (\B[30]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & ((\GEN2:14:func2|Y~0_combout\) # (\func_31|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:14:func2|Y~0_combout\,
	datab => \func_31|Y~1_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \func_32|Y~0_combout\);

\GEN7:31:xor_gate7|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN7:31:xor_gate7|Y~combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (\func_32|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \func_32|Y~0_combout\,
	combout => \GEN7:31:xor_gate7|Y~combout\);

\func_6|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_6|Y~1_combout\ = (\GEN2:14:func2|Y~0_combout\) # ((\GEN3:6:func3|Y~combout\ & \func_31|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2:14:func2|Y~0_combout\,
	datab => \GEN3:6:func3|Y~combout\,
	datac => \func_31|Y~0_combout\,
	combout => \func_6|Y~1_combout\);

\func_6|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_6|Y~2_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # (\func_6|Y~1_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & \func_6|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \func_6|Y~1_combout\,
	combout => \func_6|Y~2_combout\);

\func_6|Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_6|Y~3_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # (\func_6|Y~2_combout\))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & \func_6|Y~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \func_6|Y~2_combout\,
	combout => \func_6|Y~3_combout\);

\GEN4:3:and_gate4|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:3:and_gate4|Y~0_combout\ = (\A[30]~input_o\ & (!\B[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \GEN4:3:and_gate4|Y~0_combout\);

\GEN4:3:and_gate4|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN4:3:and_gate4|Y~1_combout\ = (\func_25|Y~0_combout\ & (\GEN3:6:func3|Y~0_combout\ & (\func_31|Y~0_combout\ & \GEN4:3:and_gate4|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_25|Y~0_combout\,
	datab => \GEN3:6:func3|Y~0_combout\,
	datac => \func_31|Y~0_combout\,
	datad => \GEN4:3:and_gate4|Y~0_combout\,
	combout => \GEN4:3:and_gate4|Y~1_combout\);

\func_6|Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \func_6|Y~4_combout\ = (\func_6|Y~3_combout\) # ((\GEN4:3:and_gate4|Y~1_combout\ & ((\func_16|Y~0_combout\) # (\GEN4:2:func4|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_6|Y~3_combout\,
	datab => \GEN4:3:and_gate4|Y~1_combout\,
	datac => \func_16|Y~0_combout\,
	datad => \GEN4:2:func4|Y~combout\,
	combout => \func_6|Y~4_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


