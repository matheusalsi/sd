----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:48:16 07/07/2022 
-- Design Name: 
-- Module Name:    ula2bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ula2bits is
    Port ( reset : in std_logic;
            clk : in std_logic;
              botao : in std_logic;
              saida : out std_logic_vector(3 downto 0));
end ula2bits;

 

architecture Behavioral of ula2bits is

 

signal contador : std_logic_vector(3 downto 0);

 

begin

 

saida <= contador;

 

process(reset, clk)
begin
  if reset = '1' then
    contador <= (others => '0');
  elsif (clk'event and clk='1') then
    if botao = '1' then
        contador <= std_logic_vector(unsigned(contador)+1);
    else
        contador <= contador;
     end if;
 end if;
end process;

 

 

end Behavioral;

