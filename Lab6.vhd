library ieee;
use ieee.std_logic_1164.all;

--define I/O interface: entity
entity fulladder is
port (a,b,c: in bit;
sum, carry: out bit);
end entity fulladder;

--behaviour: architectural implementation
architecture behav of fulladder is
begin
	sum <= a XOR b XOR c;
	carry <= (a AND b) OR (b AND c) OR (a AND c);
end behav;
