----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:20:05 10/25/2017 
-- Design Name: 
-- Module Name:    SEU22 - Behavioral 
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

entity SEU22 is
    Port ( disp22 : in  STD_LOGIC_VECTOR (21 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU22;

architecture Behavioral of SEU22 is

begin
salida<=std_logic_vector(resize(signed(disp22), salida'length));


end Behavioral;

