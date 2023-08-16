library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func is
	Port(	A : in STD_LOGIC;
			B : in STD_LOGIC;
			C : in STD_LOGIC;
			Y : out STD_LOGIC
			);
end func;
 
architecture dataflow of func is

begin
 
	Y <= A OR (B AND C) after 100 ps;
 
end dataflow;