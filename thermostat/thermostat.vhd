entity THERMOSTAT is 
	port(	current_temp : in bit_vector(7 downto 0);
		desired_temp : in bit_vector(7 downto 0);
		display_select : in bit;
		temp_display : out bit_vector(7 downto 0));
end THERMOSTAT;
	
architecture BEHAV of thermostat is
begin
	process(current_temp, desired_temp, display_select)
	begin	
		if display_select = '1' then
			temp_display <= current_temp;
		else
			temp_display <= desired_temp;
		end if;
	end process;
end BEHAV;
