--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RegHiLo_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 31 11:27:59 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm RegHiLo -w -dir netgen/synthesis -ofmt vhdl -sim RegHiLo.ngc RegHiLo_synthesis.vhd 
-- Device	: xc7a100t-1-csg324
-- Input file	: RegHiLo.ngc
-- Output file	: C:\Users\Quang\Desktop\CG3207\CG3207-Lab3B\netgen\synthesis\RegHiLo_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: RegHiLo
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity RegHiLo is
  port (
    HiLo_Addr : in STD_LOGIC := 'X'; 
    RegWrite_HiLo : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    WriteData_HiLo : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    ReadData_HiLo : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end RegHiLo;

architecture Structure of RegHiLo is
  signal WriteData_HiLo_63_IBUF_0 : STD_LOGIC; 
  signal WriteData_HiLo_62_IBUF_1 : STD_LOGIC; 
  signal WriteData_HiLo_61_IBUF_2 : STD_LOGIC; 
  signal WriteData_HiLo_60_IBUF_3 : STD_LOGIC; 
  signal WriteData_HiLo_59_IBUF_4 : STD_LOGIC; 
  signal WriteData_HiLo_58_IBUF_5 : STD_LOGIC; 
  signal WriteData_HiLo_57_IBUF_6 : STD_LOGIC; 
  signal WriteData_HiLo_56_IBUF_7 : STD_LOGIC; 
  signal WriteData_HiLo_55_IBUF_8 : STD_LOGIC; 
  signal WriteData_HiLo_54_IBUF_9 : STD_LOGIC; 
  signal WriteData_HiLo_53_IBUF_10 : STD_LOGIC; 
  signal WriteData_HiLo_52_IBUF_11 : STD_LOGIC; 
  signal WriteData_HiLo_51_IBUF_12 : STD_LOGIC; 
  signal WriteData_HiLo_50_IBUF_13 : STD_LOGIC; 
  signal WriteData_HiLo_49_IBUF_14 : STD_LOGIC; 
  signal WriteData_HiLo_48_IBUF_15 : STD_LOGIC; 
  signal WriteData_HiLo_47_IBUF_16 : STD_LOGIC; 
  signal WriteData_HiLo_46_IBUF_17 : STD_LOGIC; 
  signal WriteData_HiLo_45_IBUF_18 : STD_LOGIC; 
  signal WriteData_HiLo_44_IBUF_19 : STD_LOGIC; 
  signal WriteData_HiLo_43_IBUF_20 : STD_LOGIC; 
  signal WriteData_HiLo_42_IBUF_21 : STD_LOGIC; 
  signal WriteData_HiLo_41_IBUF_22 : STD_LOGIC; 
  signal WriteData_HiLo_40_IBUF_23 : STD_LOGIC; 
  signal WriteData_HiLo_39_IBUF_24 : STD_LOGIC; 
  signal WriteData_HiLo_38_IBUF_25 : STD_LOGIC; 
  signal WriteData_HiLo_37_IBUF_26 : STD_LOGIC; 
  signal WriteData_HiLo_36_IBUF_27 : STD_LOGIC; 
  signal WriteData_HiLo_35_IBUF_28 : STD_LOGIC; 
  signal WriteData_HiLo_34_IBUF_29 : STD_LOGIC; 
  signal WriteData_HiLo_33_IBUF_30 : STD_LOGIC; 
  signal WriteData_HiLo_32_IBUF_31 : STD_LOGIC; 
  signal WriteData_HiLo_31_IBUF_32 : STD_LOGIC; 
  signal WriteData_HiLo_30_IBUF_33 : STD_LOGIC; 
  signal WriteData_HiLo_29_IBUF_34 : STD_LOGIC; 
  signal WriteData_HiLo_28_IBUF_35 : STD_LOGIC; 
  signal WriteData_HiLo_27_IBUF_36 : STD_LOGIC; 
  signal WriteData_HiLo_26_IBUF_37 : STD_LOGIC; 
  signal WriteData_HiLo_25_IBUF_38 : STD_LOGIC; 
  signal WriteData_HiLo_24_IBUF_39 : STD_LOGIC; 
  signal WriteData_HiLo_23_IBUF_40 : STD_LOGIC; 
  signal WriteData_HiLo_22_IBUF_41 : STD_LOGIC; 
  signal WriteData_HiLo_21_IBUF_42 : STD_LOGIC; 
  signal WriteData_HiLo_20_IBUF_43 : STD_LOGIC; 
  signal WriteData_HiLo_19_IBUF_44 : STD_LOGIC; 
  signal WriteData_HiLo_18_IBUF_45 : STD_LOGIC; 
  signal WriteData_HiLo_17_IBUF_46 : STD_LOGIC; 
  signal WriteData_HiLo_16_IBUF_47 : STD_LOGIC; 
  signal WriteData_HiLo_15_IBUF_48 : STD_LOGIC; 
  signal WriteData_HiLo_14_IBUF_49 : STD_LOGIC; 
  signal WriteData_HiLo_13_IBUF_50 : STD_LOGIC; 
  signal WriteData_HiLo_12_IBUF_51 : STD_LOGIC; 
  signal WriteData_HiLo_11_IBUF_52 : STD_LOGIC; 
  signal WriteData_HiLo_10_IBUF_53 : STD_LOGIC; 
  signal WriteData_HiLo_9_IBUF_54 : STD_LOGIC; 
  signal WriteData_HiLo_8_IBUF_55 : STD_LOGIC; 
  signal WriteData_HiLo_7_IBUF_56 : STD_LOGIC; 
  signal WriteData_HiLo_6_IBUF_57 : STD_LOGIC; 
  signal WriteData_HiLo_5_IBUF_58 : STD_LOGIC; 
  signal WriteData_HiLo_4_IBUF_59 : STD_LOGIC; 
  signal WriteData_HiLo_3_IBUF_60 : STD_LOGIC; 
  signal WriteData_HiLo_2_IBUF_61 : STD_LOGIC; 
  signal WriteData_HiLo_1_IBUF_62 : STD_LOGIC; 
  signal WriteData_HiLo_0_IBUF_63 : STD_LOGIC; 
  signal HiLo_Addr_IBUF_64 : STD_LOGIC; 
  signal RegWrite_HiLo_IBUF_65 : STD_LOGIC; 
  signal CLK_BUFGP_66 : STD_LOGIC; 
  signal ReadData_HiLo_31_OBUF_131 : STD_LOGIC; 
  signal ReadData_HiLo_30_OBUF_132 : STD_LOGIC; 
  signal ReadData_HiLo_29_OBUF_133 : STD_LOGIC; 
  signal ReadData_HiLo_28_OBUF_134 : STD_LOGIC; 
  signal ReadData_HiLo_27_OBUF_135 : STD_LOGIC; 
  signal ReadData_HiLo_26_OBUF_136 : STD_LOGIC; 
  signal ReadData_HiLo_25_OBUF_137 : STD_LOGIC; 
  signal ReadData_HiLo_24_OBUF_138 : STD_LOGIC; 
  signal ReadData_HiLo_23_OBUF_139 : STD_LOGIC; 
  signal ReadData_HiLo_22_OBUF_140 : STD_LOGIC; 
  signal ReadData_HiLo_21_OBUF_141 : STD_LOGIC; 
  signal ReadData_HiLo_20_OBUF_142 : STD_LOGIC; 
  signal ReadData_HiLo_19_OBUF_143 : STD_LOGIC; 
  signal ReadData_HiLo_18_OBUF_144 : STD_LOGIC; 
  signal ReadData_HiLo_17_OBUF_145 : STD_LOGIC; 
  signal ReadData_HiLo_16_OBUF_146 : STD_LOGIC; 
  signal ReadData_HiLo_15_OBUF_147 : STD_LOGIC; 
  signal ReadData_HiLo_14_OBUF_148 : STD_LOGIC; 
  signal ReadData_HiLo_13_OBUF_149 : STD_LOGIC; 
  signal ReadData_HiLo_12_OBUF_150 : STD_LOGIC; 
  signal ReadData_HiLo_11_OBUF_151 : STD_LOGIC; 
  signal ReadData_HiLo_10_OBUF_152 : STD_LOGIC; 
  signal ReadData_HiLo_9_OBUF_153 : STD_LOGIC; 
  signal ReadData_HiLo_8_OBUF_154 : STD_LOGIC; 
  signal ReadData_HiLo_7_OBUF_155 : STD_LOGIC; 
  signal ReadData_HiLo_6_OBUF_156 : STD_LOGIC; 
  signal ReadData_HiLo_5_OBUF_157 : STD_LOGIC; 
  signal ReadData_HiLo_4_OBUF_158 : STD_LOGIC; 
  signal ReadData_HiLo_3_OBUF_159 : STD_LOGIC; 
  signal ReadData_HiLo_2_OBUF_160 : STD_LOGIC; 
  signal ReadData_HiLo_1_OBUF_161 : STD_LOGIC; 
  signal ReadData_HiLo_0_OBUF_162 : STD_LOGIC; 
  signal reg_HiLo : STD_LOGIC_VECTOR ( 63 downto 0 ); 
begin
  reg_HiLo_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_0_IBUF_63,
      Q => reg_HiLo(0)
    );
  reg_HiLo_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_1_IBUF_62,
      Q => reg_HiLo(1)
    );
  reg_HiLo_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_2_IBUF_61,
      Q => reg_HiLo(2)
    );
  reg_HiLo_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_3_IBUF_60,
      Q => reg_HiLo(3)
    );
  reg_HiLo_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_4_IBUF_59,
      Q => reg_HiLo(4)
    );
  reg_HiLo_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_5_IBUF_58,
      Q => reg_HiLo(5)
    );
  reg_HiLo_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_6_IBUF_57,
      Q => reg_HiLo(6)
    );
  reg_HiLo_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_7_IBUF_56,
      Q => reg_HiLo(7)
    );
  reg_HiLo_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_8_IBUF_55,
      Q => reg_HiLo(8)
    );
  reg_HiLo_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_9_IBUF_54,
      Q => reg_HiLo(9)
    );
  reg_HiLo_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_10_IBUF_53,
      Q => reg_HiLo(10)
    );
  reg_HiLo_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_11_IBUF_52,
      Q => reg_HiLo(11)
    );
  reg_HiLo_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_12_IBUF_51,
      Q => reg_HiLo(12)
    );
  reg_HiLo_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_13_IBUF_50,
      Q => reg_HiLo(13)
    );
  reg_HiLo_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_14_IBUF_49,
      Q => reg_HiLo(14)
    );
  reg_HiLo_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_15_IBUF_48,
      Q => reg_HiLo(15)
    );
  reg_HiLo_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_16_IBUF_47,
      Q => reg_HiLo(16)
    );
  reg_HiLo_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_17_IBUF_46,
      Q => reg_HiLo(17)
    );
  reg_HiLo_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_18_IBUF_45,
      Q => reg_HiLo(18)
    );
  reg_HiLo_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_19_IBUF_44,
      Q => reg_HiLo(19)
    );
  reg_HiLo_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_20_IBUF_43,
      Q => reg_HiLo(20)
    );
  reg_HiLo_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_21_IBUF_42,
      Q => reg_HiLo(21)
    );
  reg_HiLo_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_22_IBUF_41,
      Q => reg_HiLo(22)
    );
  reg_HiLo_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_23_IBUF_40,
      Q => reg_HiLo(23)
    );
  reg_HiLo_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_24_IBUF_39,
      Q => reg_HiLo(24)
    );
  reg_HiLo_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_25_IBUF_38,
      Q => reg_HiLo(25)
    );
  reg_HiLo_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_26_IBUF_37,
      Q => reg_HiLo(26)
    );
  reg_HiLo_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_27_IBUF_36,
      Q => reg_HiLo(27)
    );
  reg_HiLo_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_28_IBUF_35,
      Q => reg_HiLo(28)
    );
  reg_HiLo_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_29_IBUF_34,
      Q => reg_HiLo(29)
    );
  reg_HiLo_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_30_IBUF_33,
      Q => reg_HiLo(30)
    );
  reg_HiLo_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_31_IBUF_32,
      Q => reg_HiLo(31)
    );
  reg_HiLo_32 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_32_IBUF_31,
      Q => reg_HiLo(32)
    );
  reg_HiLo_33 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_33_IBUF_30,
      Q => reg_HiLo(33)
    );
  reg_HiLo_34 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_34_IBUF_29,
      Q => reg_HiLo(34)
    );
  reg_HiLo_35 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_35_IBUF_28,
      Q => reg_HiLo(35)
    );
  reg_HiLo_36 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_36_IBUF_27,
      Q => reg_HiLo(36)
    );
  reg_HiLo_37 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_37_IBUF_26,
      Q => reg_HiLo(37)
    );
  reg_HiLo_38 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_38_IBUF_25,
      Q => reg_HiLo(38)
    );
  reg_HiLo_39 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_39_IBUF_24,
      Q => reg_HiLo(39)
    );
  reg_HiLo_40 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_40_IBUF_23,
      Q => reg_HiLo(40)
    );
  reg_HiLo_41 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_41_IBUF_22,
      Q => reg_HiLo(41)
    );
  reg_HiLo_42 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_42_IBUF_21,
      Q => reg_HiLo(42)
    );
  reg_HiLo_43 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_43_IBUF_20,
      Q => reg_HiLo(43)
    );
  reg_HiLo_44 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_44_IBUF_19,
      Q => reg_HiLo(44)
    );
  reg_HiLo_45 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_45_IBUF_18,
      Q => reg_HiLo(45)
    );
  reg_HiLo_46 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_46_IBUF_17,
      Q => reg_HiLo(46)
    );
  reg_HiLo_47 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_47_IBUF_16,
      Q => reg_HiLo(47)
    );
  reg_HiLo_48 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_48_IBUF_15,
      Q => reg_HiLo(48)
    );
  reg_HiLo_49 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_49_IBUF_14,
      Q => reg_HiLo(49)
    );
  reg_HiLo_50 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_50_IBUF_13,
      Q => reg_HiLo(50)
    );
  reg_HiLo_51 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_51_IBUF_12,
      Q => reg_HiLo(51)
    );
  reg_HiLo_52 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_52_IBUF_11,
      Q => reg_HiLo(52)
    );
  reg_HiLo_53 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_53_IBUF_10,
      Q => reg_HiLo(53)
    );
  reg_HiLo_54 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_54_IBUF_9,
      Q => reg_HiLo(54)
    );
  reg_HiLo_55 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_55_IBUF_8,
      Q => reg_HiLo(55)
    );
  reg_HiLo_56 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_56_IBUF_7,
      Q => reg_HiLo(56)
    );
  reg_HiLo_57 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_57_IBUF_6,
      Q => reg_HiLo(57)
    );
  reg_HiLo_58 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_58_IBUF_5,
      Q => reg_HiLo(58)
    );
  reg_HiLo_59 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_59_IBUF_4,
      Q => reg_HiLo(59)
    );
  reg_HiLo_60 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_60_IBUF_3,
      Q => reg_HiLo(60)
    );
  reg_HiLo_61 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_61_IBUF_2,
      Q => reg_HiLo(61)
    );
  reg_HiLo_62 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_62_IBUF_1,
      Q => reg_HiLo(62)
    );
  reg_HiLo_63 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_66,
      CE => RegWrite_HiLo_IBUF_65,
      D => WriteData_HiLo_63_IBUF_0,
      Q => reg_HiLo(63)
    );
  Mmux_ReadData_HiLo321 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(41),
      I2 => reg_HiLo(9),
      O => ReadData_HiLo_9_OBUF_153
    );
  Mmux_ReadData_HiLo311 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(40),
      I2 => reg_HiLo(8),
      O => ReadData_HiLo_8_OBUF_154
    );
  Mmux_ReadData_HiLo301 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(39),
      I2 => reg_HiLo(7),
      O => ReadData_HiLo_7_OBUF_155
    );
  Mmux_ReadData_HiLo291 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(38),
      I2 => reg_HiLo(6),
      O => ReadData_HiLo_6_OBUF_156
    );
  Mmux_ReadData_HiLo281 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(37),
      I2 => reg_HiLo(5),
      O => ReadData_HiLo_5_OBUF_157
    );
  Mmux_ReadData_HiLo271 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(36),
      I2 => reg_HiLo(4),
      O => ReadData_HiLo_4_OBUF_158
    );
  Mmux_ReadData_HiLo261 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(35),
      I2 => reg_HiLo(3),
      O => ReadData_HiLo_3_OBUF_159
    );
  Mmux_ReadData_HiLo251 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(63),
      I2 => reg_HiLo(31),
      O => ReadData_HiLo_31_OBUF_131
    );
  Mmux_ReadData_HiLo241 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(62),
      I2 => reg_HiLo(30),
      O => ReadData_HiLo_30_OBUF_132
    );
  Mmux_ReadData_HiLo231 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(34),
      I2 => reg_HiLo(2),
      O => ReadData_HiLo_2_OBUF_160
    );
  Mmux_ReadData_HiLo221 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(61),
      I2 => reg_HiLo(29),
      O => ReadData_HiLo_29_OBUF_133
    );
  Mmux_ReadData_HiLo211 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(60),
      I2 => reg_HiLo(28),
      O => ReadData_HiLo_28_OBUF_134
    );
  Mmux_ReadData_HiLo201 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(59),
      I2 => reg_HiLo(27),
      O => ReadData_HiLo_27_OBUF_135
    );
  Mmux_ReadData_HiLo191 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(58),
      I2 => reg_HiLo(26),
      O => ReadData_HiLo_26_OBUF_136
    );
  Mmux_ReadData_HiLo181 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(57),
      I2 => reg_HiLo(25),
      O => ReadData_HiLo_25_OBUF_137
    );
  Mmux_ReadData_HiLo171 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(56),
      I2 => reg_HiLo(24),
      O => ReadData_HiLo_24_OBUF_138
    );
  Mmux_ReadData_HiLo161 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(55),
      I2 => reg_HiLo(23),
      O => ReadData_HiLo_23_OBUF_139
    );
  Mmux_ReadData_HiLo151 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(54),
      I2 => reg_HiLo(22),
      O => ReadData_HiLo_22_OBUF_140
    );
  Mmux_ReadData_HiLo141 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(53),
      I2 => reg_HiLo(21),
      O => ReadData_HiLo_21_OBUF_141
    );
  Mmux_ReadData_HiLo131 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(52),
      I2 => reg_HiLo(20),
      O => ReadData_HiLo_20_OBUF_142
    );
  Mmux_ReadData_HiLo121 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(33),
      I2 => reg_HiLo(1),
      O => ReadData_HiLo_1_OBUF_161
    );
  Mmux_ReadData_HiLo111 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(51),
      I2 => reg_HiLo(19),
      O => ReadData_HiLo_19_OBUF_143
    );
  Mmux_ReadData_HiLo101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(50),
      I2 => reg_HiLo(18),
      O => ReadData_HiLo_18_OBUF_144
    );
  Mmux_ReadData_HiLo91 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(49),
      I2 => reg_HiLo(17),
      O => ReadData_HiLo_17_OBUF_145
    );
  Mmux_ReadData_HiLo81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(48),
      I2 => reg_HiLo(16),
      O => ReadData_HiLo_16_OBUF_146
    );
  Mmux_ReadData_HiLo71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(47),
      I2 => reg_HiLo(15),
      O => ReadData_HiLo_15_OBUF_147
    );
  Mmux_ReadData_HiLo61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(46),
      I2 => reg_HiLo(14),
      O => ReadData_HiLo_14_OBUF_148
    );
  Mmux_ReadData_HiLo51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(45),
      I2 => reg_HiLo(13),
      O => ReadData_HiLo_13_OBUF_149
    );
  Mmux_ReadData_HiLo41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(44),
      I2 => reg_HiLo(12),
      O => ReadData_HiLo_12_OBUF_150
    );
  Mmux_ReadData_HiLo31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(43),
      I2 => reg_HiLo(11),
      O => ReadData_HiLo_11_OBUF_151
    );
  Mmux_ReadData_HiLo21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(42),
      I2 => reg_HiLo(10),
      O => ReadData_HiLo_10_OBUF_152
    );
  Mmux_ReadData_HiLo11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_64,
      I1 => reg_HiLo(32),
      I2 => reg_HiLo(0),
      O => ReadData_HiLo_0_OBUF_162
    );
  WriteData_HiLo_63_IBUF : IBUF
    port map (
      I => WriteData_HiLo(63),
      O => WriteData_HiLo_63_IBUF_0
    );
  WriteData_HiLo_62_IBUF : IBUF
    port map (
      I => WriteData_HiLo(62),
      O => WriteData_HiLo_62_IBUF_1
    );
  WriteData_HiLo_61_IBUF : IBUF
    port map (
      I => WriteData_HiLo(61),
      O => WriteData_HiLo_61_IBUF_2
    );
  WriteData_HiLo_60_IBUF : IBUF
    port map (
      I => WriteData_HiLo(60),
      O => WriteData_HiLo_60_IBUF_3
    );
  WriteData_HiLo_59_IBUF : IBUF
    port map (
      I => WriteData_HiLo(59),
      O => WriteData_HiLo_59_IBUF_4
    );
  WriteData_HiLo_58_IBUF : IBUF
    port map (
      I => WriteData_HiLo(58),
      O => WriteData_HiLo_58_IBUF_5
    );
  WriteData_HiLo_57_IBUF : IBUF
    port map (
      I => WriteData_HiLo(57),
      O => WriteData_HiLo_57_IBUF_6
    );
  WriteData_HiLo_56_IBUF : IBUF
    port map (
      I => WriteData_HiLo(56),
      O => WriteData_HiLo_56_IBUF_7
    );
  WriteData_HiLo_55_IBUF : IBUF
    port map (
      I => WriteData_HiLo(55),
      O => WriteData_HiLo_55_IBUF_8
    );
  WriteData_HiLo_54_IBUF : IBUF
    port map (
      I => WriteData_HiLo(54),
      O => WriteData_HiLo_54_IBUF_9
    );
  WriteData_HiLo_53_IBUF : IBUF
    port map (
      I => WriteData_HiLo(53),
      O => WriteData_HiLo_53_IBUF_10
    );
  WriteData_HiLo_52_IBUF : IBUF
    port map (
      I => WriteData_HiLo(52),
      O => WriteData_HiLo_52_IBUF_11
    );
  WriteData_HiLo_51_IBUF : IBUF
    port map (
      I => WriteData_HiLo(51),
      O => WriteData_HiLo_51_IBUF_12
    );
  WriteData_HiLo_50_IBUF : IBUF
    port map (
      I => WriteData_HiLo(50),
      O => WriteData_HiLo_50_IBUF_13
    );
  WriteData_HiLo_49_IBUF : IBUF
    port map (
      I => WriteData_HiLo(49),
      O => WriteData_HiLo_49_IBUF_14
    );
  WriteData_HiLo_48_IBUF : IBUF
    port map (
      I => WriteData_HiLo(48),
      O => WriteData_HiLo_48_IBUF_15
    );
  WriteData_HiLo_47_IBUF : IBUF
    port map (
      I => WriteData_HiLo(47),
      O => WriteData_HiLo_47_IBUF_16
    );
  WriteData_HiLo_46_IBUF : IBUF
    port map (
      I => WriteData_HiLo(46),
      O => WriteData_HiLo_46_IBUF_17
    );
  WriteData_HiLo_45_IBUF : IBUF
    port map (
      I => WriteData_HiLo(45),
      O => WriteData_HiLo_45_IBUF_18
    );
  WriteData_HiLo_44_IBUF : IBUF
    port map (
      I => WriteData_HiLo(44),
      O => WriteData_HiLo_44_IBUF_19
    );
  WriteData_HiLo_43_IBUF : IBUF
    port map (
      I => WriteData_HiLo(43),
      O => WriteData_HiLo_43_IBUF_20
    );
  WriteData_HiLo_42_IBUF : IBUF
    port map (
      I => WriteData_HiLo(42),
      O => WriteData_HiLo_42_IBUF_21
    );
  WriteData_HiLo_41_IBUF : IBUF
    port map (
      I => WriteData_HiLo(41),
      O => WriteData_HiLo_41_IBUF_22
    );
  WriteData_HiLo_40_IBUF : IBUF
    port map (
      I => WriteData_HiLo(40),
      O => WriteData_HiLo_40_IBUF_23
    );
  WriteData_HiLo_39_IBUF : IBUF
    port map (
      I => WriteData_HiLo(39),
      O => WriteData_HiLo_39_IBUF_24
    );
  WriteData_HiLo_38_IBUF : IBUF
    port map (
      I => WriteData_HiLo(38),
      O => WriteData_HiLo_38_IBUF_25
    );
  WriteData_HiLo_37_IBUF : IBUF
    port map (
      I => WriteData_HiLo(37),
      O => WriteData_HiLo_37_IBUF_26
    );
  WriteData_HiLo_36_IBUF : IBUF
    port map (
      I => WriteData_HiLo(36),
      O => WriteData_HiLo_36_IBUF_27
    );
  WriteData_HiLo_35_IBUF : IBUF
    port map (
      I => WriteData_HiLo(35),
      O => WriteData_HiLo_35_IBUF_28
    );
  WriteData_HiLo_34_IBUF : IBUF
    port map (
      I => WriteData_HiLo(34),
      O => WriteData_HiLo_34_IBUF_29
    );
  WriteData_HiLo_33_IBUF : IBUF
    port map (
      I => WriteData_HiLo(33),
      O => WriteData_HiLo_33_IBUF_30
    );
  WriteData_HiLo_32_IBUF : IBUF
    port map (
      I => WriteData_HiLo(32),
      O => WriteData_HiLo_32_IBUF_31
    );
  WriteData_HiLo_31_IBUF : IBUF
    port map (
      I => WriteData_HiLo(31),
      O => WriteData_HiLo_31_IBUF_32
    );
  WriteData_HiLo_30_IBUF : IBUF
    port map (
      I => WriteData_HiLo(30),
      O => WriteData_HiLo_30_IBUF_33
    );
  WriteData_HiLo_29_IBUF : IBUF
    port map (
      I => WriteData_HiLo(29),
      O => WriteData_HiLo_29_IBUF_34
    );
  WriteData_HiLo_28_IBUF : IBUF
    port map (
      I => WriteData_HiLo(28),
      O => WriteData_HiLo_28_IBUF_35
    );
  WriteData_HiLo_27_IBUF : IBUF
    port map (
      I => WriteData_HiLo(27),
      O => WriteData_HiLo_27_IBUF_36
    );
  WriteData_HiLo_26_IBUF : IBUF
    port map (
      I => WriteData_HiLo(26),
      O => WriteData_HiLo_26_IBUF_37
    );
  WriteData_HiLo_25_IBUF : IBUF
    port map (
      I => WriteData_HiLo(25),
      O => WriteData_HiLo_25_IBUF_38
    );
  WriteData_HiLo_24_IBUF : IBUF
    port map (
      I => WriteData_HiLo(24),
      O => WriteData_HiLo_24_IBUF_39
    );
  WriteData_HiLo_23_IBUF : IBUF
    port map (
      I => WriteData_HiLo(23),
      O => WriteData_HiLo_23_IBUF_40
    );
  WriteData_HiLo_22_IBUF : IBUF
    port map (
      I => WriteData_HiLo(22),
      O => WriteData_HiLo_22_IBUF_41
    );
  WriteData_HiLo_21_IBUF : IBUF
    port map (
      I => WriteData_HiLo(21),
      O => WriteData_HiLo_21_IBUF_42
    );
  WriteData_HiLo_20_IBUF : IBUF
    port map (
      I => WriteData_HiLo(20),
      O => WriteData_HiLo_20_IBUF_43
    );
  WriteData_HiLo_19_IBUF : IBUF
    port map (
      I => WriteData_HiLo(19),
      O => WriteData_HiLo_19_IBUF_44
    );
  WriteData_HiLo_18_IBUF : IBUF
    port map (
      I => WriteData_HiLo(18),
      O => WriteData_HiLo_18_IBUF_45
    );
  WriteData_HiLo_17_IBUF : IBUF
    port map (
      I => WriteData_HiLo(17),
      O => WriteData_HiLo_17_IBUF_46
    );
  WriteData_HiLo_16_IBUF : IBUF
    port map (
      I => WriteData_HiLo(16),
      O => WriteData_HiLo_16_IBUF_47
    );
  WriteData_HiLo_15_IBUF : IBUF
    port map (
      I => WriteData_HiLo(15),
      O => WriteData_HiLo_15_IBUF_48
    );
  WriteData_HiLo_14_IBUF : IBUF
    port map (
      I => WriteData_HiLo(14),
      O => WriteData_HiLo_14_IBUF_49
    );
  WriteData_HiLo_13_IBUF : IBUF
    port map (
      I => WriteData_HiLo(13),
      O => WriteData_HiLo_13_IBUF_50
    );
  WriteData_HiLo_12_IBUF : IBUF
    port map (
      I => WriteData_HiLo(12),
      O => WriteData_HiLo_12_IBUF_51
    );
  WriteData_HiLo_11_IBUF : IBUF
    port map (
      I => WriteData_HiLo(11),
      O => WriteData_HiLo_11_IBUF_52
    );
  WriteData_HiLo_10_IBUF : IBUF
    port map (
      I => WriteData_HiLo(10),
      O => WriteData_HiLo_10_IBUF_53
    );
  WriteData_HiLo_9_IBUF : IBUF
    port map (
      I => WriteData_HiLo(9),
      O => WriteData_HiLo_9_IBUF_54
    );
  WriteData_HiLo_8_IBUF : IBUF
    port map (
      I => WriteData_HiLo(8),
      O => WriteData_HiLo_8_IBUF_55
    );
  WriteData_HiLo_7_IBUF : IBUF
    port map (
      I => WriteData_HiLo(7),
      O => WriteData_HiLo_7_IBUF_56
    );
  WriteData_HiLo_6_IBUF : IBUF
    port map (
      I => WriteData_HiLo(6),
      O => WriteData_HiLo_6_IBUF_57
    );
  WriteData_HiLo_5_IBUF : IBUF
    port map (
      I => WriteData_HiLo(5),
      O => WriteData_HiLo_5_IBUF_58
    );
  WriteData_HiLo_4_IBUF : IBUF
    port map (
      I => WriteData_HiLo(4),
      O => WriteData_HiLo_4_IBUF_59
    );
  WriteData_HiLo_3_IBUF : IBUF
    port map (
      I => WriteData_HiLo(3),
      O => WriteData_HiLo_3_IBUF_60
    );
  WriteData_HiLo_2_IBUF : IBUF
    port map (
      I => WriteData_HiLo(2),
      O => WriteData_HiLo_2_IBUF_61
    );
  WriteData_HiLo_1_IBUF : IBUF
    port map (
      I => WriteData_HiLo(1),
      O => WriteData_HiLo_1_IBUF_62
    );
  WriteData_HiLo_0_IBUF : IBUF
    port map (
      I => WriteData_HiLo(0),
      O => WriteData_HiLo_0_IBUF_63
    );
  HiLo_Addr_IBUF : IBUF
    port map (
      I => HiLo_Addr,
      O => HiLo_Addr_IBUF_64
    );
  RegWrite_HiLo_IBUF : IBUF
    port map (
      I => RegWrite_HiLo,
      O => RegWrite_HiLo_IBUF_65
    );
  ReadData_HiLo_31_OBUF : OBUF
    port map (
      I => ReadData_HiLo_31_OBUF_131,
      O => ReadData_HiLo(31)
    );
  ReadData_HiLo_30_OBUF : OBUF
    port map (
      I => ReadData_HiLo_30_OBUF_132,
      O => ReadData_HiLo(30)
    );
  ReadData_HiLo_29_OBUF : OBUF
    port map (
      I => ReadData_HiLo_29_OBUF_133,
      O => ReadData_HiLo(29)
    );
  ReadData_HiLo_28_OBUF : OBUF
    port map (
      I => ReadData_HiLo_28_OBUF_134,
      O => ReadData_HiLo(28)
    );
  ReadData_HiLo_27_OBUF : OBUF
    port map (
      I => ReadData_HiLo_27_OBUF_135,
      O => ReadData_HiLo(27)
    );
  ReadData_HiLo_26_OBUF : OBUF
    port map (
      I => ReadData_HiLo_26_OBUF_136,
      O => ReadData_HiLo(26)
    );
  ReadData_HiLo_25_OBUF : OBUF
    port map (
      I => ReadData_HiLo_25_OBUF_137,
      O => ReadData_HiLo(25)
    );
  ReadData_HiLo_24_OBUF : OBUF
    port map (
      I => ReadData_HiLo_24_OBUF_138,
      O => ReadData_HiLo(24)
    );
  ReadData_HiLo_23_OBUF : OBUF
    port map (
      I => ReadData_HiLo_23_OBUF_139,
      O => ReadData_HiLo(23)
    );
  ReadData_HiLo_22_OBUF : OBUF
    port map (
      I => ReadData_HiLo_22_OBUF_140,
      O => ReadData_HiLo(22)
    );
  ReadData_HiLo_21_OBUF : OBUF
    port map (
      I => ReadData_HiLo_21_OBUF_141,
      O => ReadData_HiLo(21)
    );
  ReadData_HiLo_20_OBUF : OBUF
    port map (
      I => ReadData_HiLo_20_OBUF_142,
      O => ReadData_HiLo(20)
    );
  ReadData_HiLo_19_OBUF : OBUF
    port map (
      I => ReadData_HiLo_19_OBUF_143,
      O => ReadData_HiLo(19)
    );
  ReadData_HiLo_18_OBUF : OBUF
    port map (
      I => ReadData_HiLo_18_OBUF_144,
      O => ReadData_HiLo(18)
    );
  ReadData_HiLo_17_OBUF : OBUF
    port map (
      I => ReadData_HiLo_17_OBUF_145,
      O => ReadData_HiLo(17)
    );
  ReadData_HiLo_16_OBUF : OBUF
    port map (
      I => ReadData_HiLo_16_OBUF_146,
      O => ReadData_HiLo(16)
    );
  ReadData_HiLo_15_OBUF : OBUF
    port map (
      I => ReadData_HiLo_15_OBUF_147,
      O => ReadData_HiLo(15)
    );
  ReadData_HiLo_14_OBUF : OBUF
    port map (
      I => ReadData_HiLo_14_OBUF_148,
      O => ReadData_HiLo(14)
    );
  ReadData_HiLo_13_OBUF : OBUF
    port map (
      I => ReadData_HiLo_13_OBUF_149,
      O => ReadData_HiLo(13)
    );
  ReadData_HiLo_12_OBUF : OBUF
    port map (
      I => ReadData_HiLo_12_OBUF_150,
      O => ReadData_HiLo(12)
    );
  ReadData_HiLo_11_OBUF : OBUF
    port map (
      I => ReadData_HiLo_11_OBUF_151,
      O => ReadData_HiLo(11)
    );
  ReadData_HiLo_10_OBUF : OBUF
    port map (
      I => ReadData_HiLo_10_OBUF_152,
      O => ReadData_HiLo(10)
    );
  ReadData_HiLo_9_OBUF : OBUF
    port map (
      I => ReadData_HiLo_9_OBUF_153,
      O => ReadData_HiLo(9)
    );
  ReadData_HiLo_8_OBUF : OBUF
    port map (
      I => ReadData_HiLo_8_OBUF_154,
      O => ReadData_HiLo(8)
    );
  ReadData_HiLo_7_OBUF : OBUF
    port map (
      I => ReadData_HiLo_7_OBUF_155,
      O => ReadData_HiLo(7)
    );
  ReadData_HiLo_6_OBUF : OBUF
    port map (
      I => ReadData_HiLo_6_OBUF_156,
      O => ReadData_HiLo(6)
    );
  ReadData_HiLo_5_OBUF : OBUF
    port map (
      I => ReadData_HiLo_5_OBUF_157,
      O => ReadData_HiLo(5)
    );
  ReadData_HiLo_4_OBUF : OBUF
    port map (
      I => ReadData_HiLo_4_OBUF_158,
      O => ReadData_HiLo(4)
    );
  ReadData_HiLo_3_OBUF : OBUF
    port map (
      I => ReadData_HiLo_3_OBUF_159,
      O => ReadData_HiLo(3)
    );
  ReadData_HiLo_2_OBUF : OBUF
    port map (
      I => ReadData_HiLo_2_OBUF_160,
      O => ReadData_HiLo(2)
    );
  ReadData_HiLo_1_OBUF : OBUF
    port map (
      I => ReadData_HiLo_1_OBUF_161,
      O => ReadData_HiLo(1)
    );
  ReadData_HiLo_0_OBUF : OBUF
    port map (
      I => ReadData_HiLo_0_OBUF_162,
      O => ReadData_HiLo(0)
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_66
    );

end Structure;

