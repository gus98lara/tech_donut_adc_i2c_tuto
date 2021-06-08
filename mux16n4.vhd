----------------------------------------------------------------------------------
-- PROTON
--
-- multiplekser z 16 na 4, faktycznie są to 4 multipleksery 4 n 1
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux16n4 is
    Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end mux16n4;

architecture logic of mux16n4 is

begin
	process(sel, x)
		begin
		case sel is
			when "00" => y <= x(3 downto 0);
			when "01" => y <= x(7 downto 4);
			when "10" => y <= x(11 downto 8);
			when "11" => y <= x(15 downto 12);
			when others => y <= "0000";
		end case;
	end process;
end logic;