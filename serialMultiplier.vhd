Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity serialMultiplier is 

	port (clock: in std_logic;
			reset: in std_logic;
			charge: in std_logic;
			factor1: in std_logic_vector (3 downto 0);
			factor2: in std_logic_vector (3 downto 0);
			output: inout std_logic_vector (1 downto 0));
			
end serialMultiplier;
	
architecture arq_serialMultiplier serialMultiplier is

	component bufferFactor1 is
	
		port (input: in std_logic_vector(3 downto 0);
				clock: in std_logic;
				reset: in std_logic;
				charge: in std_logic;
				output: out std_logic_vector(3 downto 0));
				
	end component;
	
	component bufferFactor2 is
	
		port (input: in std_logic_vector(3 downto 0);
				clock: in std_logic;
				reset: in std_logic;
				charge: in std_logic;
				output: out std_logic_vector(3 downto 0));
				
	end component;
	
	component mux_4x1 is
	
		port (input: in std_logic_vector(3 downto 0);
				counter: in std_logic_vector(1 downto 0);
				output: out: std_logic);
	
	end component;
	
	component multiplier_4x1 is
	
		port (factor1: in std_logic_vector(3 downto 0);
				factor2: in std_logic;
				product: out: std_logic_vector(3 downto 0));
				
	end component;
	
	component shifter is 
	
		port (input: in std_logic_vector(3 downto 0);
				counter: in std_logic_vector(3 downto 0);
				output: out std_logic_vector(7 downto 0));
	
	end component;
	
	component adder is
	
		port (a: in std_logic_vector(7 downto 0);
				b: in std_logic_vector(7 downto 0);
				output: out std_logic_vector(7 downto 0));
	
	end component;
	
	component bufferProduct is
	
		port (input: in std_logic_vector(7 downto 0);
				clock: in std_logic;
				reset: in std_logic;
				output: out std_logic_vector(7 downto 0));
	
	end component;
	
	component controller is
	
		port (clock: in std_logic;
				reset: in std_logic;
				counter: std_logic_vector(1 downto 0));
		
	component end;

end arq_serialMultiplier;
