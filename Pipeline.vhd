----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:00 11/06/2014 
-- Design Name: 
-- Module Name:    Pipeline - Behavioral 
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

----------------------------------------------------------------------------------
-- IF_ID Pipeline Register
----------------------------------------------------------------------------------
entity IF_ID is
Port (CLK					: 	in STD_LOGIC;
		IFID_Flush			: 	in STD_LOGIC;
		IFID_Stall			: 	in STD_LOGIC;
		IFID_PCPlus4In		:	in STD_LOGIC_VECTOR(31 downto 0);
		IFID_InstrIn		:	in STD_LOGIC_VECTOR(31 downto 0);
		
		IFID_PCPlus4Out	:	out STD_LOGIC_VECTOR(31 downto 0);
		IFID_InstrOut		: 	out STD_LOGIC_VECTOR(31 downto 0));
end Pipeline;

architecture arch_IFID of IF_ID is
begin
process (CLK)
begin
	if rising_edge(CLK) then
		if IFID_Flush = '1' then
			IFID_PCPlus4Out <= x"00000000";
			IFID_InstrOut <= x"00000000";
		elsif IFID_Stall = '0' then
			IFID_PCPlus4Out <= IFID_PCPlus4In;
			IFID_InstrOut <= IFID_InstrIn;
		end if;
	end if;
end process;

end arch_IFID;

----------------------------------------------------------------------------------
-- ID_EX Pipeline Register
----------------------------------------------------------------------------------
entity ID_EX is
Port (CLK						:	in STD_LOGIC;
		IDEX_Flush				:	in STD_LOGIC;
		IDEX_Stall				:	in STD_LOGIC;
		IDEX_BranchIn			:	in STD_LOGIC;
		IDEX_ALUOpIn			:  in STD_LOGIC_VECTOR(1 downto 0);
		IDEX_MemreadIn			:  in STD_LOGIC;
		IDEX_MemtoRegIn		:	in STD_LOGIC;
		IDEX_MemwriteIn		:  in STD_LOGIC;
		IDEX_ALUSrcIn			:	in STD_LOGIC;
		IDEX_RegDstIn			:	in STD_LOGIC;
		IDEX_Instr20To11In	:	in STD_LOGIC_VECTOR(9 downto 0);
		IDEX_PCPlus4In			:	in STD_LOGIC_VECTOR(31 downto 0);
		IDEX_ReadData1In		:	in STD_LOGIC_VECTOR(31 downto 0);
		IDEX_ReadData2In		:	in STD_LOGIC_VECTOR(31 downto 0);
		IDEX_SignExtendedIn	:	in STD_LOGIC_VECTOR(31 downto 0);
		
		IDEX_BranchOut			:	out STD_LOGIC;
		IDEX_ALUOpOut			:  out STD_LOGIC_VECTOR(1 downto 0);
		IDEX_MemreadOut		:  out STD_LOGIC;
		IDEX_MemtoRegOut		:	out STD_LOGIC;
		IDEX_MemwriteOut		:  out STD_LOGIC;
		IDEX_ALUSrcOut			:	out STD_LOGIC;
		IDEX_RegDstOut			:	out STD_LOGIC;
		IDEX_Instr20To11Out	:	out STD_LOGIC_VECTOR(9 downto 0);
		IDEX_PCPlus4Out		:	out STD_LOGIC_VECTOR(31 downto 0);
		IDEX_ReadData1Out		:	out STD_LOGIC_VECTOR(31 downto 0);
		IDEX_ReadData2Out		:	out STD_LOGIC_VECTOR(31 downto 0);
		IDEX_SignExtendedOut	:	out STD_LOGIC_VECTOR(31 downto 0);
		);
end Pipeline;

architecture arch_IDEX of ID_EX is
begin
process (CLK)
begin
	if rising_edge(CLK) then
		if IDEX_Flush = '1' then
			IDEX_BranchOut			<= '0';
			IDEX_ALUOpOut			<= "00";
			IDEX_MemreadOut		<= '0';
			IDEX_MemtoRegOut		<= '0';
			IDEX_MemwriteOut		<= '0';
			IDEX_ALUSrcOut			<= '0';
			IDEX_RegDstOut			<= '0';
			IDEX_Instr20To11Out	<= "0000000000";
			IDEX_PCPlus4Out		<= x"00000000";
			IDEX_ReadData1Out		<= x"00000000";
			IDEX_ReadData2Out		<= x"00000000";
			IDEX_SignExtendedOut	<= x"00000000";
			
		elsif IDEX_Stall = '0' then
			IDEX_BranchOut			<= IDEX_BranchIn;
			IDEX_ALUOpOut			<= IDEX_ALUOpIn;
			IDEX_MemreadOut		<= IDEX_MemreadIn;
			IDEX_MemtoRegOut		<= IDEX_MemtoRegIn;
			IDEX_MemwriteOut		<= IDEX_MemwriteIn;
			IDEX_ALUSrcOut			<= IDEX_ALUSrcIn;
			IDEX_RegDstOut			<= IDEX_RegDstIn;
			IDEX_Instr20To11Out	<= IDEX_Instr20To11In;
			IDEX_PCPlus4Out		<= IDEX_PCPlus4In;
			IDEX_ReadData1Out		<= IDEX_ReadData1In;
			IDEX_ReadData2Out		<= IDEX_ReadData2In;
			IDEX_SignExtendedOut	<= IDEX_SignExtendedIn;
		end if;
	end if;
end process;

end arch_IDEX;

----------------------------------------------------------------------------------
-- EX_MEM Pipeline Register
----------------------------------------------------------------------------------
entity EX_MEM is
Port (CLK							:	in STD_LOGIC;
		EXMEM_Flush					:	in STD_LOGIC;
		EXMEM_Stall					:	in STD_LOGIC;
		EXMEM_BranchIn				:	in STD_LOGIC;
		EXMEM_BranchTargetIn		:	in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_MemreadIn			:	in STD_LOGIC;
		EXMEM_MemtoRegIn			:	in STD_LOGIC;
		EXMEM_MemwriteIn			:	in STD_LOGIC;
		EXMEM_ALUZeroIn			:	in STD_LOGIC;
		EXMEM_ALUResult1In		:	in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_ALUResult2In		:  in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_WriteDataMemIn		:	in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_WriteAddrRegIn		:	in STD_LOGIC_VECTOR(31 downto 0);

		EXMEM_BranchOut			:	in STD_LOGIC;
		EXMEM_BranchTargetOut	:	in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_MemreadOut			:	in STD_LOGIC;
		EXMEM_MemtoRegOut			:	in STD_LOGIC;
		EXMEM_MemwriteIn			:	in STD_LOGIC;
		EXMEM_ALUZeroIn			:	in STD_LOGIC;
		EXMEM_ALUResult1In		:	in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_ALUResult2In		:  in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_WriteDataMemIn		:	in STD_LOGIC_VECTOR(31 downto 0);
		EXMEM_WriteAddrRegIn		:	in STD_LOGIC_VECTOR(31 downto 0);
		);
end Pipeline;

architecture arch_EXMEM of EX_MEM is
begin
process (CLK)
begin
	if rising_edge(CLK) then
		if RESET = '1' then
		else
		end if;
	end if;
end process;

end arch_EXMEM;

----------------------------------------------------------------------------------
-- MEM_WB Pipeline Register
----------------------------------------------------------------------------------
entity MEM_WB is
Port ();
end Pipeline;

architecture arch_MEMWB of MEM_WB is
begin
process (CLK)
begin
	if rising_edge(CLK) then
		if RESET = '1' then
		else
		end if;
	end if;
end process;

end arch_MEMWB;
