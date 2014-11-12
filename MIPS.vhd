----------------------------------------------------------------------------------
-- Company: NUS
-- Engineer: Rajesh Panicker
-- 
-- Create Date:   21:06:18 14/10/2014
-- Design Name: 	MIPS
-- Target Devices: Nexys 4 (Artix 7 100T)
-- Tool versions: ISE 14.7
-- Description: MIPS processor
--
-- Dependencies: PC, ALU, ControlUnit, RegFile
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: DO NOT modify the interface (entity). Implementation (architecture) can be modified.
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity MIPS is -- DO NOT modify the interface (entity)
    Port ( 	
			Addr_Instr 		: out STD_LOGIC_VECTOR (31 downto 0);
			Instr 			: in STD_LOGIC_VECTOR (31 downto 0);
			Addr_Data		: out STD_LOGIC_VECTOR (31 downto 0);
			Data_In			: in STD_LOGIC_VECTOR (31 downto 0);
			Data_Out			: out  STD_LOGIC_VECTOR (31 downto 0);
			MemRead 			: out STD_LOGIC; 
			MemWrite 		: out STD_LOGIC; 
			RESET				: in STD_LOGIC;
			CLK				: in STD_LOGIC
			);
end MIPS;


architecture arch_MIPS of MIPS is

----------------------------------------------------------------
-- Program Counter
----------------------------------------------------------------
component PC is
	Port(	
			PC_in 	: in STD_LOGIC_VECTOR (31 downto 0);
			PC_out 	: out STD_LOGIC_VECTOR (31 downto 0);
			RESET		: in STD_LOGIC;
			CLK		: in STD_LOGIC);
end component;

----------------------------------------------------------------
-- ALU
----------------------------------------------------------------
component ALU is
	 generic (width	: integer);
    Port ( 	
			CLK				: in STD_LOGIC;
			ALU_InA 			: in  STD_LOGIC_VECTOR (31 downto 0);				
			ALU_InB 			: in  STD_LOGIC_VECTOR (31 downto 0);
			ALU_Result1 	: out STD_LOGIC_VECTOR (31 downto 0);
			ALU_Result2 	: out STD_LOGIC_VECTOR (31 downto 0);
			ALU_Control		: in  STD_LOGIC_VECTOR (5 downto 0);
			ALU_Status		: out STD_LOGIC_VECTOR(2 downto 0));
end component;

----------------------------------------------------------------
-- Control Unit
----------------------------------------------------------------
component ControlUnit is
    Port ( 	
			opcode 		: in   STD_LOGIC_VECTOR (5 downto 0);
			ALUOp 		: out  STD_LOGIC_VECTOR (2 downto 0);
			Branch 		: out  STD_LOGIC;
			Jump	 		: out  STD_LOGIC;				
			MemRead 		: out  STD_LOGIC;	
			MemtoReg 	: out  STD_LOGIC;	
			InstrtoReg	: out  STD_LOGIC; -- true for LUI. When true, Instr(15 downto 0)&x"0000" is written to rt
			PCtoReg		: out  STD_LOGIC;
			MemWrite		: out  STD_LOGIC;	
			ALUSrc 		: out  STD_LOGIC;	
			SignExtend 	: out  STD_LOGIC; -- false for ORI 
			RegWrite		: out  STD_LOGIC;
			RegDst		: out  STD_LOGIC);
end component;

----------------------------------------------------------------
-- Register File
----------------------------------------------------------------
component RegFile is
    Port ( 	
			ReadAddr1_Reg 	: in  STD_LOGIC_VECTOR (4 downto 0);
			ReadAddr2_Reg 	: in  STD_LOGIC_VECTOR (4 downto 0);
			ReadData1_Reg 	: out STD_LOGIC_VECTOR (31 downto 0);
			ReadData2_Reg 	: out STD_LOGIC_VECTOR (31 downto 0);				
			WriteAddr_Reg	: in  STD_LOGIC_VECTOR (4 downto 0); 
			WriteData_Reg 	: in STD_LOGIC_VECTOR (31 downto 0);
			RegWrite 		: in STD_LOGIC; 
			CLK 				: in  STD_LOGIC);
end component;

----------------------------------------------------------------
-- Hi/Lo register
----------------------------------------------------------------
component RegHiLo is
     Port ( 
           WriteData_HiLo : in  STD_LOGIC_VECTOR (63 downto 0);	-- Data write to Hi/Lo
           ReadData_HiLo  : out STD_LOGIC_VECTOR (63 downto 0);	-- Data read from Hi/Lo
			  RegWrite_HiLo  : in  STD_LOGIC;								-- 1: write, 0: not write
           CLK            : in  STD_LOGIC);
