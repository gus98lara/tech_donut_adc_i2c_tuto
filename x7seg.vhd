library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x7seg is
	port ( 
		x : in  STD_LOGIC_VECTOR (11 downto 0);   -- maksymalna wartość na wyświetlaczu to 4095
		clk : in  STD_LOGIC;
		seg : out  STD_LOGIC_VECTOR (6 downto 0);
		dig : out  STD_LOGIC_VECTOR (3 downto 0)
				);
end x7seg;

architecture logic of x7seg is

signal mux2decode : STD_LOGIC_VECTOR(3 downto 0);
signal ssel : STD_LOGIC_VECTOR(1 downto 0);
signal bin2bcd : STD_LOGIC_VECTOR( 15 downto 0);	-- dodano sygnał do spięcia transkodera z demultiplekserem.


component bin_a_bcd_12 is										-- dodano komponent, transkoder BIN 2 BCD
    Port ( bin : in  STD_LOGIC_VECTOR (11 downto 0);
           bcd : out  STD_LOGIC_VECTOR (15 downto 0));
end component;


component mux16n4 is
	port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
		sel : in  STD_LOGIC_VECTOR (1 downto 0);
		y : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component hex7seg is
	port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
		y : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component demux4n1 is
	port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
		an : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component counter_n_bit is
	port ( clk : in  STD_LOGIC;
		sel : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

begin

U2: mux16n4 port map ( x => bin2bcd, sel => ssel, y => mux2decode );
U3: hex7seg port map ( x => mux2decode, y => seg );
U4: demux4n1 port map ( sel => ssel, an => dig );
U5: counter_n_bit port map (clk => clk, sel => ssel );
U6: bin_a_bcd_12 port map(bin => x, bcd => bin2bcd); --podpięto transkoder na wejściu.

end logic;