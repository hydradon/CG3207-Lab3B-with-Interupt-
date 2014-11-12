----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:34 11/10/2014 
-- Design Name: 
-- Module Name:    CoProcessor - arch_CoProcessor 
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

entity CoProcessor is
	 Port ( EPCin   			 : in  STD_LOGIC_VECTOR(31 downto 0);
			  CauseIn    		 : in  STD_LOGIC_VECTOR(31 downto 0);
			  EPCout				 : out STD_LOGIC_VECTOR(31 downto 0);
			  CauseOut			 :	out STD_LOGIC_VECTOR(31 downto 0);
			  CoProcessorWrite : in  STD_LOGIC;
           CLK              : in  STD_LOGIC
			 );
end CoProcessor;

architecture arch_CoProcessor of CoProcessor is

signal EPC 	 : STD_LOGIC_VECTOR(31 downto 0) := x"00000000";
signal Cause :	STD_LOGIC_VECTOR(31 downto 0)	:= x"00000000";
-- EPC: register 14
-- Status Register: register 12
-- Cause Register: register 13
-- interupt handler MEM(28)

begin

-- Read data from REG
EPCOut <= EPC;
CauseOut <= Cause;

-- Write data to REG
process (CLK)
begin
	if rising_edge(CLK) then
		if CoProcessorWrite = '1' then
			EPC   <= EPCIn;
			Cause <= CauseIn;
		end if;
	end if;
end process;

end arch_CoProcessor;

