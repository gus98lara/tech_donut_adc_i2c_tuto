----------------------------------------------------------------------------------
-- PROTON
-- 
-- licznik n bitowy, ilość bitów ustawia się wpisując odpowiednią wartość w lini:
-- generic(bits : integer := 15);
-- służy do spowolnienia szybkości multipleksowania oraz jest licznikiem do wybiernia liczb do wyświetlenia
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_n_bit is
	generic(bits : integer := 15);
    Port ( clk : in  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (1 downto 0));
end counter_n_bit;

architecture logic of counter_n_bit is
begin
	process(clk)
		variable counter: STD_LOGIC_VECTOR (bits downto 0);
		begin
		if rising_edge(clk) then
			counter := counter + 1;
		end if;
		sel <= counter(bits downto bits-1);
	end process;
end logic;