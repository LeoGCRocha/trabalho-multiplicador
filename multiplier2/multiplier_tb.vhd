library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.multiplier_pkg.all;

entity multiplier_tb is
    generic (n:natural := n_BITS);
end multiplier_tb;

architecture tb of multiplier_tb is
    signal iniciotb, resettb, clktb, prontotb : std_logic;
    signal atb, btb, saidatb : std_logic_vector(n-1 downto 0);

    component multiplier is
    generic (n:natural := n);
    port(a, b   : in std_logic_vector(n-1 downto 0);
        inicio, reset, clk :in std_logic;
        pronto : out std_logic;
        saida : out std_logic_vector(n-1 downto 0));
    end component;

    constant clkp : time := 25 ns;
begin
    UUT : entity work.multiplier port map (atb, btb, iniciotb, resettb, clktb, prontotb, saidatb);

    resettb <= '1', '0' after 10 ns;

    stimulus : process
    begin
        atb <= (0 => '1',2 => '1', others => '0'); btb <= (0 => '1', 1 => '1', others => '0'); iniciotb <= '0';
        wait for clkp; iniciotb <= '1';
        wait for clkp; iniciotb <= '0';
        wait for 50*clkp;
    end process;

    clk_simulation : process
    begin
        clktb <= '0'; wait for clkp/2;
        clktb <= '1'; wait for clkp/2;
    end process;

end tb;
