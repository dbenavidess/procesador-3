----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:25:36 09/26/2017 
-- Design Name: 
-- Module Name:    Instructon_Memory - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;	
use IEEE.NUMERIC_STD.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instructon_Memory is
    Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end Instructon_Memory;

architecture Behavioral of Instructon_Memory is
type rom_type is array (0 to 63) of std_logic_vector (31 downto 0); 
                
    signal ROM : rom_type:= (	"10010000000100000010000000000000","10100000000100000010000000000000",
										"10000000101001000000000000011001","00100111011010000000000000010000",
										"10010000000000100000000000010000","10100000000001000010000000000001",
										"00110000101111111111111111110000","00000001000000000000000000000000", others =>X"00000000");                        



begin
process(address)
	begin
	if (rst = '0') then
		instruction<=ROM(conv_integer(address));
	else
		instruction<=x"00000000";
	end if;
end process;

end Behavioral;

