----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:13:06 10/31/2014 
-- Design Name: 
-- Module Name:    RegHiLo - RegHiLo_arch 
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

entity RegHiLo is
    Port ( HiLo_Addr      : in  STD_LOGIC;								-- 1 is Hi, 0 is Lo
           WriteData_HiLo : in  STD_LOGIC_VECTOR (31 downto 0);	-- Data write to Hi/Lo
           ReadData_HiLo  : out STD_LOGIC_VECTOR (31 downto 0);	-- Data read from Hi/Lo
			  RegWrite_HiLo  : in  STD_LOGIC;									-- 1: write, 0: not write
           CLK            : in  STD_LOGIC);
end RegHiLo;

architecture RegHiLo_arch of RegHiLo is

type reg_type is array (0 to 1) of std_logic_vector(31 downto 0);
signal REG: reg_type := (others => x"00000000");

begin

-- read to Hi/Lo
ReadData_Hilo <= REG(0) when HiLo_Addr = '0' else
					  REG(1);

-- write to Hi/Lo
process (CLK)
begin
	if rising_edge(CLK) then
		if RegWrite_HiLo = '1' then
		
			if HiLo_Addr = '0' then
				REG(0) <= WriteData_HiLo;
			else
				REG(1) <= WriteData_HiLo;
			end if;
		end if;
	end if;
end process;

end RegHiLo_arch;

