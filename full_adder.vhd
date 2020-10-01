library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder is
port(a,b,c: in std_logic;
         sum,carry: out std_logic);
end full_adder;
architecture Behavioral of full_adder is
	component half_adder is
		port(a,b: in std_logic;
	       s,c: out std_logic);
	end component;
	component or_2 is
		port(a,b: in std_logic;
		     y: out std_logic);
	end component;
signal w1,w2,w3: std_logic;		
begin
s1: half_adder port map(a,b,w1,w2);
s2: half_adder port map(w1,c,sum,w3);
s3: or_2 port map(w3,w2,carry);
end Behavioral;
--created by HimanshuGeeks
