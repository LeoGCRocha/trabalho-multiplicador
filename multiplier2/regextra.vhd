library IEEE;
use IEEE.std_logic_1164.all;

entity regextra is
generic (n : natural);
port (clk, carga, sh, in_sh: in std_logic;
      d: in std_logic_vector (n-1 downto 0);
      q: inout std_logic_vector(n-1 downto 0));
end regextra;

architecture comportamento of regextra is
signal e: std_logic_vector(n-1 downto 0);
begin

 process (clk)
 begin
    if (clk'event and clk = '1' and carga = '1') then
        q <= d;
    elsif (clk'event and clk = '1' and sh = '1' and carga = '0') THEN
        q <= in_sh & e (n-1 downto 1);
    end if;
  end process;
  e <= q;
end comportamento;
