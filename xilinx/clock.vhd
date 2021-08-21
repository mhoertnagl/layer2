--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.1
--  \   \         Application : xaw2vhdl
--  /   /         Filename : clook.vhd
-- /___/   /\     Timestamp : 04/15/2012 16:20:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: xaw2vhdl-intstyle C:/Mathias/xrisc/xilinx/ipcore_dir/clook.xaw -st clook.vhd
--Design Name: clook
--Device: xc3s500e-4fg320
--
-- Module clook
-- Generated by Xilinx Architecture Wizard
-- Written for synthesis tool: XST

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clook is
   port ( U1_CLKIN_IN        : in    std_logic; 
          U1_RST_IN          : in    std_logic; 
          U1_CLKDV_OUT       : out   std_logic; 
          U1_CLKIN_IBUFG_OUT : out   std_logic; 
          U1_CLK0_OUT        : out   std_logic; 
          U2_CLK0_OUT        : out   std_logic; 
          U2_CLK90_OUT       : out   std_logic; 
          U2_LOCKED_OUT      : out   std_logic);
end clook;

architecture BEHAVIORAL of clook is
   signal GND_BIT            : std_logic;
   signal U1_CLKDV_BUF       : std_logic;
   signal U1_CLKFB_IN        : std_logic;
   signal U1_CLKIN_IBUFG     : std_logic;
   signal U1_CLK0_BUF        : std_logic;
   signal U1_LOCKED_INV_IN   : std_logic;
   signal U2_CLKFB_IN        : std_logic;
   signal U2_CLKIN_IN        : std_logic;
   signal U2_CLK0_BUF        : std_logic;
   signal U2_CLK90_BUF       : std_logic;
   signal U2_FDS_Q_OUT       : std_logic;
   signal U2_FD1_Q_OUT       : std_logic;
   signal U2_FD2_Q_OUT       : std_logic;
   signal U2_FD3_Q_OUT       : std_logic;
   signal U2_LOCKED_INV_RST  : std_logic;
   signal U2_OR3_O_OUT       : std_logic;
   signal U2_RST_IN          : std_logic;
begin
   GND_BIT <= '0';
   U1_CLKDV_OUT <= U2_CLKIN_IN;
   U1_CLKIN_IBUFG_OUT <= U1_CLKIN_IBUFG;
   U1_CLK0_OUT <= U1_CLKFB_IN;
   U2_CLK0_OUT <= U2_CLKFB_IN;
   DCM_SP_INST1 : DCM_SP
   generic map( CLK_FEEDBACK => "1X",
            CLKDV_DIVIDE => 2.0,
            CLKFX_DIVIDE => 1,
            CLKFX_MULTIPLY => 4,
            CLKIN_DIVIDE_BY_2 => FALSE,
            CLKIN_PERIOD => 20.000,
            CLKOUT_PHASE_SHIFT => "NONE",
            DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
            DFS_FREQUENCY_MODE => "LOW",
            DLL_FREQUENCY_MODE => "LOW",
            DUTY_CYCLE_CORRECTION => TRUE,
            FACTORY_JF => x"C080",
            PHASE_SHIFT => 0,
            STARTUP_WAIT => FALSE)
      port map (CLKFB=>U1_CLKFB_IN,
                CLKIN=>U1_CLKIN_IBUFG,
                DSSEN=>GND_BIT,
                PSCLK=>GND_BIT,
                PSEN=>GND_BIT,
                PSINCDEC=>GND_BIT,
                RST=>U1_RST_IN,
                CLKDV=>U1_CLKDV_BUF,
                CLKFX=>open,
                CLKFX180=>open,
                CLK0=>U1_CLK0_BUF,
                CLK2X=>open,
                CLK2X180=>open,
                CLK90=>open,
                CLK180=>open,
                CLK270=>open,
                LOCKED=>U1_LOCKED_INV_IN,
                PSDONE=>open,
                STATUS=>open);
   
   DCM_SP_INST2 : DCM_SP
   generic map( CLK_FEEDBACK => "1X",
            CLKDV_DIVIDE => 2.0,
            CLKFX_DIVIDE => 1,
            CLKFX_MULTIPLY => 4,
            CLKIN_DIVIDE_BY_2 => FALSE,
            CLKIN_PERIOD => 40.000,
            CLKOUT_PHASE_SHIFT => "NONE",
            DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
            DFS_FREQUENCY_MODE => "LOW",
            DLL_FREQUENCY_MODE => "LOW",
            DUTY_CYCLE_CORRECTION => TRUE,
            FACTORY_JF => x"C080",
            PHASE_SHIFT => 0,
            STARTUP_WAIT => FALSE)
      port map (CLKFB=>U2_CLKFB_IN,
                CLKIN=>U2_CLKIN_IN,
                DSSEN=>GND_BIT,
                PSCLK=>GND_BIT,
                PSEN=>GND_BIT,
                PSINCDEC=>GND_BIT,
                RST=>U2_RST_IN,
                CLKDV=>open,
                CLKFX=>open,
                CLKFX180=>open,
                CLK0=>U2_CLK0_BUF,
                CLK2X=>open,
                CLK2X180=>open,
                CLK90=>U2_CLK90_BUF,
                CLK180=>open,
                CLK270=>open,
                LOCKED=>U2_LOCKED_OUT,
                PSDONE=>open,
                STATUS=>open);
   
   U1_CLKDV_BUFG_INST : BUFG
      port map (I=>U1_CLKDV_BUF,
                O=>U2_CLKIN_IN);
   
   U1_CLKIN_IBUFG_INST : IBUFG
      port map (I=>U1_CLKIN_IN,
                O=>U1_CLKIN_IBUFG);
   
   U1_CLK0_BUFG_INST : BUFG
      port map (I=>U1_CLK0_BUF,
                O=>U1_CLKFB_IN);
   
   U1_INV_INST : INV
      port map (I=>U1_LOCKED_INV_IN,
                O=>U2_LOCKED_INV_RST);
   
   U2_CLK0_BUFG_INST : BUFG
      port map (I=>U2_CLK0_BUF,
                O=>U2_CLKFB_IN);
   
   U2_CLK90_BUFG_INST : BUFG
      port map (I=>U2_CLK90_BUF,
                O=>U2_CLK90_OUT);
   
   U2_FDS_INST : FDS
      port map (C=>U2_CLKIN_IN,
                D=>GND_BIT,
                S=>GND_BIT,
                Q=>U2_FDS_Q_OUT);
   
   U2_FD1_INST : FD
      port map (C=>U2_CLKIN_IN,
                D=>U2_FDS_Q_OUT,
                Q=>U2_FD1_Q_OUT);
   
   U2_FD2_INST : FD
      port map (C=>U2_CLKIN_IN,
                D=>U2_FD1_Q_OUT,
                Q=>U2_FD2_Q_OUT);
   
   U2_FD3_INST : FD
      port map (C=>U2_CLKIN_IN,
                D=>U2_FD2_Q_OUT,
                Q=>U2_FD3_Q_OUT);
   
   U2_OR2_INST : OR2
      port map (I0=>U2_LOCKED_INV_RST,
                I1=>U2_OR3_O_OUT,
                O=>U2_RST_IN);
   
   U2_OR3_INST : OR3
      port map (I0=>U2_FD3_Q_OUT,
                I1=>U2_FD2_Q_OUT,
                I2=>U2_FD1_Q_OUT,
                O=>U2_OR3_O_OUT);
   
end BEHAVIORAL;


