library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity adder is
	Port(	A : in STD_LOGIC_VECTOR(31 downto 0);
			B : in STD_LOGIC_VECTOR(31 downto 0);
			S : out STD_LOGIC_VECTOR(31 downto 0);
			Cin : in STD_LOGIC;
			Cout : out STD_LOGIC);
end adder;
 
architecture structure of adder is

signal G, P : STD_LOGIC_VECTOR(62 downto 0) := (others => '0');
signal C 	: STD_LOGIC_VECTOR(32 downto 0) := (others => '0');

begin

	C(0) <= Cin;
	Cout <= C(32);

	GEN1 : 
		for i in 0 to 31 generate
			and_gate1 : entity work.and_gate port map (A(i),B(i),G(i));
			xor_gate1 : entity work.xor_gate port map (A(i),B(i),P(i));
		end generate GEN1;
		
	GEN2 : 
		for i in 0 to 15 generate
			func2		 : entity work.func port map (G(2*i+1),P(2*i+1),G(2*i),G(i+32));
			and_gate2 : entity work.and_gate port map (P(2*i+1),P(2*i),P(i+32));
		end generate GEN2;
		
	GEN3 : 
		for i in 0 to 7 generate
			func3		 : entity work.func port map (G(2*i+33),P(2*i+33),G(2*i+32),G(i+48));
			and_gate3 : entity work.and_gate port map (P(2*i+33),P(2*i+32),P(i+48));
		end generate GEN3;
		
	GEN4 : 
		for i in 0 to 3 generate
			func4		 : entity work.func port map (G(2*i+49),P(2*i+49),G(2*i+48),G(i+56));
			and_gate4 : entity work.and_gate port map (P(2*i+49),P(2*i+48),P(i+56));
		end generate GEN4;
		
	GEN5 : 
		for i in 0 to 1 generate
			func5		 : entity work.func port map (G(2*i+57),P(2*i+57),G(2*i+56),G(i+60));
			and_gate5 : entity work.and_gate port map (P(2*i+57),P(2*i+56),P(i+60));
		end generate GEN5;
		
	GEN6 : 
		for i in 0 to 0 generate
			func6		 : entity work.func port map (G(2*i+61),P(2*i+61),G(2*i + 60),G(i+62));
			and_gate6 : entity work.and_gate port map (P(2*i+61),P(2*i+60),P(i+62));
		end generate GEN6;
	
	
	func_1	: entity work.func port map (G(0),P(0),Cin,C(1));
	func_2	: entity work.func port map (G(32),P(32),Cin,C(2));
	func_3	: entity work.func port map (G(48),P(48),Cin,C(4));
	func_4	: entity work.func port map (G(56),P(56),Cin,C(8));
	func_5	: entity work.func port map (G(60),P(60),Cin,C(16));
	func_6	: entity work.func port map (G(62),P(62),Cin,C(32));
	
	
	func_7	: entity work.func port map (G(2),P(2),C(2),C(3));
	func_8	: entity work.func port map (G(4),P(4),C(4),C(5));
	func_9	: entity work.func port map (G(34),P(34),C(4),C(6));
	func_10	: entity work.func port map (G(8),P(8),C(8),C(9));
	func_11	: entity work.func port map (G(36),P(36),C(8),C(10));
	func_12	: entity work.func port map (G(50),P(50),C(8),C(12));
	func_13	: entity work.func port map (G(16),P(16),C(16),C(17));
	func_14	: entity work.func port map (G(40),P(40),C(16),C(18));
	func_15	: entity work.func port map (G(52),P(52),C(16),C(20));
	func_16	: entity work.func port map (G(58),P(58),C(16),C(24));

	
	func_17	: entity work.func port map (G(6),P(6),C(6),C(7));
	func_18	: entity work.func port map (G(10),P(10),C(10),C(11));
	func_19	: entity work.func port map (G(12),P(12),C(12),C(13));
	func_20	: entity work.func port map (G(38),P(38),C(12),C(14));
	func_21	: entity work.func port map (G(18),P(18),C(18),C(19));
	func_22	: entity work.func port map (G(20),P(20),C(20),C(21));
	func_23	: entity work.func port map (G(42),P(42),C(20),C(22));
	func_24	: entity work.func port map (G(24),P(24),C(24),C(25));
	func_25	: entity work.func port map (G(44),P(44),C(24),C(26));
	func_26	: entity work.func port map (G(54),P(54),C(24),C(28));
	
	
	func_27	: entity work.func port map (G(14),P(14),C(14),C(15));
	func_28	: entity work.func port map (G(22),P(22),C(22),C(23));
	func_29	: entity work.func port map (G(26),P(26),C(26),C(27));
	func_30	: entity work.func port map (G(28),P(28),C(28),C(29));
	func_31	: entity work.func port map (G(46),P(46),C(28),C(30));
	
	
	func_32	: entity work.func port map (G(30),P(30),C(30),C(31));
	
	
	GEN7 : 
		for i in 0 to 31 generate
			xor_gate7 : entity work.xor_gate port map (P(i),C(i),S(i));
		end generate GEN7;

end structure;
