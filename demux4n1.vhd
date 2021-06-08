----------------------------------------------------------------------------------
-- PROTON
-- 
-- demultiplekser do wybierania poszczególnych cyfr do wyświetlenia 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux4n1 is
    Port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end demux4n1;

architecture logic of demux4n1 is

begin
	process(sel)
	begin
		case sel is
			when "00"   => an <= "0001";
			when "01"   => an <= "0010";
			when "10"   => an <= "0100";
			when "11"   => an <= "1000";
			when others => an <= "0000";
		end case;
	end process;
end logic;
