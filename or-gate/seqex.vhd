entity SEQEX is
	port(	A : in bit;
		B : in bit;
		C: out bit);
end SEQEX;

architecture BEHAV of SEQEX is
begin

process (A, B)
begin

	if A = '1' or B = '1' then
		C <= '1';
	else
		C <= '0';
	end if;

end process;

end behav;	