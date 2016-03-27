-- Nicholas Imamshah
-- University of Florida
-- EEL 4712: Digital Design, Stitt: Spring 2016
-- Lab 7: Small 8 2x1 MUX

library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity mux is 
	generic (
		WIDTH  : positive := 8;
		INPUTS : real := ceil(LOG2(real(RATIO + 1)));
	);
		port (
		x      : in std_logic_vector(WIDTH-1 downto 0);
		y      : in std_logic_vector(WIDTH-1 downto 0);
		sel    : in std_logic_vector();
		output : out std_logic_vector(WIDTH-1 downto 0)
	);
end mux_2x1;

architecture BHV of mux_2x1 is
begin
	with sel select
		output <= 
		x   when '0',
		y	when others;
end BHV;