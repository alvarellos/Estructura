library IEEE;
use IEEE.std_logic_1164.all;

-- Entity funcFG
entity funcFG is
   port ( F, G    : out std_logic;
          x, y, z : in std_logic );
end entity funcFG;


-- Cuando se prueba la architecture del circuito describiendo su estructura
-- hay que tener en cuenta que se compilen primero logic_or.vhd
-- logic_not.vhd y logic_and.vhd


-- Architecture del circuito describiendo su estructura.
--------------------------------------------------------


architecture circuito_Estruc of funcFG is
    signal   xn     : std_logic;
    signal   sA2    : std_logic;

-- Declaración de las clases de los componentes
    component and2 is
        port ( y0     : out std_logic;
               x0, x1 : in std_logic);
    end component and2;

    component not1 is
        port ( y0 : out std_logic;
               x0 : in std_logic );
    end component not1;

    component or2 is
        port ( y0     : out std_logic;
               x0, x1 : in std_logic );
    end component or2;

begin
-- Instanciación y conexión de los componentes

    N1 : component not1 port map (xn, x);
    A2 : component and2 port map (sA2, xn, z);
    A1 : component and2 port map (F, y, z);
    O1 : component or2 port map (G, y, sA2);

end architecture circuito_Estruc;