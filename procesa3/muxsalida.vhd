----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:43 10/25/2017 
-- Design Name: 
-- Module Name:    muxsalida - Behavioral 
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

entity muxsalida is
    Port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
			  C : in  STD_LOGIC_VECTOR (31 downto 0);
           S : out  STD_LOGIC_VECTOR (31 downto 0));
end muxsalida;

architecture Behavioral of muxsalida is

begin

process(A,B,sel)
begin
	if sel="00" then S<=A;
	elsif sel="01" then S<=B;
	elsif sel="10" then S<=C;
	end if;

end process;



end Behavioral;

