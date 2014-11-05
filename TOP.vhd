----------------------------------------------------------------------------------
-- Company: NUS
-- Engineer: Rajesh Panicker
-- 
-- Create Date:   21:06:18 14/10/2014
-- Design Name: 	TOP (MIPS Wrapper)
-- Target Devices: Nexys 4 (Artix 7 100T)
-- Tool versions: ISE 14.7
-- Description: Top level module - wrapper for MIPS processor
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: See the notes below. The interface (entity) as well as implementation (architecture) can be modified
--
----------------------------------------------------------------------------------


----------------------------------------------------------------
-- NOTE : 
----------------------------------------------------------------

-- Instruction and data memory are WORD addressable (NOT byte addressable). 
-- Each can store 256 WORDs. 
-- Address Range of Instruction Memory is 0x00400000 to 0x004003FC (word addressable - only multiples of 4 are valid). This will cause warnings about 2 unused bits, but that's ok.
-- Address Range of Data Memory is 0x10010000 to 0x100103FC (word addressable - only multiples of 4 are valid).
-- LED <7> downto <0> is mapped to the word address 0x10020000. Only the least significant 8 bits written to this location are used.
-- DIP switches are mapped to the word address 0x10030000. Only the least significant 16 bits read from this location are valid.
-- You can change the above addresses to some other convenient value for simulation, and change it to their original values for synthesis / FPGA testing.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

----------------------------------------------------------------
-- TOP level module interface
----------------------------------------------------------------

entity TOP is
		Port (
			DIP 				: in  STD_LOGIC_VECTOR (15 downto 0);  -- DIP switch inputs. Not debounced.
			LED 				: out  STD_LOGIC_VECTOR (15 downto 0); -- LEDs
			-- <15> showing the divided clock, 
			-- <14> downto <8> showing Addr_Instr(22) & Addr_Instr(7 downto 2), 
			-- <7> downto <0> mapped to the address 0x10020000.
			RESET				: in  STD_LOGIC; 	-- Reset -> BTNC (Centre push button)
			CLK_undiv		: in  STD_LOGIC); -- 100MHz clock. Converted to a lower frequency using CLK_DIV_PROCESS before use.
end TOP;


architecture arch_TOP of TOP is

----------------------------------------------------------------
-- Constants
----------------------------------------------------------------
constant CLK_DIV_BITS	: integer := 0; --26 for a clock of the order of 1Hz. Changed in top.vhd_v2 : use (CLK_DIV_BITS of top.vhd_v2)+1. 
-- 1 for a 50MHz clock.
-- See the notes in CLK_DIV_PROCESS for SIMULATION or for obtaining a 100MHz clock frequency, 
constant N_LEDs			: integer := 8;
constant N_DIPs			: integer := 16;

----------------------------------------------------------------
-- MIPS component declaration
----------------------------------------------------------------
component mips is
    Port ( 	
			Addr_Instr 		: out STD_LOGIC_VECTOR (31 downto 0); 	-- Input to instruction memory (normally comes from the output of PC)
			Instr 			: in STD_LOGIC_VECTOR (31 downto 0);  	-- Output from the instruction memory
			Addr_Data		: out STD_LOGIC_VECTOR (31 downto 0); 	-- Address sent to data memory / memory-mapped peripherals
			Data_In			: in STD_LOGIC_VECTOR (31 downto 0);  	-- Data read from data memory / memory-mapped peripherals
			Data_Out			: out  STD_LOGIC_VECTOR (31 downto 0); -- Data to be written to data memory / memory-mapped peripherals 
			MemRead 			: out STD_LOGIC; 	-- MemRead signal to data memory / memory-mapped peripherals 
			MemWrite 		: out STD_LOGIC; 	-- MemWrite signal to data memory / memory-mapped peripherals 
			RESET				: in STD_LOGIC; 	-- Reset signal for the processor. Should reset ALU, PC and pipeline registers (if present). Resetting general purpose registers is not essential (though it could be done).
			CLK				: in STD_LOGIC 	-- Divided (lower frequency) clock for the processor.
			);
end component mips;

