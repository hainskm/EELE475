library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity DE0_SOC_NoHPS_Top_Level is
	port(
		----------------------------------------
		--  CLOCK Inputs
		----------------------------------------
		FPGA_CLK1_50  :  in std_logic;
		FPGA_CLK2_50  :  in std_logic;
		FPGA_CLK3_50  :  in std_logic;
		----------------------------------------
		--  Push Button Inputs (KEY) - 2 inputs
		----------------------------------------
		KEY : in std_logic_vector(1 downto 0);
		----------------------------------------
		--  Switch Inputs (SW) - 4 inputs
		----------------------------------------
		SW  : in std_logic_vector(3 downto 0);
		----------------------------------------
		--  LED Outputs - 8 outputs
		----------------------------------------
		LED : out std_logic_vector(7 downto 0);
		----------------------------------------
		--  GPIO
		----------------------------------------
		GPIO_0 : inout std_logic_vector(35 downto 0);
		GPIO_1 : inout std_logic_vector(35 downto 0)
	);
end entity DE0_SOC_NoHPS_Top_Level;


architecture DE0_SOC_NoHPS_arch of DE0_SOC_NoHPS_Top_Level is

begin

	-----------------------------------------------------------
	-- Insert VHDL code to connect the Switch Inputs (SW)
	-- to the LEDs (bits 0 to 3)
	LED(3 downto 0) <= SW(3 downto 0);
	LED(7 downto 4) <= "0000";

end architecture DE0_SOC_NoHPS_arch;
