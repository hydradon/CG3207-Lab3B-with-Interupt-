----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:56:50 11/03/2014 
-- Design Name: 
-- Module Name:    CoProcessor0 - CoProcessor0 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CoProcessor0 is
    Port ( CoProAddr_Read   : in  STD_LOGIC_VECTOR(4 downto 0);
			  CoProcessorIn    : in  STD_LOGIC_VECTOR(31 downto 0);
			  CoProAddr_Write  : in  STD_LOGIC_VECTOR(4 downto 0);
           CoProcessorOut   : out STD_LOGIC_VECTOR(31 downto 0);
			  CoProcessorWrite : in  STD_LOGIC;
           CLK              : in  STD_LOGIC);
end CoProcessor0;

architecture CoProcessor0 of CoProcessor0 is

type reg_type is array (0 to 31) of std_logic_vector(31 downto 0);
signal REG: reg_type := (others => x"00000000");

-- EPC: register 4
-- Count: register 9
-- Compare Register: register 11
-- Status Register: register 12
-- Cause Register: register 13

begin

-- Read data from REG
CoProcessorOut <= REG(conv_integer(CoProAddr_Read));


-- Write data to REG
process (CLK)
begin
	if rising_edge(CLK) then
		if CoProcessorWrite = '1' then
			REG(conv_integer(CoProAddr_Write)) <= CoProcessorIn;
		end if;
	end if;
end process;

end CoProcessor0;

