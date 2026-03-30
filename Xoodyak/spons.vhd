library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

package spons is
    type lane is array(0 to 31) of std_logic;
    type plane is array(0 to 3,0 to 31) of std_logic;
end package;

package body spons is
	function rot(p: plane; x_val: integer; z_val: integer; X: integer; Z: integer) return std_logic is
		variable rotres : std_logic;
	begin
		rotres := p(x_val mod 4, z_val mod 32); -- Updated variable names
		return rotres;
	end rot;
end spons;
