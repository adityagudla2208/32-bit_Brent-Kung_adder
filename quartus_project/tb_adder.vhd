LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
 
entity tb_adder is
end tb_adder;
 
architecture behavior OF tb_adder IS
 
component adder
	PORT(
		A		: IN STD_LOGIC_VECTOR(31 downto 0);
		B		: IN STD_LOGIC_VECTOR(31 downto 0);
		Cin	: IN STD_LOGIC;
		S		: OUT STD_LOGIC_VECTOR(31 downto 0);
		Cout	: OUT STD_LOGIC
	);
end component;

--File signals
file file_VECTORS : text;
constant c_WIDTH : natural := 32;

--Inputs
signal A : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal B : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal Cin : STD_LOGIC := '0';

--Outputs
signal S			: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal S_EXP	: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal Cout		: STD_LOGIC;
signal Cout_EXP: STD_LOGIC;
 
BEGIN
 
--Instantiate the Unit Under Test (UUT)
uut: adder PORT MAP (
	A		=> A,
	B		=> B,
	Cin	=> Cin,
	S		=> S,
	Cout	=> Cout
);
 
--Stimulus process
process
	
	variable v_ILINE     : line;
	variable v_OLINE     : line;
	variable v_ADD_TERM1 : std_logic_vector(c_WIDTH-1 downto 0); --A
	variable v_ADD_TERM2 : std_logic_vector(c_WIDTH-1 downto 0); --B
	variable v_ADD_TERM3 : std_logic;									 --Cin
	variable v_ADD_TERM4 : std_logic_vector(c_WIDTH-1 downto 0); --Sum expected
	variable v_ADD_TERM5 : std_logic;									 --Cout expected
	variable v_SPACE     : character;

begin

	file_open(file_VECTORS, "input_vectors.txt",  read_mode);
	
	while not endfile(file_VECTORS) loop
      readline(file_VECTORS, v_ILINE);
      read(v_ILINE, v_ADD_TERM1);
      read(v_ILINE, v_SPACE);           -- read in the space character
      read(v_ILINE, v_ADD_TERM2);
		read(v_ILINE, v_SPACE);
		read(v_ILINE, v_ADD_TERM3);
		read(v_ILINE, v_SPACE);
		read(v_ILINE, v_ADD_TERM4);
		read(v_ILINE, v_SPACE);
		read(v_ILINE, v_ADD_TERM5);
		
		A			<= v_ADD_TERM1;
      B			<= v_ADD_TERM2;
		Cin		<= v_ADD_TERM3;
		S_EXP		<=	v_ADD_TERM4;
		Cout_EXP	<=	v_ADD_TERM5;
 
      wait for 10 ns;
	end loop;
	
	file_close(file_VECTORS);

	wait;

end process;
 
END;
