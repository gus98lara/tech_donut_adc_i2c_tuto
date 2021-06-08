--Techno Donut

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


Entity adc_try4 is
	Port(
		--Clock
		clk : IN STD_LOGIC;
		rst : IN STD_LOGIC;
		
		--I2C
		scl              : inout std_logic;
		sda              : inout std_logic;
		
		--Display
		seg_0 : out STD_LOGIC_VECTOR (6 downto 0);
		seg_1 : out STD_LOGIC_VECTOR (6 downto 0);
		seg_2 : out STD_LOGIC_VECTOR (6 downto 0);
		seg_3 : out STD_LOGIC_VECTOR (6 downto 0);
		S   :	out STD_LOGIC_VECTOR(3 downto 0)	
	);
END adc_try4;

Architecture Behavioral of adc_try4 is 
	--ADC
	Signal s_ch0	: std_logic_vector (11 downto 0);
	Signal s_ch1	: std_logic_vector (11 downto 0);
	Signal s_ch2	: std_logic_vector (11 downto 0);
	Signal s_ch3	: std_logic_vector (11 downto 0);
	Signal s_ch4	: std_logic_vector (11 downto 0);
	Signal s_ch5	: std_logic_vector (11 downto 0);
	Signal s_ch6	: std_logic_vector (11 downto 0);
	Signal s_ch7	: std_logic_vector (11 downto 0);
	
	--Display de 7 seg
	Signal bcd		: STD_LOGIC_VECTOR (15 downto 0);
	
	--I2C
	Signal read_req         : std_logic                      := '0';
	Signal data_to_master   : std_logic_vector (7 downto 0)  := "01010101";
	Signal data_valid       : std_logic                      := '0';
	Signal data_from_master : std_logic_vector (7 downto 0)  := (others => '0');
	Signal data_reg: std_logic_vector (7 downto 0);

	component ADC_2 is
		port (
			CLOCK : in  std_logic                     := '0'; --      clk.clk
			CH0   : out std_logic_vector(11 downto 0);        -- readings.CH0
			CH1   : out std_logic_vector(11 downto 0);        --         .CH1
			CH2   : out std_logic_vector(11 downto 0);        --         .CH2
			CH3   : out std_logic_vector(11 downto 0);        --         .CH3
			CH4   : out std_logic_vector(11 downto 0);        --         .CH4
			CH5   : out std_logic_vector(11 downto 0);        --         .CH5
			CH6   : out std_logic_vector(11 downto 0);        --         .CH6
			CH7   : out std_logic_vector(11 downto 0);        --         .CH7
			RESET : in  std_logic                     := '0'  --    reset.reset
		);
	end component ADC_2; 
	
	component I2C_slave is
	  generic (
		 SLAVE_ADDR          : std_logic_vector(6 downto 0)   := "0000011"); -- I added := "0000000" to get it to compile
	  port (
		 scl                 : inout std_logic;
		 sda                 : inout std_logic;
		 clk                 : in    std_logic;
		 rst                 : in    std_logic;
		 -- User interface
		 read_req            : out   std_logic;
		 data_to_master      : in    std_logic_vector(7 downto 0);
		 data_valid          : out   std_logic;
		 data_from_master    : out   std_logic_vector(7 downto 0));
	end component I2C_slave;

	component hex7seg is
		port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
			y : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
	
	component bin_a_bcd_12 is										-- dodano komponent, transkoder BIN 2 BCD
    Port ( bin : in  STD_LOGIC_VECTOR (11 downto 0);
           bcd : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	
	Begin

		adc2 : ADC_2 port map(
				clk,
				s_ch0,
				s_ch1,
				s_ch2,
				s_ch3,
				s_ch4,
				s_ch5,
				s_ch6,
				s_ch7,
				NOT rst
			);
			
		i2cSlave: I2C_slave 
			generic map (
				SLAVE_ADDR => "0000011"
				)
			port map(
				scl               => scl,
				sda               => sda,
				clk               => clk,
				rst               => rst,
				-- User interface
				read_req          => read_req,
				data_to_master    => data_to_master,
				data_valid        => data_valid,
				data_from_master  => data_from_master
			);
			
			
		bcd_conversion : bin_a_bcd_12
			port map(
				s_ch0,
				bcd
			);
		
		d_0 : hex7seg 
			port map (
				bcd(3 downto 0),
				seg_0
			);
		d_1 : hex7seg 
			port map (
				bcd(7 downto 4),
				seg_1
			);
		d_2 : hex7seg 
			port map (
				bcd(11 downto 8),
				seg_2
			);
		d_3 : hex7seg 
			port map (
				bcd(15 downto 12),
				seg_3
			);
		

		S  <= bcd(11 downto 8);
		
		process (clk) 
			begin		
				if rising_edge(clk) then
					if data_valid = '1' then
						case data_from_master is
							when X"48" =>  --0x48 es la H en ASCII para pedir la parte alta						
							data_to_master <= bcd(15 downto 8);
							
							when X"4C" =>  --0x4C es la L en ASCII para pedir la parte alta	
							data_to_master <= bcd(7 downto 0);
							
							when others =>
							data_to_master <= X"00";
						
						End Case;

					end if;
				end if;	
		end process;


End Behavioral;


