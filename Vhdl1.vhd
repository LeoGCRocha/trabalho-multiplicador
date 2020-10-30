library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture behavior of testbench is
component multiplier is
    generic (n:natural := 4);
    port(a, b   : in std_logic_vector(n-1 downto 0);
			inicio, reset, clk :in std_logic;
			pronto : out std_logic;
			saida : out std_logic_vector(n-1 downto 0));
end component;
