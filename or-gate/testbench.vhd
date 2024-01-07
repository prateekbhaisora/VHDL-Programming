entity T_SEQEX is
end T_SEQEX;

architecture TEST of T_SEQEX is
component SEQEX is
	port(	A : in bit;
		B : in bit;
		C: out bit);
end component;
signal A, B, C : bit;
begin

UUT: SEQEX 
	port map (	A => A, 
			B => B,
			C => C);

A <= '0', '1' after 5 ns, '0' after 10 ns;

end test;
