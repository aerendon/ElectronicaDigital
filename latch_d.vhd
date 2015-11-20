library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch_d is
    Port ( En : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           N_q : out  STD_LOGIC);
end latch_d;

architecture Arq_latch_d of latch_d is

	signal D_aux1: std_logic := '0';
	signal D_aux2: std_logic := '0';
	signal Q_aux: std_logic := '0';
	signal N_q_aux: std_logic := '0';

begin

	D_aux1 <= D nand En;
	D_aux2 <= En nand not D;
	Q_aux <=  D_aux1 nand N_q_aux;
	N_q_aux <= Q_aux nand D_aux2;
	
	Q <= Q_aux;
	N_q <= N_q_aux;

end Arq_latch_d;

