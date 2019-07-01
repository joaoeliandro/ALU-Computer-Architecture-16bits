library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity subtrator is 
	port
	(
		entradaA	 :		in  std_logic_vector(15 downto 0);
		entradaB	 : 	in  std_logic_vector(15 downto 0);
		saida 	 : 	out std_logic_vector(15 downto 0));
end subtrator;
	
architecture hardware of subtrator is

	signal entrada_A 			: std_logic_vector(15 downto 0);
	signal entrada_B 			: std_logic_vector(15 downto 0);
	signal saida_subtracao 	: std_logic_vector(15 downto 0);
		
	component subtrator_16bits
		PORT(
			entradaA 		: in 	std_logic_vector(15 downto 0);
			entradaB 		: in 	std_logic_vector(15 downto 0);
			saida 			: out std_logic_vector(15 downto 0));
	end component;

begin			

	saida_subtracao(15 downto 0) <= ("0000000000000000" & entradaA(15 downto 0)) - ("0000000000000000" & entradaB(15 downto 0));
	
	rot_subtracao : subtrator_16bits PORT MAP
	(
		entradaA => entrada_A,
		entradaB => entrada_B,
		saida 	=> saida_subtracao	
	);
	
	signal_a_subtrator : process
	begin
	
	end process;

	signal_b_subtrator : process
	begin
	
	end process;
end hardware;