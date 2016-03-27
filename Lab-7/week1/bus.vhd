-- Nicholas Imamshah
-- University of Florida
-- EEL 4712: Digital Design, Stitt: Spring 2016
-- Lab 7: Small 8 Bus

library ieee;
use.std_logic_1164.all;

entity bus is 
	generic (
		WIDTH  : positive := 8;
		INPUTS : positive := 8
	);
	port (
		input  : in std_logic_vector(INPUTS-1 downto 0);
		w_en   : in std_logic_vector(INPUTS-1 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0)
	);
end bus;

architecture STR of bus is
begin

	U_BUS : for i in 0 to INPUTS-1 generate
		U_MUX : entity work.mux_2x1
			generic map (
				WIDTH  => WIDTH
			)
			port map (
				x      => (others => '0'),
				y      => input(i),
				sel    => w_en(i),
				output => 
			);

end BHV;