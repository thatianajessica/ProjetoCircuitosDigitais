library ieee;
use ieee.std_logic_1164.all;

entity somador is -- Realiza o somatório das entradas com carry in e devolve carry out
port
	(
		Ci, A, B : in std_logic;
		Co, S    : out std_logic
	);
end somador;

architecture archSomador of somador is
begin
-- Cálculo das operações de soma 
	S 	<= Ci xor (A xor B);
	Co <= (Ci and (A xor B)) or (A and B);
end archSomador;