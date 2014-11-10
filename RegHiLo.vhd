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
   Port (  WriteData_HiLo : in  STD_LOGIC_VECTOR (63 downto 0);	-- Data write to Hi/Lo
           ReadData_HiLo  : out STD_LOGIC_VECTOR (63 downto 0);	-- Data read from Hi/Lo
			  RegWrite_HiLo  : in  STD_LOGIC;								-- 1: write, 0: not write
           CLK            : in  STD_LOGIC);
end RegHiLo;

architecture RegHiLo_arch of RegHiLo is

signal reg_HiLo : std_logic_vector(63 downto 0) := (others => '0');

begin

-- read to Hi/Lo
ReadData_Hilo <= reg_HiLo;

-- write to Hi/Lo
process (CLK)
begin
	if rising_edge(CLK) then
		if RegWrite_HiLo = '1' then
			reg_HiLo <= WriteData_HiLo;
		end if;
	end if;
end process;

end RegHiLo_arch;

