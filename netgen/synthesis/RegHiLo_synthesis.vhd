--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RegHiLo_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 31 10:55:08 2014
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
    RegWrite : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    WriteData_HiLo : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    ReadData_HiLo : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end RegHiLo;

architecture Structure of RegHiLo is
  signal WriteData_HiLo_31_IBUF_0 : STD_LOGIC; 
  signal WriteData_HiLo_30_IBUF_1 : STD_LOGIC; 
  signal WriteData_HiLo_29_IBUF_2 : STD_LOGIC; 
  signal WriteData_HiLo_28_IBUF_3 : STD_LOGIC; 
  signal WriteData_HiLo_27_IBUF_4 : STD_LOGIC; 
  signal WriteData_HiLo_26_IBUF_5 : STD_LOGIC; 
  signal WriteData_HiLo_25_IBUF_6 : STD_LOGIC; 
  signal WriteData_HiLo_24_IBUF_7 : STD_LOGIC; 
  signal WriteData_HiLo_23_IBUF_8 : STD_LOGIC; 
  signal WriteData_HiLo_22_IBUF_9 : STD_LOGIC; 
  signal WriteData_HiLo_21_IBUF_10 : STD_LOGIC; 
  signal WriteData_HiLo_20_IBUF_11 : STD_LOGIC; 
  signal WriteData_HiLo_19_IBUF_12 : STD_LOGIC; 
  signal WriteData_HiLo_18_IBUF_13 : STD_LOGIC; 
  signal WriteData_HiLo_17_IBUF_14 : STD_LOGIC; 
  signal WriteData_HiLo_16_IBUF_15 : STD_LOGIC; 
  signal WriteData_HiLo_15_IBUF_16 : STD_LOGIC; 
  signal WriteData_HiLo_14_IBUF_17 : STD_LOGIC; 
  signal WriteData_HiLo_13_IBUF_18 : STD_LOGIC; 
  signal WriteData_HiLo_12_IBUF_19 : STD_LOGIC; 
  signal WriteData_HiLo_11_IBUF_20 : STD_LOGIC; 
  signal WriteData_HiLo_10_IBUF_21 : STD_LOGIC; 
  signal WriteData_HiLo_9_IBUF_22 : STD_LOGIC; 
  signal WriteData_HiLo_8_IBUF_23 : STD_LOGIC; 
  signal WriteData_HiLo_7_IBUF_24 : STD_LOGIC; 
  signal WriteData_HiLo_6_IBUF_25 : STD_LOGIC; 
  signal WriteData_HiLo_5_IBUF_26 : STD_LOGIC; 
  signal WriteData_HiLo_4_IBUF_27 : STD_LOGIC; 
  signal WriteData_HiLo_3_IBUF_28 : STD_LOGIC; 
  signal WriteData_HiLo_2_IBUF_29 : STD_LOGIC; 
  signal WriteData_HiLo_1_IBUF_30 : STD_LOGIC; 
  signal WriteData_HiLo_0_IBUF_31 : STD_LOGIC; 
  signal HiLo_Addr_IBUF_32 : STD_LOGIC; 
  signal RegWrite_IBUF_33 : STD_LOGIC; 
  signal CLK_BUFGP_34 : STD_LOGIC; 
  signal ReadData_HiLo_31_OBUF_99 : STD_LOGIC; 
  signal ReadData_HiLo_30_OBUF_100 : STD_LOGIC; 
  signal ReadData_HiLo_29_OBUF_101 : STD_LOGIC; 
  signal ReadData_HiLo_28_OBUF_102 : STD_LOGIC; 
  signal ReadData_HiLo_27_OBUF_103 : STD_LOGIC; 
  signal ReadData_HiLo_26_OBUF_104 : STD_LOGIC; 
  signal ReadData_HiLo_25_OBUF_105 : STD_LOGIC; 
  signal ReadData_HiLo_24_OBUF_106 : STD_LOGIC; 
  signal ReadData_HiLo_23_OBUF_107 : STD_LOGIC; 
  signal ReadData_HiLo_22_OBUF_108 : STD_LOGIC; 
  signal ReadData_HiLo_21_OBUF_109 : STD_LOGIC; 
  signal ReadData_HiLo_20_OBUF_110 : STD_LOGIC; 
  signal ReadData_HiLo_19_OBUF_111 : STD_LOGIC; 
  signal ReadData_HiLo_18_OBUF_112 : STD_LOGIC; 
  signal ReadData_HiLo_17_OBUF_113 : STD_LOGIC; 
  signal ReadData_HiLo_16_OBUF_114 : STD_LOGIC; 
  signal ReadData_HiLo_15_OBUF_115 : STD_LOGIC; 
  signal ReadData_HiLo_14_OBUF_116 : STD_LOGIC; 
  signal ReadData_HiLo_13_OBUF_117 : STD_LOGIC; 
  signal ReadData_HiLo_12_OBUF_118 : STD_LOGIC; 
  signal ReadData_HiLo_11_OBUF_119 : STD_LOGIC; 
  signal ReadData_HiLo_10_OBUF_120 : STD_LOGIC; 
  signal ReadData_HiLo_9_OBUF_121 : STD_LOGIC; 
  signal ReadData_HiLo_8_OBUF_122 : STD_LOGIC; 
  signal ReadData_HiLo_7_OBUF_123 : STD_LOGIC; 
  signal ReadData_HiLo_6_OBUF_124 : STD_LOGIC; 
  signal ReadData_HiLo_5_OBUF_125 : STD_LOGIC; 
  signal ReadData_HiLo_4_OBUF_126 : STD_LOGIC; 
  signal ReadData_HiLo_3_OBUF_127 : STD_LOGIC; 
  signal ReadData_HiLo_2_OBUF_128 : STD_LOGIC; 
  signal ReadData_HiLo_1_OBUF_129 : STD_LOGIC; 
  signal ReadData_HiLo_0_OBUF_130 : STD_LOGIC; 
  signal Q_n0018_inv : STD_LOGIC; 
  signal Q_n0021_inv : STD_LOGIC; 
  signal REG_1 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG_0 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  REG_1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_0_IBUF_31,
      Q => REG_1(0)
    );
  REG_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_1_IBUF_30,
      Q => REG_1(1)
    );
  REG_1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_2_IBUF_29,
      Q => REG_1(2)
    );
  REG_1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_3_IBUF_28,
      Q => REG_1(3)
    );
  REG_1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_4_IBUF_27,
      Q => REG_1(4)
    );
  REG_1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_5_IBUF_26,
      Q => REG_1(5)
    );
  REG_1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_6_IBUF_25,
      Q => REG_1(6)
    );
  REG_1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_7_IBUF_24,
      Q => REG_1(7)
    );
  REG_1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_8_IBUF_23,
      Q => REG_1(8)
    );
  REG_1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_9_IBUF_22,
      Q => REG_1(9)
    );
  REG_1_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_10_IBUF_21,
      Q => REG_1(10)
    );
  REG_1_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_11_IBUF_20,
      Q => REG_1(11)
    );
  REG_1_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_12_IBUF_19,
      Q => REG_1(12)
    );
  REG_1_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_13_IBUF_18,
      Q => REG_1(13)
    );
  REG_1_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_14_IBUF_17,
      Q => REG_1(14)
    );
  REG_1_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_15_IBUF_16,
      Q => REG_1(15)
    );
  REG_1_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_16_IBUF_15,
      Q => REG_1(16)
    );
  REG_1_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_17_IBUF_14,
      Q => REG_1(17)
    );
  REG_1_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_18_IBUF_13,
      Q => REG_1(18)
    );
  REG_1_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_19_IBUF_12,
      Q => REG_1(19)
    );
  REG_1_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_20_IBUF_11,
      Q => REG_1(20)
    );
  REG_1_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_21_IBUF_10,
      Q => REG_1(21)
    );
  REG_1_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_22_IBUF_9,
      Q => REG_1(22)
    );
  REG_1_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_23_IBUF_8,
      Q => REG_1(23)
    );
  REG_1_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_24_IBUF_7,
      Q => REG_1(24)
    );
  REG_1_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_25_IBUF_6,
      Q => REG_1(25)
    );
  REG_1_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_26_IBUF_5,
      Q => REG_1(26)
    );
  REG_1_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_27_IBUF_4,
      Q => REG_1(27)
    );
  REG_1_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_28_IBUF_3,
      Q => REG_1(28)
    );
  REG_1_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_29_IBUF_2,
      Q => REG_1(29)
    );
  REG_1_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_30_IBUF_1,
      Q => REG_1(30)
    );
  REG_1_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0018_inv,
      D => WriteData_HiLo_31_IBUF_0,
      Q => REG_1(31)
    );
  REG_0_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_0_IBUF_31,
      Q => REG_0(0)
    );
  REG_0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_1_IBUF_30,
      Q => REG_0(1)
    );
  REG_0_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_2_IBUF_29,
      Q => REG_0(2)
    );
  REG_0_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_3_IBUF_28,
      Q => REG_0(3)
    );
  REG_0_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_4_IBUF_27,
      Q => REG_0(4)
    );
  REG_0_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_5_IBUF_26,
      Q => REG_0(5)
    );
  REG_0_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_6_IBUF_25,
      Q => REG_0(6)
    );
  REG_0_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_7_IBUF_24,
      Q => REG_0(7)
    );
  REG_0_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_8_IBUF_23,
      Q => REG_0(8)
    );
  REG_0_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_9_IBUF_22,
      Q => REG_0(9)
    );
  REG_0_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_10_IBUF_21,
      Q => REG_0(10)
    );
  REG_0_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_11_IBUF_20,
      Q => REG_0(11)
    );
  REG_0_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_12_IBUF_19,
      Q => REG_0(12)
    );
  REG_0_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_13_IBUF_18,
      Q => REG_0(13)
    );
  REG_0_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_14_IBUF_17,
      Q => REG_0(14)
    );
  REG_0_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_15_IBUF_16,
      Q => REG_0(15)
    );
  REG_0_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_16_IBUF_15,
      Q => REG_0(16)
    );
  REG_0_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_17_IBUF_14,
      Q => REG_0(17)
    );
  REG_0_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_18_IBUF_13,
      Q => REG_0(18)
    );
  REG_0_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_19_IBUF_12,
      Q => REG_0(19)
    );
  REG_0_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_20_IBUF_11,
      Q => REG_0(20)
    );
  REG_0_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_21_IBUF_10,
      Q => REG_0(21)
    );
  REG_0_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_22_IBUF_9,
      Q => REG_0(22)
    );
  REG_0_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_23_IBUF_8,
      Q => REG_0(23)
    );
  REG_0_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_24_IBUF_7,
      Q => REG_0(24)
    );
  REG_0_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_25_IBUF_6,
      Q => REG_0(25)
    );
  REG_0_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_26_IBUF_5,
      Q => REG_0(26)
    );
  REG_0_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_27_IBUF_4,
      Q => REG_0(27)
    );
  REG_0_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_28_IBUF_3,
      Q => REG_0(28)
    );
  REG_0_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_29_IBUF_2,
      Q => REG_0(29)
    );
  REG_0_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_30_IBUF_1,
      Q => REG_0(30)
    );
  REG_0_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_34,
      CE => Q_n0021_inv,
      D => WriteData_HiLo_31_IBUF_0,
      Q => REG_0(31)
    );
  Q_n0018_inv1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RegWrite_IBUF_33,
      I1 => HiLo_Addr_IBUF_32,
      O => Q_n0018_inv
    );
  Q_n0021_inv1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RegWrite_IBUF_33,
      I1 => HiLo_Addr_IBUF_32,
      O => Q_n0021_inv
    );
  Mmux_ReadData_HiLo321 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(9),
      I2 => REG_0(9),
      O => ReadData_HiLo_9_OBUF_121
    );
  Mmux_ReadData_HiLo311 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(8),
      I2 => REG_0(8),
      O => ReadData_HiLo_8_OBUF_122
    );
  Mmux_ReadData_HiLo301 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(7),
      I2 => REG_0(7),
      O => ReadData_HiLo_7_OBUF_123
    );
  Mmux_ReadData_HiLo291 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(6),
      I2 => REG_0(6),
      O => ReadData_HiLo_6_OBUF_124
    );
  Mmux_ReadData_HiLo281 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(5),
      I2 => REG_0(5),
      O => ReadData_HiLo_5_OBUF_125
    );
  Mmux_ReadData_HiLo271 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(4),
      I2 => REG_0(4),
      O => ReadData_HiLo_4_OBUF_126
    );
  Mmux_ReadData_HiLo261 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(3),
      I2 => REG_0(3),
      O => ReadData_HiLo_3_OBUF_127
    );
  Mmux_ReadData_HiLo251 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(31),
      I2 => REG_0(31),
      O => ReadData_HiLo_31_OBUF_99
    );
  Mmux_ReadData_HiLo241 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(30),
      I2 => REG_0(30),
      O => ReadData_HiLo_30_OBUF_100
    );
  Mmux_ReadData_HiLo231 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(2),
      I2 => REG_0(2),
      O => ReadData_HiLo_2_OBUF_128
    );
  Mmux_ReadData_HiLo221 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(29),
      I2 => REG_0(29),
      O => ReadData_HiLo_29_OBUF_101
    );
  Mmux_ReadData_HiLo211 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(28),
      I2 => REG_0(28),
      O => ReadData_HiLo_28_OBUF_102
    );
  Mmux_ReadData_HiLo201 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(27),
      I2 => REG_0(27),
      O => ReadData_HiLo_27_OBUF_103
    );
  Mmux_ReadData_HiLo191 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(26),
      I2 => REG_0(26),
      O => ReadData_HiLo_26_OBUF_104
    );
  Mmux_ReadData_HiLo181 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(25),
      I2 => REG_0(25),
      O => ReadData_HiLo_25_OBUF_105
    );
  Mmux_ReadData_HiLo171 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(24),
      I2 => REG_0(24),
      O => ReadData_HiLo_24_OBUF_106
    );
  Mmux_ReadData_HiLo161 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(23),
      I2 => REG_0(23),
      O => ReadData_HiLo_23_OBUF_107
    );
  Mmux_ReadData_HiLo151 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(22),
      I2 => REG_0(22),
      O => ReadData_HiLo_22_OBUF_108
    );
  Mmux_ReadData_HiLo141 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(21),
      I2 => REG_0(21),
      O => ReadData_HiLo_21_OBUF_109
    );
  Mmux_ReadData_HiLo131 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(20),
      I2 => REG_0(20),
      O => ReadData_HiLo_20_OBUF_110
    );
  Mmux_ReadData_HiLo121 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(1),
      I2 => REG_0(1),
      O => ReadData_HiLo_1_OBUF_129
    );
  Mmux_ReadData_HiLo111 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(19),
      I2 => REG_0(19),
      O => ReadData_HiLo_19_OBUF_111
    );
  Mmux_ReadData_HiLo101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(18),
      I2 => REG_0(18),
      O => ReadData_HiLo_18_OBUF_112
    );
  Mmux_ReadData_HiLo91 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(17),
      I2 => REG_0(17),
      O => ReadData_HiLo_17_OBUF_113
    );
  Mmux_ReadData_HiLo81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(16),
      I2 => REG_0(16),
      O => ReadData_HiLo_16_OBUF_114
    );
  Mmux_ReadData_HiLo71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(15),
      I2 => REG_0(15),
      O => ReadData_HiLo_15_OBUF_115
    );
  Mmux_ReadData_HiLo61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(14),
      I2 => REG_0(14),
      O => ReadData_HiLo_14_OBUF_116
    );
  Mmux_ReadData_HiLo51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(13),
      I2 => REG_0(13),
      O => ReadData_HiLo_13_OBUF_117
    );
  Mmux_ReadData_HiLo41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(12),
      I2 => REG_0(12),
      O => ReadData_HiLo_12_OBUF_118
    );
  Mmux_ReadData_HiLo31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(11),
      I2 => REG_0(11),
      O => ReadData_HiLo_11_OBUF_119
    );
  Mmux_ReadData_HiLo21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(10),
      I2 => REG_0(10),
      O => ReadData_HiLo_10_OBUF_120
    );
  Mmux_ReadData_HiLo11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => HiLo_Addr_IBUF_32,
      I1 => REG_1(0),
      I2 => REG_0(0),
      O => ReadData_HiLo_0_OBUF_130
    );
  WriteData_HiLo_31_IBUF : IBUF
    port map (
      I => WriteData_HiLo(31),
      O => WriteData_HiLo_31_IBUF_0
    );
  WriteData_HiLo_30_IBUF : IBUF
    port map (
      I => WriteData_HiLo(30),
      O => WriteData_HiLo_30_IBUF_1
    );
  WriteData_HiLo_29_IBUF : IBUF
    port map (
      I => WriteData_HiLo(29),
      O => WriteData_HiLo_29_IBUF_2
    );
  WriteData_HiLo_28_IBUF : IBUF
    port map (
      I => WriteData_HiLo(28),
      O => WriteData_HiLo_28_IBUF_3
    );
  WriteData_HiLo_27_IBUF : IBUF
    port map (
      I => WriteData_HiLo(27),
      O => WriteData_HiLo_27_IBUF_4
    );
  WriteData_HiLo_26_IBUF : IBUF
    port map (
      I => WriteData_HiLo(26),
      O => WriteData_HiLo_26_IBUF_5
    );
  WriteData_HiLo_25_IBUF : IBUF
    port map (
      I => WriteData_HiLo(25),
      O => WriteData_HiLo_25_IBUF_6
    );
  WriteData_HiLo_24_IBUF : IBUF
    port map (
      I => WriteData_HiLo(24),
      O => WriteData_HiLo_24_IBUF_7
    );
  WriteData_HiLo_23_IBUF : IBUF
    port map (
      I => WriteData_HiLo(23),
      O => WriteData_HiLo_23_IBUF_8
    );
  WriteData_HiLo_22_IBUF : IBUF
    port map (
      I => WriteData_HiLo(22),
      O => WriteData_HiLo_22_IBUF_9
    );
  WriteData_HiLo_21_IBUF : IBUF
    port map (
      I => WriteData_HiLo(21),
      O => WriteData_HiLo_21_IBUF_10
    );
  WriteData_HiLo_20_IBUF : IBUF
    port map (
      I => WriteData_HiLo(20),
      O => WriteData_HiLo_20_IBUF_11
    );
  WriteData_HiLo_19_IBUF : IBUF
    port map (
      I => WriteData_HiLo(19),
      O => WriteData_HiLo_19_IBUF_12
    );
  WriteData_HiLo_18_IBUF : IBUF
    port map (
      I => WriteData_HiLo(18),
      O => WriteData_HiLo_18_IBUF_13
    );
  WriteData_HiLo_17_IBUF : IBUF
    port map (
      I => WriteData_HiLo(17),
      O => WriteData_HiLo_17_IBUF_14
    );
  WriteData_HiLo_16_IBUF : IBUF
    port map (
      I => WriteData_HiLo(16),
      O => WriteData_HiLo_16_IBUF_15
    );
  WriteData_HiLo_15_IBUF : IBUF
    port map (
      I => WriteData_HiLo(15),
      O => WriteData_HiLo_15_IBUF_16
    );
  WriteData_HiLo_14_IBUF : IBUF
    port map (
      I => WriteData_HiLo(14),
      O => WriteData_HiLo_14_IBUF_17
    );
  WriteData_HiLo_13_IBUF : IBUF
    port map (
      I => WriteData_HiLo(13),
      O => WriteData_HiLo_13_IBUF_18
    );
  WriteData_HiLo_12_IBUF : IBUF
    port map (
      I => WriteData_HiLo(12),
      O => WriteData_HiLo_12_IBUF_19
    );
  WriteData_HiLo_11_IBUF : IBUF
    port map (
      I => WriteData_HiLo(11),
      O => WriteData_HiLo_11_IBUF_20
    );
  WriteData_HiLo_10_IBUF : IBUF
    port map (
      I => WriteData_HiLo(10),
      O => WriteData_HiLo_10_IBUF_21
    );
  WriteData_HiLo_9_IBUF : IBUF
    port map (
      I => WriteData_HiLo(9),
      O => WriteData_HiLo_9_IBUF_22
    );
  WriteData_HiLo_8_IBUF : IBUF
    port map (
      I => WriteData_HiLo(8),
      O => WriteData_HiLo_8_IBUF_23
    );
  WriteData_HiLo_7_IBUF : IBUF
    port map (
      I => WriteData_HiLo(7),
      O => WriteData_HiLo_7_IBUF_24
    );
  WriteData_HiLo_6_IBUF : IBUF
    port map (
      I => WriteData_HiLo(6),
      O => WriteData_HiLo_6_IBUF_25
    );
  WriteData_HiLo_5_IBUF : IBUF
    port map (
      I => WriteData_HiLo(5),
      O => WriteData_HiLo_5_IBUF_26
    );
  WriteData_HiLo_4_IBUF : IBUF
    port map (
      I => WriteData_HiLo(4),
      O => WriteData_HiLo_4_IBUF_27
    );
  WriteData_HiLo_3_IBUF : IBUF
    port map (
      I => WriteData_HiLo(3),
      O => WriteData_HiLo_3_IBUF_28
    );
  WriteData_HiLo_2_IBUF : IBUF
    port map (
      I => WriteData_HiLo(2),
      O => WriteData_HiLo_2_IBUF_29
    );
  WriteData_HiLo_1_IBUF : IBUF
    port map (
      I => WriteData_HiLo(1),
      O => WriteData_HiLo_1_IBUF_30
    );
  WriteData_HiLo_0_IBUF : IBUF
    port map (
      I => WriteData_HiLo(0),
      O => WriteData_HiLo_0_IBUF_31
    );
  HiLo_Addr_IBUF : IBUF
    port map (
      I => HiLo_Addr,
      O => HiLo_Addr_IBUF_32
    );
  RegWrite_IBUF : IBUF
    port map (
      I => RegWrite,
      O => RegWrite_IBUF_33
    );
  ReadData_HiLo_31_OBUF : OBUF
    port map (
      I => ReadData_HiLo_31_OBUF_99,
      O => ReadData_HiLo(31)
    );
  ReadData_HiLo_30_OBUF : OBUF
    port map (
      I => ReadData_HiLo_30_OBUF_100,
      O => ReadData_HiLo(30)
    );
  ReadData_HiLo_29_OBUF : OBUF
    port map (
      I => ReadData_HiLo_29_OBUF_101,
      O => ReadData_HiLo(29)
    );
  ReadData_HiLo_28_OBUF : OBUF
    port map (
      I => ReadData_HiLo_28_OBUF_102,
      O => ReadData_HiLo(28)
    );
  ReadData_HiLo_27_OBUF : OBUF
    port map (
      I => ReadData_HiLo_27_OBUF_103,
      O => ReadData_HiLo(27)
    );
  ReadData_HiLo_26_OBUF : OBUF
    port map (
      I => ReadData_HiLo_26_OBUF_104,
      O => ReadData_HiLo(26)
    );
  ReadData_HiLo_25_OBUF : OBUF
    port map (
      I => ReadData_HiLo_25_OBUF_105,
      O => ReadData_HiLo(25)
    );
  ReadData_HiLo_24_OBUF : OBUF
    port map (
      I => ReadData_HiLo_24_OBUF_106,
      O => ReadData_HiLo(24)
    );
  ReadData_HiLo_23_OBUF : OBUF
    port map (
      I => ReadData_HiLo_23_OBUF_107,
      O => ReadData_HiLo(23)
    );
  ReadData_HiLo_22_OBUF : OBUF
    port map (
      I => ReadData_HiLo_22_OBUF_108,
      O => ReadData_HiLo(22)
    );
  ReadData_HiLo_21_OBUF : OBUF
    port map (
      I => ReadData_HiLo_21_OBUF_109,
      O => ReadData_HiLo(21)
    );
  ReadData_HiLo_20_OBUF : OBUF
    port map (
      I => ReadData_HiLo_20_OBUF_110,
      O => ReadData_HiLo(20)
    );
  ReadData_HiLo_19_OBUF : OBUF
    port map (
      I => ReadData_HiLo_19_OBUF_111,
      O => ReadData_HiLo(19)
    );
  ReadData_HiLo_18_OBUF : OBUF
    port map (
      I => ReadData_HiLo_18_OBUF_112,
      O => ReadData_HiLo(18)
    );
  ReadData_HiLo_17_OBUF : OBUF
    port map (
      I => ReadData_HiLo_17_OBUF_113,
      O => ReadData_HiLo(17)
    );
  ReadData_HiLo_16_OBUF : OBUF
    port map (
      I => ReadData_HiLo_16_OBUF_114,
      O => ReadData_HiLo(16)
    );
  ReadData_HiLo_15_OBUF : OBUF
    port map (
      I => ReadData_HiLo_15_OBUF_115,
      O => ReadData_HiLo(15)
    );
  ReadData_HiLo_14_OBUF : OBUF
    port map (
      I => ReadData_HiLo_14_OBUF_116,
      O => ReadData_HiLo(14)
    );
  ReadData_HiLo_13_OBUF : OBUF
    port map (
      I => ReadData_HiLo_13_OBUF_117,
      O => ReadData_HiLo(13)
    );
  ReadData_HiLo_12_OBUF : OBUF
    port map (
      I => ReadData_HiLo_12_OBUF_118,
      O => ReadData_HiLo(12)
    );
  ReadData_HiLo_11_OBUF : OBUF
    port map (
      I => ReadData_HiLo_11_OBUF_119,
      O => ReadData_HiLo(11)
    );
  ReadData_HiLo_10_OBUF : OBUF
    port map (
      I => ReadData_HiLo_10_OBUF_120,
      O => ReadData_HiLo(10)
    );
  ReadData_HiLo_9_OBUF : OBUF
    port map (
      I => ReadData_HiLo_9_OBUF_121,
      O => ReadData_HiLo(9)
    );
  ReadData_HiLo_8_OBUF : OBUF
    port map (
      I => ReadData_HiLo_8_OBUF_122,
      O => ReadData_HiLo(8)
    );
  ReadData_HiLo_7_OBUF : OBUF
    port map (
      I => ReadData_HiLo_7_OBUF_123,
      O => ReadData_HiLo(7)
    );
  ReadData_HiLo_6_OBUF : OBUF
    port map (
      I => ReadData_HiLo_6_OBUF_124,
      O => ReadData_HiLo(6)
    );
  ReadData_HiLo_5_OBUF : OBUF
    port map (
      I => ReadData_HiLo_5_OBUF_125,
      O => ReadData_HiLo(5)
    );
  ReadData_HiLo_4_OBUF : OBUF
    port map (
      I => ReadData_HiLo_4_OBUF_126,
      O => ReadData_HiLo(4)
    );
  ReadData_HiLo_3_OBUF : OBUF
    port map (
      I => ReadData_HiLo_3_OBUF_127,
      O => ReadData_HiLo(3)
    );
  ReadData_HiLo_2_OBUF : OBUF
    port map (
      I => ReadData_HiLo_2_OBUF_128,
      O => ReadData_HiLo(2)
    );
  ReadData_HiLo_1_OBUF : OBUF
    port map (
      I => ReadData_HiLo_1_OBUF_129,
      O => ReadData_HiLo(1)
    );
  ReadData_HiLo_0_OBUF : OBUF
    port map (
      I => ReadData_HiLo_0_OBUF_130,
      O => ReadData_HiLo(0)
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_34
    );

end Structure;