----------------------------------------------------------------
-- MIPS signals
----------------------------------------------------------------
signal Addr_Instr 	: STD_LOGIC_VECTOR (31 downto 0);
signal Instr 			: STD_LOGIC_VECTOR (31 downto 0);
signal Data_In			: STD_LOGIC_VECTOR (31 downto 0);
signal Addr_Data		: STD_LOGIC_VECTOR (31 downto 0);
signal Data_Out		: STD_LOGIC_VECTOR (31 downto 0);
signal MemRead 		: STD_LOGIC; 
signal MemWrite 		: STD_LOGIC; 

----------------------------------------------------------------
-- Others signals
----------------------------------------------------------------
signal dec_DATA_MEM, dec_LED, dec_DIP : std_logic;  -- data memory address decoding
signal CLK : std_logic; --divided (low freq) clock

----------------------------------------------------------------
-- Memory type declaration
----------------------------------------------------------------
type MEM_256x32 is array (0 to 255) of std_logic_vector (31 downto 0); -- 256 words

----------------------------------------------------------------
-- Instruction Memory
----------------------------------------------------------------
constant INSTR_MEM : MEM_256x32 := (
			x"35290064", -- ori $t1, 100
			x"354a00c8", -- ori $t2, 200
			x"212b0190", -- addi $t3, $t1, 400
			x"012a6022", -- sub $t4, $t1, $t2
			x"01496022", -- sub $t4, $t2, $t1
--			x"3c090000", -- start : lui $t1, 0x0000
--			x"35290001", -- 			ori $t1, 0x0001 # constant 1
--			x"3c081002", -- 			lui $t0, 0x1002 # DIP address before offset
--			x"35088001", --			ori $t0, 0x8001
--			x"8d0c7fff", --			lw  $t4, 0x7fff($t0) # DIP address 0x10030000 = 0x10028001 + 0x7fff
--			x"3c081002", --			lui $t0, 0x1002 # LED address before offset
--			x"35080001", --			ori $t0, 0x0001
--			x"3c0a0000", -- loop: 	lui $t2, 0x0000
--			x"354a0004", -- 			ori $t2, 0x0004 # delay counter (n) if using slow clock
--			x"01495022", -- delay: 	sub $t2, $t2, $t1 
--			x"0149582a", -- 			slt $t3, $t2, $t1
--			x"1160fffd", -- 			beq $t3, $zero, delay
--			x"ad0cffff", -- 			sw  $t4, 0xffffffff($t0)	# LED address 0x10020000 = 0x10020001 + 0xffffffff.
--			x"01806027", --			nor $t4, $t4, $zero
--			x"08100007", -- 			j loop # infinite loop; n*3 (delay instructions) + 5 (non-delay instructions).
			others=> x"00000000");

-- The Blinky program reads the DIP switches in the beginning. Let the value read be VAL
-- It will then keep alternating between VAL(7 downto 0) , not(VAL(7 downto 0)), 
-- essentially blinking LED(7 downto 0) according to the initial pattern read from the DIP switches
-- Changes in top.vhd_v2 : Addresses are now calculated using positive and negative offsets - to test if LW and SW works completely.

----------------------------------------------------------------
-- Data Memory
----------------------------------------------------------------
signal DATA_MEM : MEM_256x32 := (others=> x"00000000");


----------------------------------------------------------------	
----------------------------------------------------------------
-- <Wrapper architecture>
----------------------------------------------------------------
----------------------------------------------------------------	
		
begin

----------------------------------------------------------------
-- MIPS port map
----------------------------------------------------------------
MIPS1 : MIPS port map ( 
			Addr_Instr 		=>  Addr_Instr,
			Instr 			=>  Instr, 		
			Data_In			=>  Data_In,	
			Addr_Data		=>  Addr_Data,		
			Data_Out			=>  Data_Out,	
			MemRead 			=>  MemRead,		
			MemWrite 		=>  MemWrite,
			RESET				=>	 RESET,
			CLK				=>  CLK				
			);

----------------------------------------------------------------
-- Data memory address decoding
----------------------------------------------------------------
dec_DATA_MEM <= '1' 	when Addr_Data>=x"10010000" and Addr_Data<=x"100103FC" else '0'; -- To check if address is in the valid range, assuming 256 word memory
dec_LED 		<= '1'	when Addr_Data=x"10020000" else '0';
dec_DIP 		<= '1' 	when Addr_Data=x"10030000" else '0';

