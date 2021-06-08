library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex7seg is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (6 downto 0));
end hex7seg;

architecture logic of hex7seg is
Signal y_a : STD_LOGIC_VECTOR (6 downto 0);
begin

	process(x)
	
	begin
		case x is
			when X"0"   => y_a <= "0111111"; -- 0
			when X"1"   => y_a <= "0000110"; -- 1
			when X"2"   => y_a <= "1011011"; -- 2
			when X"3"   => y_a <= "1001111"; -- 3
			when X"4"   => y_a <= "1100110"; -- 4
			when X"5"   => y_a <= "1101101"; -- 5
			when X"6"   => y_a <= "1111101"; -- 6
			when X"7"   => y_a <= "0000111"; -- 7
			when X"8"   => y_a <= "1111111"; -- 8
			when X"9"   => y_a <= "1101111"; -- 9
			when X"A"   => y_a <= "1110111"; -- a
			when X"B"   => y_a <= "1111100"; -- b
			when X"C"   => y_a <= "0111001"; -- c
			when X"D"   => y_a <= "1011110"; -- d
			when X"E"   => y_a <= "1111001"; -- e
			when X"F"   => y_a <= "1110001"; -- f
			when others => y_a <= "0000000"; -- error
		end case;
		y <= NOT y_a;
	end process;
end logic;