end component;

----------------------------------------------------------------
-- CoProcessor
----------------------------------------------------------------
component CoProcessor is
   Port (  EPCin   			 : in  STD_LOGIC_VECTOR(31 downto 0);
			  CauseIn    		 : in  STD_LOGIC_VECTOR(31 downto 0);
			  EPCout				 : out STD_LOGIC_VECTOR(31 downto 0);
			  CauseOut			 :	out STD_LOGIC_VECTOR(31 downto 0);
			  CoProcessorWrite : in  STD_LOGIC;
           CLK              : in  STD_LOGIC
			 );
end component;

----------------------------------------------------------------
-- SignExtender
----------------------------------------------------------------
component SignExtender is
    Port ( Input  : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

----------------------------------------------------------------
-- PC Signals
----------------------------------------------------------------
	signal	PC_in 		:  STD_LOGIC_VECTOR (31 downto 0) := x"00400000";
	signal	PC_out 		:  STD_LOGIC_VECTOR (31 downto 0) := x"00400000";

----------------------------------------------------------------
-- ALU Signals
----------------------------------------------------------------
	signal	ALU_InA 				:  STD_LOGIC_VECTOR (31 downto 0);
	signal	ALU_InB 				:  STD_LOGIC_VECTOR (31 downto 0);
	signal	ALU_Result1 		:  STD_LOGIC_VECTOR (31 downto 0);
	signal	ALU_Result2 		:  STD_LOGIC_VECTOR (31 downto 0);
	signal	ALU_Control			:  STD_LOGIC_VECTOR (5 downto 0);
	signal	ALU_Status			:  STD_LOGIC_VECTOR (2 downto 0);

----------------------------------------------------------------
-- Control Unit Signals
----------------------------------------------------------------				
 	signal	opcode 		:  STD_LOGIC_VECTOR (5 downto 0);
	signal	ALUOp 		:  STD_LOGIC_VECTOR (2 downto 0);
	signal	Branch 		:  STD_LOGIC;
	signal	Jump	 		:  STD_LOGIC;	
	signal	MemtoReg 	:  STD_LOGIC;
	signal 	InstrtoReg	: 	STD_LOGIC;	
	signal	PCtoReg		:  STD_LOGIC;
	signal	ALUSrc 		:  STD_LOGIC;	
	signal	SignExtend 	: 	STD_LOGIC;
	signal	RegWrite		: 	STD_LOGIC;
	signal	RegDst		:  STD_LOGIC;

----------------------------------------------------------------
-- Register File Signals
----------------------------------------------------------------
 	signal	ReadAddr1_Reg 	:  STD_LOGIC_VECTOR (4 downto 0);
	signal	ReadAddr2_Reg 	:  STD_LOGIC_VECTOR (4 downto 0);
	signal	ReadData1_Reg 	:  STD_LOGIC_VECTOR (31 downto 0);
	signal	ReadData2_Reg 	:  STD_LOGIC_VECTOR (31 downto 0);
	signal	WriteAddr_Reg	:  STD_LOGIC_VECTOR (4 downto 0); 
	signal	WriteData_Reg 	:  STD_LOGIC_VECTOR (31 downto 0);
	
----------------------------------------------------------------
-- Hi/Lo Register signals
----------------------------------------------------------------								
   signal  WriteData_HiLo : STD_LOGIC_VECTOR (63 downto 0);
   signal  ReadData_HiLo  : STD_LOGIC_VECTOR (63 downto 0);
	signal  RegWrite_HiLo  : STD_LOGIC;
	
----------------------------------------------------------------
-- CoProcessor Signals
----------------------------------------------------------------								
   signal  EPCin   			 : STD_LOGIC_VECTOR(31 downto 0);
	signal  CauseIn    		 : STD_LOGIC_VECTOR(31 downto 0);
	signal  EPCout				 : STD_LOGIC_VECTOR(31 downto 0);
	signal  CauseOut			 :	STD_LOGIC_VECTOR(31 downto 0);
	signal  CoProcessorWrite : STD_LOGIC;
	
----------------------------------------------------------------
-- SignExtend Signals
----------------------------------------------------------------
 	signal	SignEx_In 	:  STD_LOGIC_VECTOR (15 downto 0);
	signal	SignEx_Out 	:  STD_LOGIC_VECTOR (31 downto 0);
	
----------------------------------------------------------------
-- Other Signals
----------------------------------------------------------------
	--<any other signals used goes here>
	signal PCPlus4 	: STD_LOGIC_VECTOR (31 downto 0) := x"00400000";
	signal ALU_func	: STD_LOGIC_VECTOR (4 downto 0);

----------------------------------------------------------------	
----------------------------------------------------------------
-- <MIPS architecture>
----------------------------------------------------------------
----------------------------------------------------------------
begin

----------------------------------------------------------------
-- PC port map
----------------------------------------------------------------
PC1				: PC port map
						(
						PC_in 	=> PC_in, 
						PC_out 	=> PC_out, 
						RESET 	=> RESET,
						CLK 		=> CLK
						);
						
----------------------------------------------------------------
-- ALU port map
----------------------------------------------------------------
ALU1 				: ALU 
					generic map (width =>  32)
					port map
						(
						CLK				=> CLK,
						ALU_InA 			=> ALU_InA, 
						ALU_InB 			=> ALU_InB, 
						ALU_Result1 	=> ALU_Result1,
						ALU_Result2 	=> ALU_Result2,
						ALU_Control 	=> ALU_Control, 
						ALU_Status  	=> ALU_Status
						);
						
----------------------------------------------------------------
-- PC port map
----------------------------------------------------------------
ControlUnit1 	: ControlUnit port map
						(
						opcode 		=> opcode, 
						ALUOp 		=> ALUOp, 
						Branch 		=> Branch, 
						Jump 			=> Jump, 
						MemRead 		=> MemRead, 
						MemtoReg 	=> MemtoReg, 
						InstrtoReg 	=> InstrtoReg, 
						PCtoReg		=> PCtoReg,
						MemWrite 	=> MemWrite, 
						ALUSrc 		=> ALUSrc, 
						SignExtend 	=> SignExtend, 
						RegWrite 	=> RegWrite,
						RegDst 		=> RegDst
						);
						
----------------------------------------------------------------
-- Register file port map
----------------------------------------------------------------
RegFile1			: RegFile port map
						(
						ReadAddr1_Reg 	=>  ReadAddr1_Reg,
						ReadAddr2_Reg 	=>  ReadAddr2_Reg,
						ReadData1_Reg 	=>  ReadData1_Reg,
						ReadData2_Reg 	=>  ReadData2_Reg,
						WriteAddr_Reg 	=>  WriteAddr_Reg,
						WriteData_Reg 	=>  WriteData_Reg,
						RegWrite 		=>  RegWrite,
						CLK 				=>  CLK				
						);
						
----------------------------------------------------------------
-- HiLo register port map
----------------------------------------------------------------
RegHiLo1			 :RegHiLo port map
					 (
					 ReadData_HiLo  => ReadData_HiLo,
					 WriteData_HiLo => WriteData_HiLo,
					 RegWrite_HiLo  => RegWrite_HiLo,
					 CLK            => CLK
					 );

----------------------------------------------------------------
-- CoProcessor port map
----------------------------------------------------------------
CoProcessor1		:CoProcessor port map
						(
						EPCin   			  => EPCin,
						CauseIn    		  => CauseIn,
						EPCout			  => EPCout, -- 1 read EPC, 0 read cause
						CauseOut			  => CauseOut,
						CoProcessorWrite => CoProcessorWrite,
						CLK              => CLK
						);
					 
----------------------------------------------------------------
-- SignExtender port map
----------------------------------------------------------------
SignExtender1		:SignExtender port map
						(
						Input => SignEx_In,
						Output => SignEx_Out
						);
----------------------------------------------------------------
-- Processor logic
----------------------------------------------------------------
--<Rest of the logic goes here>

-- Output to TOP
Addr_Instr <= PC_out;
Addr_Data <= ALU_Result1;
Data_Out <=	ReadData2_Reg;

-- Input for PC
PCPlus4 <= PC_out + 4 when ALU_Status(2) = '0' else
			  PC_out;
PC_In <= x"0040001c" when ALU_Status(1) = '1' else -- generate Interupt
			Readdata1_Reg when ALUOp = "010" and Instr(5 downto 1) = "00100" else -- JR, JALR
			(PCPlus4(31 downto 28) & Instr(25 downto 0) & "00") when Jump = '1' else
			PCPlus4 + (SignEx_out(29 downto 0) & "00") when Branch = '1' and ALU_Status(0) = '1' else	-- beq, bgez
			EPCout + 4 when (Instr(31 downto 26) = "010000"	and Instr(5 downto 0) = "011000") else -- eret
			PCPlus4;

-- Input for ALU
ALU_InA <= ReadData2_Reg when (ALUOp = "010" and Instr(5 downto 3) = "000") else
				ReadData1_Reg;
ALU_InB <= (x"000000" & "000" & Instr(10 downto 6)) when (ALUOp = "010" and Instr(5 downto 2) = "0000") else
				x"00000000" when ALUOp = "101" and Branch = '1' else  -- BGEZ
				ReadData1_Reg when (ALUOp = "010" and Instr(5 downto 2) = "0001") else
				ReadData2_Reg when ALUSrc = '0' else
				SignEx_Out when SignExtend = '1' else
			  (x"0000" & Instr(15 downto 0));  -- for ADDIU, ORI (non sign extend imm)

ALU_Func <= "00110" when ALUOp = "001" else						-- add when branch
				"00010" when ALUOp = "000" else						-- add when lw, sw, addiu, addi
				"00001" when ALUOp = "011"	else 						-- or when ori
				"00111" when ALUOp = "101" else						-- slt when bgez, slti
				"XXXXX" when ALUOp = "110" else						-- MFC0, MTC0, ERET
				"00000" when Instr(5 downto 0) = "100100" else	-- and
				"00001" when Instr(5 downto 0) = "100101" else	-- or
				"01100" when Instr(5 downto 0) = "100111" else	-- nor
				"00100" when Instr(5 downto 0) = "100110" else	-- xor
				"00010" when Instr(5 downto 0) = "100000" else	-- add
				"00110" when Instr(5 downto 0) = "100010" else	-- sub
				"00111" when Instr(5 downto 0) = "101010" else 	-- slt
				"01110" when Instr(5 downto 0) = "101011"else	-- sltu
				"00101" when (Instr(5 downto 0) = "000000" or 
								  Instr(5 downto 0) = "000100") else	-- sll, sllv
				"01101" when (Instr(5 downto 0) = "000010" or 
								  Instr(5 downto 0) = "000110") else	-- srl, srlv
				"01001" when (Instr(5 downto 0) = "000011" or 
								  Instr(5 downto 0) = "000111") else	-- sra, srav
				"10000" when Instr(5 downto 0) = "011000" else	-- mult
				"10001" when Instr(5 downto 0) = "011001" else	-- multu
				"10010" when Instr(5 downto 0) = "011010" else	-- div
				"10011" when Instr(5 downto 0) = "011011" else	-- divu
				"XXXXX";														-- unknown operation
ALU_Control <= RESET & ALU_Func;	

-- Input for ControlUnit
opcode <= Instr(31 downto 26);


-- Input for RegFile
ReadAddr1_Reg <= Instr(25 downto 21);
ReadAddr2_Reg <= Instr(20 downto 16);
WriteAddr_Reg <= "11111" when PCtoReg = '1' or 
										(ALUOp = "010" and Instr(5 downto 0) = "001001") else
						Instr(20 downto 16) when RegDst = '0' else
					  Instr(15 downto 11);
WriteData_Reg <= PC_in + 4 when PCtoReg = '1' or 
										  (ALUOp = "010" and Instr(5 downto 0) = "001001") else
						Data_in when MemtoReg = '1' else
					  (Instr(15 downto 0) & x"0000") when InstrtoReg = '1' else
					  ReadData_HiLo(63 downto 32) when (ALUOp = "010" and Instr(5 downto 0) = "010000") else
					  ReadData_HiLo(31 downto 0) when (ALUOp = "010" and Instr(5 downto 0) = "010010") else
					  CauseOut when (Instr(31 downto 26) = "010000" and Instr(23) = '0' and Instr(5 downto 0) = "000000") else -- MFC0
					  ALU_Result1;
					  
-- Input for RegHiLo
RegWrite_HiLo <= '1' when (ALUOp = "010" and Instr(5 downto 3) = "011") else -- write HiLO when DIV/U and MULT/U
					  '0';
WriteData_HiLo <= ALU_Result2 & ALU_Result1;

-- Input for SignExtender
SignEx_In <= Instr(15 downto 0);

-- Input for CoProcessor0
EPCIn   <= PC_out;
CauseIn <=	x"00000002" when ALU_Status(1) = '1' else
				x"00000000";
CoProcessorWrite <= '1' when ALU_Status(1) = '1' or (Instr(31 downto 26) = "010000" and Instr(23) = '1') else -- MTC0
							'0';

end arch_MIPS;

----------------------------------------------------------------	
----------------------------------------------------------------
-- </MIPS architecture>
----------------------------------------------------------------
----------------------------------------------------------------	
