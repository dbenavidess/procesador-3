----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:10 10/25/2017 
-- Design Name: 
-- Module Name:    SEU30 - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SEU30 is
    Port ( disp30 : in  STD_LOGIC_VECTOR (29 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU30;

architecture Behavioral of SEU30 is

begin

salida<=std_logic_vector(resize(signed(disp30), salida'length));

end Behavioral;

