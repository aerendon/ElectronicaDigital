LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY latch_d_tb IS
END latch_d_tb;
 
ARCHITECTURE behavior OF latch_d_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT latch_d
    PORT(
         En : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         N_q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal En : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal N_q : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: latch_d PORT MAP (
          En => En,
          D => D,
          Q => Q,
          N_q => N_q
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
			En <= '1';
		wait for 100 ns;
			D <= '1';
		wait for 100 ns;
			En <= '0';
		wait for 100 ns;
			D <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
