Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.numeric_bit.all;

entity shifter is

	port (input: in std_logic_vector(3 downto 0);
			counter: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(7 downto 0));

end shifter;

architecture arq_shifter of shifter is
	
	signal result: std_logic_vector(7 downto 0);
	
	begin
		process(input, counter)
			begin
				result <= "00000000";
				
				if(counter = "00") then
					result(0) <= input(0);
					result(1) <= input(1);
					result(2) <= input(2);
					result(3) <= input(3);
				elsif(counter = "01") then
					result(1) <= input(0);
					result(2) <= input(1);
					result(3) <= input(2);
					result(4) <= input(3);
				elsif(counter = "10") then
					result(2) <= input(0);
					result(3) <= input(1);
					result(4) <= input(2);
					result(5) <= input(3);
				elsif(counter = "11") then
					result(3) <= input(0);
					result(4) <= input(1);
					result(5) <= input(2);
					result(6) <= input(3);
				end if;	
			end process;
			
		output <= result;

end arq_shifter;