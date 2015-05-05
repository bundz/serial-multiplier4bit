Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter is 

	port (clock: in std_logic;
			clear: in std_logic;
			output: inout std_logic_vector (1 downto 0));
	
