----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09/20/2018 06:01:52 AM
-- Design Name:
-- Module Name: lab0 - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab1 is
    Port ( a3 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           f : out STD_LOGIC);
end lab1;

architecture Behavioral of lab1 is

signal na3, na2, na1, na0 : std_logic;

signal X1, X2, X3, X4, X5, X6, X7, X8 : std_logic;


begin

na3 <= not(a3);
na2 <= not(a2);
na1 <= not(a1);
na0 <= not(a0);

X1 <= a1 and a2 and a3;
X2 <= a3 xnor a1;
X3 <= a0 or a2;
X4 <= a1 or na2;
X5 <= a0 or a1;
X6 <= not(a3 or X2);
X7 <= X3 and X4 and X5;
X8 <= not(X7 or a0);


f <= not(X1 or X6 or X8);

end Behavioral;
