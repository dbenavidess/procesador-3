----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:05 10/25/2017 
-- Design Name: 
-- Module Name:    mux_rd - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_rd is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           B : in  STD_LOGIC_VECTOR (5 downto 0);
           sel : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (5 downto 0));
end mux_rd;

architecture Behavioral of mux_rd is

begin
process(A,B,sel)
begin
if sel='0' then S<=A;
elsif sel='1' then S<=B;
end if;
end process;

end Behavioral;