----------------------------------------------------------------
-- Data memory read
----------------------------------------------------------------
Data_In 	<= (N_DIPs-1 downto 0 => '0') & DIP							when MemRead = '1' and dec_DIP = '1' 
				else DATA_MEM(conv_integer(Addr_Data(9 downto 2)))	when MemRead = '1' and dec_DATA_MEM = '1'
				else (others=>'0');
				
----------------------------------------------------------------
-- Instruction memory read
----------------------------------------------------------------
Instr <= INSTR_MEM(conv_integer(Addr_Instr(9 downto 2))) 
			when Addr_Instr>=x"00400000" and Addr_Instr<=x"004003FC" -- To check if address is in the valid range, assuming 256 word memory. Also helps minimize warnings (--changed in top.vhd_v2 to have a stricter check)
			else x"00000000";

----------------------------------------------------------------
-- Debug LEDs
----------------------------------------------------------------			
LED(14 downto 8) <= Addr_Instr(22) & Addr_Instr(7 downto 2); -- debug showing PC
LED(15) <= CLK; -- debug showing clock

----------------------------------------------------------------
-- Data Memory-mapped LED write
----------------------------------------------------------------
write_LED: process (CLK)
begin
	if CLK'event and CLK = '1' then
		if RESET = '1' then
			LED(N_LEDs-1 downto 0) <= (others=> '0');
		elsif (MemWrite = '1') and  (dec_LED = '1') then
			LED(N_LEDs-1 downto 0) <= Data_Out(N_LEDs-1 downto 0);
		end if;
	end if;
end process;

----------------------------------------------------------------
-- Data Memory write
----------------------------------------------------------------
write_DATA_MEM: process (CLK)
begin
    if CLK'event and CLK = '1' then
        if (MemWrite = '1' and dec_DATA_MEM = '1') then
            DATA_MEM(conv_integer(Addr_Data(9 downto 2))) <= Data_Out;
        end if;
    end if;
end process;

----------------------------------------------------------------
-- Clock divider
----------------------------------------------------------------
CLK <= CLK_undiv;
-- IMPORTANT : >>> uncomment the previous line and comment out the rest of the process
--					>>> for SIMULATION or for obtaining a 100MHz clock frequency
--CLK_DIV_PROCESS : process(CLK_undiv)
--variable clk_counter : std_logic_vector(CLK_DIV_BITS-1 downto 0) := (others => '0');
--begin
--	if CLK_undiv'event and CLK_undiv = '1' then
--		clk_counter := clk_counter+1;
--		CLK <= clk_counter(CLK_DIV_BITS-1);
--	end if;
--end process;

end arch_TOP;

----------------------------------------------------------------	
----------------------------------------------------------------
-- </Wrapper architecture>
----------------------------------------------------------------
----------------------------------------------------------------	



----------------------------------------------------------------
-- Blinky Program
----------------------------------------------------------------
--#NOTE:	>>> for simulation in MARS, use a lower value for delay counter, 
--#		>>> and a value closer to 0x10010000 for memory mapped devices.
--start :lui $t1, 0x0000
--			ori $t1, 0x0001 # constant 1
--			lui $t0, 0x1002 # DIP address before offset
--			ori $t0, 0x8001
--			lw  $t4, 0x7fff($t0) # DIP address 0x10030000 = 0x10028001 + 0x7fff
--			lui $t0, 0x1002 # LED address before offset
--			ori $t0, 0x0001
--loop: 	lui $t2, 0x0000
--			ori $t2, 0x0004 # delay counter (n) if using slow clock
--			#lui $t2, 0x00ff			
--			#ori $t2, 0xffff # delay counter (n) if using fast clock
--delay: sub $t2, $t2, $t1 
--			slt $t3, $t2, $t1
--			beq $t3, $zero, delay
--			sw  $t4, 0xffffffff($t0)	# LED address 0x10020000 = 0x10020001 + 0xffffffff.
--			nor $t4, $t4, $zero
--			j loop # infinite loop; n*3 (delay instructions) + 5 (non-delay instructions).