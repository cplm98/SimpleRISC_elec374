LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY busMux IS
PORT(
	r00_in, r01_in, r02_in, r03_in,
	r04_in, r05_in, r06_in, r07_in, 
	r08_in, r09_in, r10_in, r11_in, 
	r12_in, r13_in, r14_in, r15_in, 
	hi_in, lo_in, z_hi_in, z_lo_in,
	PC_in, MDR_in, port_in, c_sign_extended	:	IN std_logic_vector(31 downto 0);
	s_in		:	IN std_logic_vector(4 downto 0);
	output	:	OUT std_logic_vector(31 downto 0)
);
END busMux;

ARCHITECTURE behavioural OF busMux IS
BEGIN
	BusMux: PROCESS(s_in, r00_in, r01_in, r02_in, r03_in,
	r04_in, r05_in, r06_in, r07_in, 
	r08_in, r09_in, r10_in, r11_in, 
	r12_in, r13_in, r14_in, r15_in, 
	hi_in, lo_in, z_hi_in, z_lo_in,
	PC_in, MDR_in, port_in, c_sign_extended)
	BEGIN
		CASE s_in IS
			when "00000"	=>	output <= r00_in;
			when "00001"	=>	output <= r01_in;
			when "00010"	=>	output <= r02_in;
			when "00011"	=>	output <= r03_in;
			when "00100"	=>	output <= r04_in;
			when "00101"	=>	output <= r05_in;
			when "00110"	=>	output <= r06_in;
			when "00111"	=>	output <= r07_in;
			when "01000"	=>	output <= r08_in;
			when "01001"	=>	output <= r09_in;
			when "01010"	=>	output <= r10_in;
			when "01011"	=>	output <= r11_in;
			when "01100"	=>	output <= r12_in;
			when "01101"	=>	output <= r13_in;
			when "01110"	=>	output <= r14_in;
			when "01111"	=>	output <= r15_in;
			when "10000"	=>	output <= hi_in;
			when "10001"	=>	output <= lo_in;
			when "10010"	=>	output <= z_hi_in;
			when "10011"	=>	output <= z_lo_in;
			when "10100"	=>	output <= pc_in;
			when "10101"	=>	output <= MDR_in;
			when "10110"	=>	output <= port_in;
			when "10111"	=>	output <= c_sign_extended;
			when "11110"	=>
			when others		=> output <= (others => '1');
		END CASE;
	END PROCESS;
END behavioural;