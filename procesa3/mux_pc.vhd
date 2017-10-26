library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxPC is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           S : out  STD_LOGIC_VECTOR (31 downto 0));
end muxPC;

architecture Behavioral of muxPC is

begin
process(A,B,C,D,sel)
begin
	   case (sel) is 
      when "00" =>
         S<=A;
      when "01" =>
         S<=B;
      when "10" =>
         S<=C;
      when "11" =>
         S<=D;
      when others =>
         S<="00000000000000000000000000000000";
   end case;

end process;
end Behavioral;